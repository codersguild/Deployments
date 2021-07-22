#!/usr/bin/env bash

rm -rf *.out *.s *.profile *.bc

$HOME/clang-2.9/bin/clang -emit-llvm -o code.main.bc -c code.c
$HOME/clang-2.9/bin/opt -insert-path-profiling code.main.bc -o code.profile.bc
$HOME/clang-2.9/bin/llc -relocation-model=pic code.profile.bc -o code.profile.s

g++ -o code.profile code.profile.s $HOME/clang-2.9/lib/profile_rt.so
./code.profile

$HOME/clang-2.9/bin/opt -f -path-profile-loader -path-profile-verifier -profile-info-file=llvmprof.out code.main.bc
$HOME/clang-2.9/bin/llvm-prof -A code.profile.bc edgefrompath.llvmprof.out

# opt --profile-file=llvmprof.out code.main.bc
cmp edgefrompath.llvmprof.out llvmprof.out

# rm -rf *.out *.s *.profile *.bc

# clang-2.9/bin/clang -emit-llvm -o code.main.bc -c code.c
# clang-2.9/bin/opt -insert-path-profiling code.main.bc -o code.profile.bc
# clang-2.9/bin/llc -relocation-model=pic code.profile.bc -o code.profile.s

# g++ -o code.profile code.profile.s clang-2.9/lib/profile_rt.so
# ./code.profile

# clang-2.9/bin/opt -f -path-profile-loader -path-profile-verifier -profile-info-file=llvmprof.out code.main.bc
# clang-2.9/bin/llvm-prof -A code.profile.bc edgefrompath.llvmprof.out

# opt --profile-file=llvmprof.out code.main.bc
# cmp edgefrompath.llvmprof.out llvmprof.out

# opt -load /usr/local/lib/LLVMHotPaths.so -f -path-profile-loader -profile-info-file=llvmprof.out -dump_hot_paths code.main.bc 

# opt -load /usr/local/lib/LLVMHotPaths.so -f -path-profile-loader -profile-info-file=llvmprof.out -dump_hot_paths code.main.bc 

# cd /projects/llvm-2.9/build
# make -j 8
# make install 
# cd ../../../
# opt -load /usr/local/lib/LLVMHotPaths.so -f -path-profile-loader -profile-info-file=llvmprof.out -dump_hot_paths code.main.bc 
