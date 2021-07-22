## Colassus Backend :

- Extract and pass `clang-3.4.2` binaries.
- Build & pass `llvm-3.4.2` binaries.
- Build `stp` and pass binaries path.
- Make sure `z3`, `stp` & `googletest` are in `PATH`.

```bash
export CXXFLAGS="-fno-rtti -g -O0 -DHOOK"
export CFLAGS="-g -O0 -DHOOK"

CXXFLAGS="-fno-rtti" cmake \
  -DLLVM_CONFIG_BINARY=$HOME/llvm-3.4.2-build/Release+Asserts/bin/llvm-config \
  -DLLVMCC=$HOME/clang-3.4.2/bin/clang \
  -DLLVMCXX=$HOME/clang-3.4.2/bin/clang++ \
  -DKLEE_RUNTIME_BUILD_TYPE=Release+Debug+Asserts \
  -DENABLE_UNIT_TESTS=ON \
  -DENABLE_SOLVER_Z3=ON \
  -DGTEST_SRC_DIR=$HOME/googletest-release-1.7.0/ \
  $HOME/klee-colassus

export CXXFLAGS="-fno-rtti -g -O0 -DHOOK"
export CFLAGS="-g -O0 -DHOOK"

make ENABLE_OPTIMIZED=1 -j 8
```

## Configure Build

Need in-tree build for LLVM 3.4.2

```
CXXFLAGS="-g -O0 -DHOOK" CFLAGS="-g -O0 -DHOOK" \
../configure \
--with-z3="$HOME/z3/build" \
--with-llvmcc="$HOME/clang-3.4.2/bin/clang" \
--with-llvmcxx="$HOME/clang-3.4.2/bin/clang++" \
--with-llvmsrc="$HOME/llvm-3.4.2" \
--with-llvmobj="$HOME/llvm-3.4.2/build"

make ENABLE_OPTIMIZED=1 -j 8
```

#### POSIX Runtime and KLEE-ulibC

```
CXXFLAGS="-g -O0 -DHOOK" CFLAGS="-g -O0 -DHOOK" \
../configure \
--with-z3="$HOME/z3/build" \
--with-uclibc="$HOME/klee-uclibc" \
--enable-posix-runtime \
--with-llvmcc="$HOME/clang-3.4.2/bin/clang" \
--with-llvmcxx="$HOME/clang-3.4.2/bin/clang++" \
--with-llvmsrc="$HOME/llvm-3.4.2" \
--with-llvmobj="$HOME/llvm-3.4.2/build"

make ENABLE_OPTIMIZED=1 -j 8
```

```
git clone https://github.com/Z3Prover/z3.git

python scripts/mk_make.py
cd build
make
sudo make install
```
