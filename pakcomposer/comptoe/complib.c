#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <string.h>

#include "complib.h"

#define cleanup(err) { error = err; goto _cleanup; }
//#define get(c) { if (insp >= inst) cleanup(SUCCESS); c = *(insp++); }
#define put2(c) { if (ousp >= oust) cleanup(SUCCESS); *(ousp++) = c; }
#define put(c) { put2(c); State->text_buf[r++] = c; r &= (N - 1); }
#define get(c) { if (insp >= inst) break; c = *(insp++); }
//#define put(c) { if (ousp >= oust) break; *(ousp++) = c; State->text_buf[r++] = c; r &= (N - 1); }

#define N   0x1000
#define NIL N
#define MF  0x12
#define MAX_DUP (0x100 + 0x12)

FILE* profilef;

typedef struct {
	int F, T;
	unsigned long int textsize, codesize, printcount;
	unsigned char text_buf[N + MF - 1];
	int match_position, match_length, lson[N + 1], rson[N + 257], dad[N + 1];
} LzState;

LzState* LzStateCreate() {
	LzState* State = (LzState*)malloc(sizeof(LzState));
	State->textsize = 0;
	State->codesize = 0;
	State->printcount = 0;
	//profilef = NULL;
	return State;
}

void LzStateDelete(LzState* State) {
	free(State);
}

char* GetErrorString(int error) {
	switch (error) {
	case SUCCESS:               return "Success";
	case ERROR_FILE_IN:         return "Error with input file";
	case ERROR_FILE_OUT:        return "Error with output file";
	case ERROR_MALLOC:          return "Malloc failure";
	case ERROR_BAD_INPUT:       return "Bad Input";
	case ERROR_UNKNOWN_VERSION: return "Unknown version";
	case ERROR_FILES_MISMATCH:  return "Mismatch";
	default:                    return "Unknown error";
	}
}

void FillTextBuffer(LzState* State) {
	int n, p;
	for (n = 0, p = 0; n != 0x100; n++, p += 8) { State->text_buf[p + 6] = State->text_buf[p + 4] = State->text_buf[p + 2] = State->text_buf[p + 0] = n; State->text_buf[p + 7] = State->text_buf[p + 5] = State->text_buf[p + 3] = State->text_buf[p + 1] = 0; }
	for (n = 0; n != 0x100; n++, p += 7) { State->text_buf[p + 6] = State->text_buf[p + 4] = State->text_buf[p + 2] = State->text_buf[p + 0] = n; State->text_buf[p + 5] = State->text_buf[p + 3] = State->text_buf[p + 1] = 0xff; }
	while (p != N) State->text_buf[p++] = 0;
}

int PrepareVersion(LzState* State, int version) {
	if (State != NULL) State->T = 2;
	switch (version) {
	case 1:  if (State != NULL) State->F = 0x12; break;
	case 3:  if (State != NULL) State->F = 0x11; break;
	default: return ERROR_UNKNOWN_VERSION; break;
	}
	return SUCCESS;
}

void InitTree(LzState* State) {
	int i;
	for (i = N + 1; i <= N + 256; i++) State->rson[i] = NIL;
	for (i = 0; i < N; i++) State->dad[i] = NIL;
}

void InsertNode(LzState* State, int r) {
	int  i, p, cmp;
	unsigned char* key;

	cmp = 1; key = &State->text_buf[r]; p = N + 1 + key[0];
	State->rson[r] = State->lson[r] = NIL; State->match_length = 0;

	while (1) {
		if (cmp >= 0) {
			if (State->rson[p] != NIL) p = State->rson[p];
			else { State->rson[p] = r; State->dad[r] = p; return; }
		}
		else {
			if (State->lson[p] != NIL) p = State->lson[p];
			else { State->lson[p] = r; State->dad[r] = p; return; }
		}

		for (i = 1; i < State->F; i++) if ((cmp = key[i] - State->text_buf[p + i]) != 0) break;

		if (i > State->match_length) {
			State->match_position = p;
			if ((State->match_length = i) >= State->F) break;
		}
	}

	State->dad[r] = State->dad[p]; State->lson[r] = State->lson[p]; State->rson[r] = State->rson[p];
	State->dad[State->lson[p]] = r; State->dad[State->rson[p]] = r;

	if (State->rson[State->dad[p]] == p) State->rson[State->dad[p]] = r; else State->lson[State->dad[p]] = r;

	State->dad[p] = NIL;
}

