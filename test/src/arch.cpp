#include <gtest/gtest.h>
#include <stdint.h>
#include <stdio.h>
extern "C" {
    #include "compile.h"
    #include "util.h"
}
 
TEST(Parse, CompileFile1) {
    //char *fileName = "/cl/dev/pedroos/moco/test/src/p1.es";
    //FILE *file = fmemopen(fileName, 100, "r");
    //uint16_t *text;
    //// TODO: How to ship this file?
    //int dec = compile_file(file, &text);
    //free(text);
    //ASSERT_EQ(COMPILE_RESULT_OK, dec) << "dec != COMPILE_RESULT_OK";
}

// TEST(Parse, DecodeFile1SyntaxError) {
//     uint16_t *text;
//     // TODO: Change the file.
//     int dec = decode_file("/cl/dev/pedroos/moco/test/src/p1.es", &text);
//     free(text);
//     ASSERT_EQ(DECODE_RESULT_SYNTAX_ERROR, dec) << "dec != DECODE_RESULT_SYNTAX_ERROR";
// }
 
// TEST(Parse, DecodeFile1Big) {
//     uint16_t *text;
//     int dec = decode_file("/cl/dev/pedroos/moco/test/src/p1big.es", &text);
//     free(text);
//     ASSERT_EQ(DECODE_RESULT_OK, dec) << "dec != DECODE_RESULT_OK";
// }
 
int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
