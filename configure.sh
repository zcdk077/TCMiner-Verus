#!/bin/bash

ARCH="-march=armv8.2-a+crypto"
CORE="-mtune=cortex-a76 -mtune=cortex-a55"
OPTI="-Ofast -mfloat-abi=hard -pthread -flto -funroll-loops -ffinite-loops -finline-functions -falign-functions=64 -D_REENTRANT"

./configure CXXFLAGS="$ARCH $CORE $OPTI" CFLAGS="$ARCH $CORE $OPTI" \
CXX=clang++ CC=clang  LDFLAGS="-Wl,-O2 -Wl,-hugetlbfs-align -lm -lcrypto -lpthread -lssl -lgmp -lcurl -fuse-ld=lld"