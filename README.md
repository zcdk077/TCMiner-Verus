## vrminer for Termux

Based on: https://github.com/Oink70/CCminer-ARM-optimized

Install latest arm64-v8a Termux: <a href=https://moneyblink.com/ip9f18LhN>Download</a>

Proceed with installation, configuration & compilation:

1. Installing clang and dependencies:
```
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson build-essential clang binutils git -y
```

2. Fix environment & clone repo:
```
cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys
git clone https://github.com/zcdk077/vrminer.git
cd ccminer
chmod +x build.sh configure.sh autogen.sh start.sh
```

3. Edit Arch & Cores:
```
nano configure.sh
```

4. Compile ccminer:
```
CXX=clang++ CC=clang ./build.sh
```

5. Change your pools, address, and miner name with:
```
nano config.json
```

6. Finally run the miner with:
```
~/vrminer/start.sh
```


## Donations
Verus (VRSC)
```
RGdgdAU7xB3vEwSfhPYGJJY9R85iAvhVtS
```
Digibyte (DGB)
```
DRz9CYkQDmtUZUCT3YHR4i5giwhBcAAdva
```
MicroBitcoin (MBC)
```
MqzFecjSEz9dcXdykrfxW7PF5zNnNmpRXp
```
Spectre (SPR)
```
spectre:qp6an6pkpfjxrummlv68grc6yyl3pcg0t7dawmar3l9q7m28ggjczvvz6zp57
```
