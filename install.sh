#!/bin/bash
apt-get update
apt-get upgrade -y

echo "======== Installing devkitPro ========"
apt-get install --no-install-recommends -y git wget build-essential ca-certificates
apt-get install -y --no-install-recommends gcc gcc-mingw-w64-i686 libc6-dev libc6-i386 p7zip-full xorriso
bash dkp_install.sh
ln -s /proc/self/mounts /etc/mtab
dkp-pacman -Syu --noconfirm
dkp-pacman -S gamecube-dev --noconfirm
dkp-pacman -S ppc-zlib --noconfirm

echo "======== Installing libogc2 ========"
source /etc/profile.d/devkit-env.sh
git clone https://github.com/extremscorner/libogc2.git
cd libogc2
make install