void DeleteNode(LzState* State, int p) {
	int  q;

	if (State->dad[p] == NIL) return;

	if (State->rson[p] == NIL) q = State->lson[p];
	else if (State->lson[p] == NIL) q = State->rson[p];
	else {
		q = State->lson[p];
		if (State->rson[q] != NIL) {
			do { q = State->rson[q]; } while (State->rson[q] != NIL);
			State->rson[State->dad[q]] = State->lson[q]; State->dad[State->lson[q]] = State->dad[q];
			State->lson[q] = State->lson[p]; State->dad[State->lson[p]] = q;
		}
		State->rson[q] = State->rson[p]; State->dad[State->rson[p]] = q;
	}
	State->dad[q] = State->dad[p];

	if (State->rson[State->dad[p]] == p) State->rson[State->dad[p]] = q; else State->lson[State->dad[p]] = q;
	State->dad[p] = NIL;
}

int Encode(int version, void* in, int inl, void* out, unsigned int* outl) {
	unsigned char* insp, * inst, * ousp, * oust, * inspb, * insplb;
	int i, c, len, r, s, last_match_length, dup_match_length = 0, code_buf_ptr, dup_last_match_length = 0;
	unsigned char code_buf[1 + 8 * 5], mask;
	int error = SUCCESS;
	LzState* State = LzStateCreate();
	if (State == NULL) goto _cleanup;

	inst = (insplb = inspb = insp = (unsigned char*)in) + inl; oust = (ousp = (unsigned char*)out) + *outl;

	if (version == 0) {
		while (1) {
			int left = inst - insp;
			int left8 = left;
			//printf("left8:%d\n", left8);
			if (left8 > 8) left8 = 8;
			//put2(((1 << left8) - 1) << (8 - left8));
			put2(((1 << left8) - 1) << (0));

			for (i = 0; i < 8; i++) {
				get(c);
				put2(c);
			}

			if (insp >= inst) break;
		}

		if (insp != inst) {
			LzStateDelete(State);
			printf("(insp != inst) (%d != %d)\n", insp, inst);
			return ERROR_BAD_INPUT;
		}

		*outl = ousp - (unsigned char*)out;

		LzStateDelete(State);
		return error;
	}

	FillTextBuffer(State);
	PrepareVersion(State, version);
	InitTree(State);

	code_buf[0] = 0x00;
	code_buf_ptr = mask = 1;
	s = 0; r = N - State->F;

	//printf("%d\n", r);

	for (len = 0; len < State->F; len++) { get(c); State->text_buf[r + len] = c; }
	if ((State->textsize = len) == 0) return SUCCESS;

	for (i = 1; i <= State->F; i++) InsertNode(State, r - i);
	InsertNode(State, r);

	do {
		if (version >= 3) {
			if (insplb - inspb <= 0) {
				insplb = inspb + 1;
				while ((insplb < inst) && (*insplb == *inspb)) insplb++;
			}

			dup_match_length = insplb - inspb;
		}

		if (State->match_length > len) State->match_length = len;

		if (version >= 3 && dup_match_length > MAX_DUP) dup_match_length = MAX_DUP;

		if (version >= 3 && dup_match_length > (State->T + 1) && dup_match_length >= State->match_length) {
			if (dup_match_length >= (inst - insp)) dup_match_length--;
		}
		else {
			if (State->match_length >= (inst - insp)) State->match_length--;
		}
		/*
		if (version >= 3 && dup_match_length > (State->T + 1) && dup_match_length >= State->match_length) {
			if (dup_match_length >= (inst - insp)) dup_match_length -= 8;
		} else {
			if (State->match_length >= (inst - insp)) State->match_length -= 8;
		}
		*/

		if (version >= 3 && dup_match_length > (State->T + 1) && dup_match_length >= State->match_length) {
			State->match_length = dup_match_length;
			State->match_position = r;

			if (State->match_length <= 0x12) {
				code_buf[code_buf_ptr++] = State->text_buf[r];
				code_buf[code_buf_ptr++] = 0x0f | (((State->match_length - (State->T + 1)) & 0xf) << 4);
			}
			else {
				code_buf[code_buf_ptr++] = State->match_length - 0x13;
				code_buf[code_buf_ptr++] = 0x0f;
				code_buf[code_buf_ptr++] = State->text_buf[r];
			}
		}
		else if (State->match_length > State->T) {
			code_buf[code_buf_ptr++] = (unsigned char)State->match_position;
			code_buf[code_buf_ptr++] = (unsigned char)(((State->match_position >> 4) & 0xf0) | ((State->match_length - (State->T + 1)) & 0x0f));
		}
		else {
			code_buf[0] |= mask;
			State->match_length = 1;
			code_buf[code_buf_ptr++] = State->text_buf[r];
		}

		if ((mask <<= 1) == 0) {
			for (i = 0; i < code_buf_ptr; i++) put2(code_buf[i]);
			State->codesize += code_buf_ptr;
			code_buf[0] = 0x00; code_buf_ptr = mask = 1;
		}

		last_match_length = State->match_length;
		for (i = 0; i < last_match_length; i++) {
			get(c); DeleteNode(State, s); State->text_buf[s] = c;
			if (s < State->F - 1) State->text_buf[s + N] = c;
			s = (s + 1) & (N - 1);  r = (r + 1) & (N - 1);
			inspb++;
			InsertNode(State, r);
		}

		State->textsize += i;

		while (i++ < last_match_length) {
			DeleteNode(State, s); s = (s + 1) & (N - 1); r = (r + 1) & (N - 1);
			inspb++;
			if (--len) InsertNode(State, r);
		}
	} while (len > 0);

	if (code_buf_ptr > 1) {
		for (i = 0; i < code_buf_ptr; i++) put2(code_buf[i]);
		State->codesize += code_buf_ptr;
	}

_cleanup:

	if (State == NULL) return ERROR_MALLOC;
	if (insp != inst) {
		printf("(insp != inst) (%d != %d)\n", insp, inst);
		return ERROR_BAD_INPUT;
	}

	*outl = ousp - (unsigned char*)out;
	LzStateDelete(State);

	return SUCCESS;
}

