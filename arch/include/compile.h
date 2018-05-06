#ifndef COMPILE_H
#define COMPILE_H

#include <stdio.h>
#include <stdint.h>

int compile_file(FILE *in, uint16_t **out);

extern const int COMPILE_RESULT_OK;
extern const int COMPILE_RESULT_FILE_ERROR;
extern const int COMPILE_RESULT_SYNTAX_ERROR;

#endif /* COMPILE_H */