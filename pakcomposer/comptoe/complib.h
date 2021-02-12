#ifndef __COMPLIB_H
#define __COMPLIB_H

#define SUCCESS                0
#define ERROR_FILE_IN         -1
#define ERROR_FILE_OUT        -2
#define ERROR_MALLOC          -3
#define ERROR_BAD_INPUT       -4
#define ERROR_UNKNOWN_VERSION -5
#define ERROR_FILES_MISMATCH  -6

#define  __declspec(dllexport) 

char* GetErrorString(int error);
int Encode(int version, void* in, int inl, void* out, unsigned int* outl);
int Decode(int version, void* in, int inl, void* out, unsigned int* outl);
int DecodeFile(char* in, char* out, int raw, int version);
int EncodeFile(char* in, char* out, int raw, int version);
int DumpTextBuffer(char* out);

int CheckCompression(char* in, int version);

// Non-Thread Safe
void ProfileStart(char* out);
void ProfileEnd();

#endif