int Decode(int version, void* in, int inl, void* out, unsigned int* outl) {
	unsigned char* insp, * inst, * ousp, * oust;
	unsigned int flags = 0, i, j, k, r, c;
	int error = SUCCESS;
	LzState* State = LzStateCreate();
	if (State == NULL) goto _cleanup;

	inst = (insp = (unsigned char*)in) + inl; oust = (ousp = (unsigned char*)out) + *outl;

	FillTextBuffer(State);
	if ((error = PrepareVersion(State, version)) != SUCCESS) return error;
	r = N - State->F;

	for (;;) {
		if (((flags >>= 1) & 0x100) == 0) { get(c); if (profilef) fprintf(profilef, "-------- %02X -------- [%08X:%08X]\n", c, insp - (unsigned char*)in, ousp - (unsigned char*)out); flags = c | 0xff00; }
		if (flags & 1) { get(c); if (profilef) fprintf(profilef, "BYTE[%02X]\n", c); put(c); continue; }
		get(i); get(j); i |= (j & 0xf0) << 4; j = (j & 0x0f) + State->T;
		if (version == 1 || j < (State->F)) { if (profilef) fprintf(profilef, "WINDOW[%03X,*%02X] : (", j + 1, i); for (k = 0; k <= j; k++) { c = State->text_buf[(i + k) & (N - 1)]; put(c); if (profilef && k != 0) fprintf(profilef, ", "); if (profilef) fprintf(profilef, "%02X", c); } if (profilef) fprintf(profilef, ")\n"); continue; }
		if (i < 0x100) { get(j); i += State->F + 1; }
		else { j = i & 0xff; i = (i >> 8) + State->T; }
		if (profilef) fprintf(profilef, "REPEAT[%03X,%02X] : (", i + 1, j); for (k = 0; k <= i; k++) { put(j);  if (profilef && k != 0) fprintf(profilef, ", "); if (profilef) fprintf(profilef, "%02X", j); } if (profilef) fprintf(profilef, ")\n");
	}

_cleanup:

	if (State == NULL) return ERROR_MALLOC;
	if (insp != inst) return ERROR_BAD_INPUT;

	*outl = ousp - (unsigned char*)out;
	LzStateDelete(State);

	return error;
}

int DecodeFile(char* in, char* out, int raw, int version) {
	unsigned int inl, outl; int error = SUCCESS;
	void* ind = 0, * outd = 0; FILE* fin = 0, * fout = 0;

	printf("Decoding[%02X] %s -> %s...", version, in, out);

	if ((fin = fopen(in, "rb")) == 0) cleanup(ERROR_FILE_IN);

	if (raw) {
		fseek(fin, 0, SEEK_END);
		inl = ftell(fin);
		fseek(fin, 0, SEEK_SET);
		outl = inl * 10;
	}
	else {
		version = getc(fin);
		fread(&inl, 4, 1, fin);
		fread(&outl, 4, 1, fin);
		if (PrepareVersion(NULL, version) != SUCCESS) cleanup(ERROR_FILE_IN);
	}

	if ((ind = (void*)malloc(inl)) == SUCCESS) cleanup(ERROR_MALLOC);
	if ((outd = (void*)malloc(outl)) == SUCCESS) cleanup(ERROR_MALLOC);

	memset(ind, 0, inl);
	memset(outd, 0, outl);

	if (fread(ind, 1, inl, fin) == 0) cleanup(ERROR_FILE_IN);

	error = Decode(version, ind, inl, outd, &outl);

	if (out != NULL) {
		if ((fout = fopen(out, "wb")) == 0) cleanup(ERROR_FILE_OUT);
		if (fwrite(outd, 1, outl, fout) == 0) cleanup(ERROR_FILE_OUT);
	}

_cleanup:

	if (outd) free(outd);
	if (ind) free(ind);

	if (fout) fclose(fout);
	if (fin) fclose(fin);

	printf("%s\n", GetErrorString(error));

	return error;
}

