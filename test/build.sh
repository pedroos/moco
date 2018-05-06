#!/bin/bash
rm -f bin/*.o
rm -f bin/mpttest
CPLUS_INCLUDE_PATH=../arch/include g++ -std=c++0x -g -c src/*.cpp
mv *.o bin
g++ bin/*.o --enable-new-dtags -Xlinker -rpath='$ORIGIN/../../arch/bin/' -lgtest -lgtest_main -L../arch/bin -larch -o bin/mocotest
