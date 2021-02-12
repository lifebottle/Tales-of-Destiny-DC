/*
 *  Compressor/Decompressor utility for Tales of Games
 *  Copyright (C) 2005-2007 soywiz - http://www.tales-tra.com/
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

#define VERSION "2.01a"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "complib.h"

 // ----------------------------------------------------------------------------

 // Modificadores
int modifier = 0, raw = 0, silent = 0, once = 0;

void show_header_once() {
	if (once || silent) return;
	printf("%s",
		"Compressor/Decompressor utility for 'Tales of...' Games - version " VERSION "\n"
		"Copyright (C) 2006-2009 soywiz - http://www.tales-tra.com/\n"
		"\n"
	);
	once = 1;
}

void show_help() {
	printf("%s",
		"<Modifiers>\n"
		"  -s silent mode\n"
		"  -r use raw files\n"
		"\n"
		"<Commands>\n"
		"  -b <file.out> buffer dump\n"
		"  -c[<V>] compress <file.in> <file.out>\n"
		"  -d[<V>] uncompress <file.in> <file.out>\n"
		"  -t[<V>] tests uncompress/compress/uncompress <file.in>\n"
		"  -p[<V>] make profile of compression <file.in>\n"
		"  \t<V> -> (1 - LZSS | 3 - LZSS+RLE | 5 - LZX)\n"
	);

	exit(-1);
}

// ----------------------------------------------------------------------------

#define ACTION_NONE   -1
#define ACTION_ENCODE  0
#define ACTION_DECODE  1
#define ACTION_TEST    2
#define ACTION_PROFILE 3
#define ACTION_BDUMP   4
#define ACTION_HELP    5

#define setparams(p) { params = p; paramc = 0; }

int main(int argc, char** argv) {
	int retval = 0;
	char* dparams[2];
	int paramc = 0, params = -1;

	char temp[0x1000];
	int done = 0;
	char* source = NULL;
	int n = 0;

	// Acción a realizar
	int action = ACTION_NONE;

	if (argc <= 1) {
		action = ACTION_HELP;
		setparams(0);
	}

	for (n = 1; n <= argc; n++) {
		char* arg;
		arg = (n < argc) ? argv[n] : "";

		//printf("%s\n", arg);

		// Muestra la ayuda y sale
		if (strcmp(arg, "-?") == 0 || strcmp(arg, "-h") == 0 || strcmp(arg, "--help") == 0) {
			//show_help();
			action = ACTION_HELP;
			setparams(0);
		}

		// Modificadores
		{
			// Modo raw (sin cabeceras de compresión)
			if (strcmp(arg, "-r") == 0 || strcmp(arg, "-raw") == 0) { raw = 1; continue; }

			// Modo silencioso
			if (strcmp(arg, "-s") == 0) { silent = 1; fclose(stdout); continue; }
		}

		// Acciones
		{
			if (arg[0] == '-') {
				int cnt = 1;

				switch (arg[1]) {
					// Codificad
				case 'c': action = ACTION_ENCODE; setparams(2); break;
					// Decodificia
				case 'd': action = ACTION_DECODE; setparams(2); break;
					// Comprueba
				case 't': action = ACTION_TEST; setparams(1); break;
					// Crea un perfil de compresión
				case 'p': action = ACTION_PROFILE; setparams(1); break;
					// Dumpea el text_buffer inicial
				case 'b': action = ACTION_BDUMP; setparams(1); break;
				default:  cnt = 0; break;
				}

				if (cnt) {
					done = 0;
					modifier = (strlen(arg) >= 3) ? atoi(arg + 2) : 3;
					continue;
				}
			}
		}

		if ((n < argc) && (paramc < params)) {
			dparams[paramc++] = arg;
		}

		if (paramc >= params) {
			show_header_once();

			done = 1;
			switch (action) {
			case ACTION_ENCODE:
				if (strcmp(dparams[0], dparams[1]) != 0) {
					retval |= EncodeFile(dparams[0], dparams[1], raw, modifier);
				}
				else {
					fprintf(stderr, "Can't use same file for input and output\n");
					retval |= -1;
				}
				break;
			case ACTION_DECODE:
				if (strcmp(dparams[0], dparams[1]) != 0) {
					retval |= DecodeFile(dparams[0], dparams[1], raw, modifier);
				}
				else {
					fprintf(stderr, "Can't use same file for input and output\n");
					retval |= -1;
				}
				break;
			case ACTION_PROFILE:
				if (strlen(arg) < 0x900) {
					sprintf(temp, "%s.profile", arg);
					ProfileStart(temp);
					retval |= DecodeFile(dparams[0], NULL, raw, modifier);
					ProfileEnd();
				}
				break;
			case ACTION_BDUMP:
				DumpTextBuffer(dparams[0]);
				break;
			case ACTION_TEST:
				retval |= CheckCompression(dparams[0], modifier);
				break;
			case ACTION_HELP:
				show_help();
				break;
			default:
				if (n == argc) {
					if (paramc == params || params == 0) exit(retval);
					if (params == -1) show_help();
					fprintf(stderr, "Expected %d params, but %d given\n", params, paramc);
					exit(-1);
				}
				fprintf(stderr, "Unknown parameter '%s'\n", arg);
				exit(-1);
				break;
			}

			paramc = params = 0;
			action = ACTION_NONE;
		}
	}

	show_header_once();

	fprintf(stderr, "Expected %d params, but %d given\n", params, paramc);
	exit(-1);

	return 0;
}

// ----------------------------------------------------------------------------