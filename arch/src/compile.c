#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <signal.h>
#include "compile.h"
#include "instruction.h"
#include "util.h"

const int COMPILE_RESULT_OK = 0;
const int COMPILE_RESULT_FILE_ERROR = 1;
const int COMPILE_RESULT_SYNTAX_ERROR = 2;

const int BUFFER_SIZE = 1000;

int compile_file(FILE *in, uint16_t **out)
{
    //TODO: I need a stream here. fmemopen()
    if (in == NULL)
        return COMPILE_RESULT_FILE_ERROR;
    fseek(in, 0, SEEK_END);
    fseek(in, 0, SEEK_SET);

    *out = malloc(M_INSTRUCTION_SIZE * BUFFER_SIZE);
    if (!out) {}
    uint16_t *out_i = *out;

    char *term = malloc(M_INSTRUCTION_SIZE);
    char *term_i = term;
    
    const operation *oper = &OPER_NONE;
    const registr *reg_find = &REGISTER_NONE;
    uint16_t instr = UINT16_MAX;
    int c;
    int wasspc = 0;
    int paramcount = 0;
    int blank = 1;
    while ((c = fgetc(in)) != EOF) {
        if (oper == &OPER_NONE && c == '#') {
            while ((c = fgetc(in)) != '\n' && c != EOF);
        }
        if (c == ' ' && wasspc)
            continue;
        if (!(c == ' ' || c == '\n')) {
            blank = 0;
            if (wasspc)
                wasspc = 0;
            *term_i = c;
            ++term_i;
            continue;
        }
        // End of term
        if (oper == &OPER_NONE) {
            // Opcode
            if (blank) 
                continue;
            for (int i = 0; i < sizeof(ALL_OPERS) / sizeof(ALL_OPERS[0]); i++) {
                if (strncmp(ALL_OPERS[i]->ab, term, strlen(ALL_OPERS[i]->ab)) == 0) {
                    oper = ALL_OPERS[i];
                    break;
                }
            }
            if (oper == &OPER_NONE) 
                goto syntax_error;
            // Update instruction
            instr = oper->id << (M_INSTRUCTION_SIZE - M_OPCODE_SIZE);
        }
        else {
            // Parameter. Parse and update the instruction
            if (oper == &OPER_NEW) {
                if (paramcount == 0) {
                    long v = strtol(term, NULL, 0);
                    uint8_t vc = (uint8_t)v;
                    instr |= vc;
                    instr <<= M_OPCODE_SIZE;
                }
            }
            // TODO: Better layout specification
            else if (oper == &OPER_CP   || oper == &OPER_PUSH || oper == &OPER_POP || 
                     oper == &OPER_LOAD || oper == &OPER_SAVE || oper == &OPER_ADD || 
                     oper == &OPER_MULT) 
            {
                BIN_REGISTER_ID(*term, oper->params - paramcount);
            }
            ++paramcount;
            if (paramcount >= oper->params) {
                // End of instruction.
                *out_i = instr;
                instr = UINT16_MAX;
                out_i++;
                if (out_i - *out > BUFFER_SIZE) {
                    // Buffer filled. For now end.
                    break;
                }
                oper = &OPER_NONE;
                paramcount = 0;
                blank = 1;
            }
        }
        // Erase the term buffer.
        wasspc = 1;
        while (term_i > term) {
            --term_i;
            *term_i = ' ';
        }
    }
    free(term);
    return COMPILE_RESULT_OK;
    
    syntax_error:
    free(*out);
    free(term);
    return COMPILE_RESULT_SYNTAX_ERROR;
}
