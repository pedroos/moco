#ifndef INSTRUCTION_H
#define INSTRUCTION_H

#include <stdint.h>

// Internal (vm) sizes
extern const int M_OPCODE_SIZE;
extern const int M_REGISTER_SIZE;
extern const int M_WORD_SIZE;
extern const int M_INSTRUCTION_SIZE;

// External (compiler) sizes
extern const int A_OPCODE_SIZE;
extern const int A_REGISTER_SIZE;
extern const int A_WORD_SIZE;
extern const int A_INSTRUCTION_SIZE;

typedef struct {
    const char *ab;
    const int8_t id;
    const int params;
} operation;

extern const operation OPER_NONE;
extern const operation OPER_NEW;
extern const operation OPER_CP;
extern const operation OPER_PUSH;
extern const operation OPER_POP;
extern const operation OPER_LOAD;
extern const operation OPER_SAVE;
extern const operation OPER_ADD;
extern const operation OPER_MULT;

extern const operation *ALL_OPERS[8];

typedef struct {
    const char ab;
    const uint8_t id;
} registr;

extern const registr REGISTER_NONE;
extern const registr REGISTER_N;
extern const registr REGISTER_A;
extern const registr REGISTER_B;
extern const registr REGISTER_C;
extern const registr REGISTER_D;
extern const registr REGISTER_E;
extern const registr REGISTER_F;
extern const registr REGISTER_G;
extern const registr REGISTER_H;

extern const registr *ALL_REGISTRS[9];

#endif /* INSTRUCTION_H */
