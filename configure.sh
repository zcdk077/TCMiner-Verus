#!/bin/bash

ARCH="-march=armv8-a+crypto"
CORE="-mtune=native"
OPTI="-Ofast -Wl,-hugetlbfs-align -funroll-all-loops -ftree-vectorize -ffinite-loops -ffast-math -D_REENTRANT -finline-functions -falign-functions=16 -fomit-frame-pointer -fpic -pthread -flto -fuse-ld=lld -fno-stack-protector -mllvm -enable-loop-distribute"

./configure CXXFLAGS="$ARCH $CORE $OPTI" CFLAGS="$ARCH $CORE $OPTI" \
CXX=clang++ CC=clang  LDFLAGS="-v -pthread -flto -Wl,-hugetlbfs-align -Wl,--no-as-needed"
