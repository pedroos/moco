#ifndef PARSE_H
#define PARSE_H

#include <stdint.h>

// TODO: Make it a function
#define BIN_REGISTER_ID(reg_ab, lshift) do { \
                for (int i = 0; i < sizeof(ALL_REGISTRS) / sizeof(ALL_REGISTRS[0]); i++) { \
                    if (ALL_REGISTRS[i]->ab == reg_ab) { \
                        reg_find = ALL_REGISTRS[i]; \
                        break; \
                    } \
                } \
                if (reg_find == &REGISTER_NONE) \
                    goto syntax_error; \
                uint16_t id16 = (uint16_t)reg_find->id; \
                id16 <<= M_OPCODE_SIZE * (lshift); \
                instr |= id16; \
} while (0);

int decode_file(char *fileName, uint16_t **text);

extern const int DECODE_RESULT_OK;
extern const int DECODE_RESULT_FILE_ERROR;
extern const int DECODE_RESULT_SYNTAX_ERROR;

#endif /* PARSE_H */
