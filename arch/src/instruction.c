#include "instruction.h"

const int M_OPCODE_SIZE = 4;
const int M_REGISTER_SIZE = 8;
const int M_WORD_SIZE = 8;
const int M_INSTRUCTION_SIZE = 16;

const int A_OPCODE_SIZE = 8;
const int A_REGISTER_SIZE = 16;
const int A_WORD_SIZE = 32;
const int A_INSTRUCTION_SIZE = 120;

const operation OPER_NONE  = {.ab = "", .id = UINT8_MAX, .params = 0};
const operation OPER_NEW   = {.ab = "new" , .id = 0x0, .params = 1};
const operation OPER_CP    = {.ab = "cp"  , .id = 0x2, .params = 2};
const operation OPER_PUSH  = {.ab = "push", .id = 0x3, .params = 1};
const operation OPER_POP   = {.ab = "pop" , .id = 0x4, .params = 1};
const operation OPER_LOAD  = {.ab = "load", .id = 0x5, .params = 2};
const operation OPER_SAVE  = {.ab = "save", .id = 0x6, .params = 2};
const operation OPER_ADD   = {.ab = "add" , .id = 0xA, .params = 2};
const operation OPER_MULT  = {.ab = "mult", .id = 0xB, .params = 2};

const operation *ALL_OPERS[] = {
    &OPER_NEW, 
    &OPER_CP, 
    &OPER_PUSH, 
    &OPER_POP, 
    &OPER_LOAD, 
    &OPER_SAVE, 
    &OPER_ADD, 
    &OPER_MULT
};

const registr REGISTER_NONE = {.ab = ' ', .id = UINT8_MAX};
const registr REGISTER_N = {.ab = 'N', .id = 0x0};
const registr REGISTER_A = {.ab = 'A', .id = 0x8};
const registr REGISTER_B = {.ab = 'B', .id = 0x9};
const registr REGISTER_C = {.ab = 'C', .id = 0xA};
const registr REGISTER_D = {.ab = 'D', .id = 0xB};
const registr REGISTER_E = {.ab = 'E', .id = 0xC};
const registr REGISTER_F = {.ab = 'F', .id = 0xD};
const registr REGISTER_G = {.ab = 'G', .id = 0xE};
const registr REGISTER_H = {.ab = 'H', .id = 0xF};

const registr *ALL_REGISTRS[] = {
    &REGISTER_N,
    &REGISTER_A,
    &REGISTER_B,
    &REGISTER_C,
    &REGISTER_D,
    &REGISTER_E,
    &REGISTER_F,
    &REGISTER_G,
    &REGISTER_H
};
