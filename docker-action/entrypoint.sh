#!/bin/sh -l

git --git-dir /home/lind/lind_project/src/lind_glibc/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/src/native_client/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/src/safeposix-rust/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/.git remote update origin --prune;

#echo "Toolchain:"
#rustup toolchain list
#echo "Rustup:"
#rustup -V #rust toolchain is not installed?
#echo "Cargo:"
#cargo -V

rustup toolchain install nightly-2021-09-27 --allow-downgrade --profile minimal --component clippy

#echo "Toolchain:"
#rustup toolchain list
#echo "Rustup:"
#rustup -V #rust toolchain is not installed?
#echo "Cargo:"
#cargo -V
#ls
#pwd

cp helloX.nexe /home/lind/lind_project/helloX.nexe
cd /home/lind/lind_project/
ls
pwd




#disabled for rustposix testing:
#git --git-dir /home/lind/lind_project/src/lind_glibc/.git checkout remotes/origin/develop;
#git --git-dir /home/lind/lind_project/src/native_client/.git checkout remotes/origin/develop;
#git --git-dir /home/lind/lind_project/src/safeposix-rust/.git checkout remotes/origin/develop;
#git --git-dir /home/lind/lind_project/.git checkout remotes/origin/develop;

echo "In the land of RUSTPOSIX where the shadows lie:"
make rustposix;  
echo "One NACL to rule them all:"
make nacl; 
echo "One GLIBC to find them:"
make glibc; 
echo "One ring to INSTALL them all"
make install;
echo "And in darkness TEST them"
#make test-verbose;
echo "It's alive?"

pwd
lindfs cp /home/lind/lind_project/helloY.nexe /lind/helloY.nexe
lind -vvvv /lind/helloY.nexe
echo "blank"
lind -vvvv /lind/helloINVALID.nexe
