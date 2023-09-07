# To change the cuda arch, edit Makefile.am and run ./build.sh
./configure
ARCH="-march=native"
CORE="-mtune=native"
OPTI="-Ofast -enable-loop-distribute -ffinite-loops -ffast-math -D_REENTRANT -finline-functions -falign-functions=64 -fomit-frame-pointer -fpic -pthread -flto -fuse-ld=lld -fno-stack-protector"
CXXFLAGS="-Wl,-hugetlbfs-align -funroll-loops $OPTI $ARCH $CORE"
CFLAGS="-Wl,-hugetlbfs-align -funroll-loops $OPTI $ARCH $CORE"
LDFLAGS="-Ofast -v -flto -Wl,-hugetlbfs-align"
CXX=clang++
CC=clang
