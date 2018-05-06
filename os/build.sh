#!/bin/bash
rm -f bin/*.o
rm -f bin/*.so
rm -f bin/*.a
as src/*.s -o __as.o
if compgen -G "src/*.c" > /dev/null; then
    C_INCLUDE_PATH=include/ gcc -std=c99 src/*.c -g -fpic -c
fi
mv *.o bin
ld bin/*.o -shared -o bin/libos.so
ar -rv bin/libos.a bin/*.o
