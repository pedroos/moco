#!/bin/bash
rm -f bin/*.o
rm -f bin/*.so
rm -f bin/*.a
C_INCLUDE_PATH=include/ gcc -std=c99 src/*.c -g -fpic -c
mv *.o bin
ld bin/*.o -shared -o bin/libemu.so
ar -rv bin/libemu.a bin/*.o