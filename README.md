# CCminer for Termux

Based on https://github.com/Oink70/CCminer-ARM-optimized

Termux Git and Build Process:
```
pkg update -y
pkg upgrade -y
pkg install openssl libjansson automake build-essential clang lld curl git binutils
git clone https://github.com/Darktron/ccminer.git
cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
CXX=clang++ CC=clang ./build.sh
```
Change your pools, address, and miner name with `nano config.json`
Run the miner with `~/ccminer/start.sh`
