# To change the cuda arch, edit Makefile.am and run ./build.sh
./configure
ARCH="-march=native"
CORE="-mtune=native"
OPTI="-Ofast -Wl,-hugetlbfs-align -funroll-all-loops -ffinite-loops -ffast-math -D_REENTRANT -finline-functions -falign-functions=64 -fomit-frame-pointer -fpic -pthread -flto -fuse-ld=lld -fno-stack-protector -mfloat-abi=hard -mllvm -enable-loop-distribute -fopenmp"
CXXFLAGS="$OPTI $ARCH $CORE"
CFLAGS="$OPTI $ARCH $CORE"
LDFLAGS="-v -flto -Wl,-hugetlbfs-align"
CXX=clang++
CC=clang