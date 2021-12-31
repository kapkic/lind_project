#!/bin/sh -l

git --git-dir /home/lind/lind_project/src/lind_glibc/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/src/native_client/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/src/safeposix-rust/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/.git remote update origin --prune;

rustup toolchain list
rustup -V

#disabled for rustposix testing:
#git --git-dir /home/lind/lind_project/src/lind_glibc/.git checkout remotes/origin/develop;
#git --git-dir /home/lind/lind_project/src/native_client/.git checkout remotes/origin/develop;
#git --git-dir /home/lind/lind_project/src/safeposix-rust/.git checkout remotes/origin/develop;
#git --git-dir /home/lind/lind_project/.git checkout remotes/origin/develop;

make rustposix;  
#make nacl; 
#make glibc; 
#make install;
#make test;
#echo "It's alive!"
