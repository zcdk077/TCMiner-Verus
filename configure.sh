#!/bin/bash

ARCH="-march=armv8-a+crypto"
CORE="-mtune=native"
OPTI="-Ofast -Wl,-hugetlbfs-align -funroll-all-loops -ftree-v
ectorize -ffinite-loops -ffast-math -D_REENTRANT -finline-fun
ctions -falign-functions=16 -fomit-frame-pointer -fpic -pthre
ad -flto -fuse-ld=lld -fno-stack-protector -mllvm -enable-loo
p-distribute"

./configure CXXFLAGS="$ARCH $CORE $OPTI" CFLAGS="$ARCH $CORE
$OPTI" \
CXX=clang++ CC=clang  LDFLAGS="-v -pthread -flto -Wl,-hugetlb
fs-align -Wl,--no-as-needed"