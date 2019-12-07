#!/bin/bash

echo Remove old exe
rm /src/main

echo
echo Compile main
g++ -std=c++11 \
    -o /src/main \
    -I/fbx-sdk/install/include \
    /src/main.cpp \
    /fbx-sdk/install/lib/gcc/x64/release/libfbxsdk.a \
    -ldl -lltdl -llzma -lpthread -lxml2 -lz \

echo
echo Execute sample
/src/main