int EncodeFile(char* in, char* out, int raw, int version) {
	unsigned int inl, outl; int error = SUCCESS;
	void* ind = 0, * outd = 0; FILE* fin = 0, * fout = 0;
	int eversion = 0;

	if (version < 0) {
		version = -version;
		eversion = 0;
	}
	else {
		eversion = version;
	}

	//printf("%d, %d\n", version, eversion);

	printf("Encoding[%02X] %s -> %s...", version, in, out);

	if ((fin = fopen(in, "rb")) == 0) cleanup(ERROR_FILE_IN);

	fseek(fin, 0, SEEK_END);
	inl = ftell(fin); outl = ((inl * 9) / 8) + 10;
	fseek(fin, 0, SEEK_SET);

	if ((ind = (void*)malloc(inl)) == SUCCESS) cleanup(ERROR_MALLOC);
	if ((outd = (void*)malloc(outl)) == SUCCESS) cleanup(ERROR_MALLOC);

	memset(ind, 0, inl); memset(outd, 0, outl);

	if (fread(ind, 1, inl, fin) == 0) cleanup(ERROR_FILE_IN);

	error = Encode(eversion, ind, inl, outd, &outl);

	if (out != NULL) {
		if ((fout = fopen(out, "wb")) == 0) cleanup(ERROR_FILE_OUT);

		if (!raw) {
			putc(version, fout);
			fwrite(&outl, 4, 1, fout);
			fwrite(&inl, 4, 1, fout);
		}

		if (fwrite(outd, 1, outl, fout) == 0) cleanup(ERROR_FILE_OUT);
	}

_cleanup:

	if (outd) free(outd);
	if (ind) free(ind);

	if (fout) fclose(fout);
	if (fin) fclose(fin);

	printf("%s\n", GetErrorString(error));

	return error;
}

int DumpTextBuffer(char* out) {
	int error = SUCCESS;
	FILE* fout = 0;

	printf("Dumping text buffer...");

	LzState* State = LzStateCreate();
	if (State == NULL) goto _cleanup;

	FillTextBuffer(State);

	if ((fout = fopen(out, "wb")) == 0) cleanup(ERROR_FILE_OUT);

	fwrite(State->text_buf, 1, N, fout);

_cleanup:

	if (State != NULL) LzStateDelete(State);
	if (fout) fclose(fout);

	printf("%s\n", GetErrorString(error));

	return error;
}

int CheckCompression(char* in, int version) {
	FILE* fin = 0; void* ind = 0, * outd = 0, * outd2 = 0;
	unsigned int error = SUCCESS, inl, outl, outl2;

	printf("Checking compression [%02X] (%s) ...", version, in);

	if ((fin = fopen(in, "rb")) == 0) cleanup(ERROR_FILE_IN);

	fseek(fin, 0, SEEK_END);
	outl2 = inl = ftell(fin); outl = ((inl * 9) / 8) + 10;
	fseek(fin, 0, SEEK_SET);

	if ((ind = (void*)malloc(inl)) == SUCCESS) cleanup(ERROR_MALLOC);
	if ((outd = (void*)malloc(outl)) == SUCCESS) cleanup(ERROR_MALLOC);
	if ((outd2 = (void*)malloc(outl2)) == SUCCESS) cleanup(ERROR_MALLOC);

	memset(ind, 0, inl); memset(outd, 0, outl); memset(outd2, 0, outl2);

	fread(ind, 1, inl, fin);

	if ((error = Encode(version, ind, inl, outd, &outl)) != SUCCESS) cleanup(error);

	if ((error = Decode(version, outd, outl, outd2, &outl2)) != SUCCESS) cleanup(error);

	if (inl != outl2) cleanup(ERROR_FILES_MISMATCH);
	if (memcmp(ind, outd2, inl) != 0) cleanup(ERROR_FILES_MISMATCH);

_cleanup:

	if (outd2) free(outd2);
	if (outd) free(outd);
	if (ind) free(ind);

	if (fin) fclose(fin);

	printf("%s\n", GetErrorString(error));

	return error;
}

void ProfileStart(char* out) {
	profilef = fopen(out, "wb");
}

void ProfileEnd() {
	if (profilef == 0) return;
	fclose(profilef);
	profilef = 0;
}