## Some Installs

## Init : 

```bash 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y cmake cmake-data unzip \
  	  curl wget cmake git nano make build-essential \
      ca-certificates z3 dafny python3 python3-pip \ 
      llvm z3 gcc g++ golang-go gccgo \
      ninja-build libgraphviz-dev \
      libgmp-dev libmpfr-dev clang \
      libboost-all-dev \
      python3-pip autoconf \
      less vim binutils-common \
      gcc-multilib \
      sudo ca-certificates \
      graphviz libgraphviz-dev python3-pygraphviz \
      lcov ggcov apt-utils net-tools inotify-tools 
```

```bash
sudo apt-get install curl wget cmake git nano make build-essential ca-certificates z3 python3 python3-pip llvm z3 gcc g++ golang-go gccgo ninja-build libgraphviz-dev libgmp-dev libmpfr-dev clang libboost-all-dev python3-pip autoconf less vim gcc-multilib sudo ca-certificates graphviz libgraphviz-dev python3-pygraphviz lcov ggcov apt-utils net-tools inotify-tools gnupg-agent software-properties-common
```

## Basic Setup 

```bash
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
sudo snap install docker

sudo snap install microk8s --channel=1.19/candidate --classic
```

```bash
CC=gcc CXX=g++                                  \
cmake -DCMAKE_INSTALL_PREFIX=/usr               \
      -DLLVM_ENABLE_FFI=ON                      \
      -DCMAKE_BUILD_TYPE=Release                \
      -DLLVM_ENABLE_PROJECTS="clang;lld"        \
      -DLLVM_BUILD_LLVM_DYLIB=ON                \
      -DLLVM_LINK_LLVM_DYLIB=ON                 \
      -DLLVM_ENABLE_RTTI=ON                     \
      -DLLVM_TARGETS_TO_BUILD="X86;ARM;host;AMDGPU;BPF" \
      -DLLVM_BUILD_TESTS=ON                     \
      -Wno-dev -G Ninja ../llvm                &&
ninja all
```

```bash
CC=clang CXX=clang++                            \
cmake -DCMAKE_INSTALL_PREFIX=/usr               \
      -DLLVM_ENABLE_FFI=ON                      \
      -DCMAKE_BUILD_TYPE=Release                \
      -DLLVM_ENABLE_PROJECTS="clang;lld" \
      -DLLVM_BUILD_LLVM_DYLIB=ON                \
      -DLLVM_LINK_LLVM_DYLIB=ON                 \
      -DLLVM_ENABLE_RTTI=ON                     \
      -DLLVM_TARGETS_TO_BUILD="X86;ARM;host;AMDGPU;BPF" \
      -DLLVM_BUILD_TESTS=ON                     \
      -Wno-dev -G Ninja ../llvm                &&
ninja all
```

https://go.googlesource.com/gollvm/+/9e1280ddbe7c442191b630827c030d13de35b569

## More Build CMD Dumps

```bash
cmake \
  -DENABLE_POSIX_RUNTIME=ON \
  -DENABLE_KLEE_UCLIBC=ON \
  -DKLEE_UCLIBC_PATH=../klee-uclibc \
  -DLLVM_CONFIG_BINARY=/usr/bin/llvm-config \
  -DLLVMCC=/usr/bin/clang-9 \
  -DLLVMCXX=/usr/bin/clang++-9 \
  -DENABLE_KLEE_LIBCXX=ON \
  -DKLEE_RUNTIME_BUILD_TYPE=Release+Debug+Asserts \
  -DKLEE_LIBCXX_DIR=/home/vmconsys655/llvm-project/libcxx/libc++-install-9 \ 
  -DKLEE_LIBCXX_INCLUDE_DIR=/home/vmconsys655/llvm-project/libcxx/libc++-install-9/include/c++/v1 \
  ../klee
```

```bash
 cmake   -DENABLE_POSIX_RUNTIME=ON   -DENABLE_KLEE_UCLIBC=ON   -DKLEE_UCLIBC_PATH=../klee-uclibc   -DLLVM_CONFIG_BINARY=/usr/bin/llvm-config   -DLLVMCC=/usr/bin/clang-9   -DLLVMCXX=/usr/bin/clang++-9   -DENABLE_KLEE_LIBCXX=ON   -DKLEE_RUNTIME_BUILD_TYPE=Release+Debug+Asserts   -DKLEE_LIBCXX_DIR=/home/vmconsys655/llvm-project/libcxx/libc++-install-9 \ -DKLEE_LIBCXX_INCLUDE_DIR=/home/vmconsys655/llvm-project/libcxx/libc++-install-9/include/c++/v1 -DKLEE_LIBCXXABI_SRC_DIR=/home/vmconsys655/llvm-project/libcxxabi/src/ ../klee 
```

## Errors

```-lstdc++```, ```sudo apt-get install libstdc++-10-dev```.
