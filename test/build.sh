#!/bin/bash
rm -f bin/*.o
rm -f bin/mpttest
CPLUS_INCLUDE_PATH=../emu/include g++ -v -std=c++0x -g -c src/*.cpp
mv *.o bin
g++ bin/*.o -v --enable-new-dtags -Xlinker -rpath='$ORIGIN/../../emu/bin/' -lgtest -lgtest_main -L../emu/bin -lemu -o bin/mocotest
