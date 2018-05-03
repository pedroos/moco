#include <gtest/gtest.h>
#include <stdint.h>
extern "C" {
    #include "parse.h"
    #include "util.h"
}
 
TEST(Parse, DecodeFile1) {
    uint16_t *text;
    // TODO: How to ship this file?
    int dec = decode_file("/cl/dev/pedroos/mpt/test/src/p1.es", &text);
    free(text);
    ASSERT_EQ(DECODE_RESULT_OK, dec) << "dec != DECODE_RESULT_OK";
}

TEST(Parse, DecodeFile1SyntaxError) {
    uint16_t *text;
    // TODO: Change the file.
    int dec = decode_file("/cl/dev/pedroos/mpt/test/src/p1.es", &text);
    free(text);
    ASSERT_EQ(DECODE_RESULT_SYNTAX_ERROR, dec) << "dec != DECODE_RESULT_SYNTAX_ERROR";
}
 
TEST(Parse, DecodeFile1Big) {
    uint16_t *text;
    int dec = decode_file("/cl/dev/pedroos/mpt/test/src/p1big.es", &text);
    free(text);
    ASSERT_EQ(DECODE_RESULT_OK, dec) << "dec != DECODE_RESULT_OK";
}
 
int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
