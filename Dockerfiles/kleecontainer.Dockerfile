## Will optimize later for mult-stage builds.
FROM ubuntu:focal

SHELL ["/bin/bash", "-c"]
ENV SHELL=/bin/bash
WORKDIR /home
ENV HOME=/home

## Install required dependencies. 
RUN apt -qq -o=Dpkg::Use-Pty=0 update && \
  apt -qq -o=Dpkg::Use-Pty=0 install --no-install-recommends -y \ 
  curl wget cmake git nano make \
  build-essential ca-certificates z3 python3 nginx python3-pip \
  llvm z3 gcc g++ golang-go gccgo ninja-build libgraphviz-dev \
  libgmp-dev libmpfr-dev clang libboost-all-dev python3-pip \
  autoconf less vim gcc-multilib sudo ca-certificates guake graphviz \
  libgraphviz-dev python3-pygraphviz lcov ggcov apt-utils net-tools \
  inotify-tools gnupg-agent software-properties-common libstdc++-10-dev inotify-tools \
  apt-transport-https curl gnupg-agent software-properties-common dafny z3 \
  build-essential curl libcap-dev git cmake libncurses5-dev python3 \
  python3-pip unzip libtcmalloc-minimal4 libgoogle-perftools-dev \
  libsqlite3-dev doxygen gcc-multilib g++-multilib \
  clang-9 llvm-9 llvm-9-dev llvm-9-tools afl++ python

RUN pip3 install lit tabulate wllvm 

RUN curl -OL https://github.com/google/googletest/archive/release-1.7.0.zip
RUN unzip release-1.7.0.zip 

RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

RUN git clone https://github.com/klee/klee-uclibc.git && cd ./klee-uclibc && ./configure --make-llvm-lib && make -j2 && cd ..
RUN git clone https://github.com/lahiri-phdworks/klee.git

RUN  apt -qq -o=Dpkg::Use-Pty=0 install --no-install-recommends -y sudo && sudo pip3 install wllvm
COPY ./libcxx-build /home/libcxx-build
RUN cd klee && LLVM_VERSION=9 BASE=$HOME/libcxx-build REQUIRES_RTTI=1 DISABLE_ASSERTIONS=1 ENABLE_DEBUG=0 ENABLE_OPTIMIZED=1 ./scripts/build/build.sh libcxx
RUN cd ../ && mkdir build && cd ./build

RUN cmake \
  -DENABLE_POSIX_RUNTIME=ON \
  -DENABLE_KLEE_UCLIBC=ON \
  -DKLEE_UCLIBC_PATH=$HOME/klee-uclibc \
  -DLLVM_CONFIG_BINARY=/usr/bin/llvm-config-9 \
  -DLLVMCC=/usr/bin/clang-9 \
  -DLLVMCXX=/usr/bin/clang++-9 \
  -DENABLE_KLEE_LIBCXX=ON \
  -DENABLE_KLEE_EH_CXX=ON	\
  -DKLEE_RUNTIME_BUILD_TYPE=Release+Debug+Asserts \
  -DKLEE_LIBCXX_DIR=$HOME/libcxx-build/libc++-install-90/ \
  -DKLEE_LIBCXXABI_SRC_DIR=$HOME/libcxx-build/llvm-90/libcxxabi/ \
  -DKLEE_LIBCXX_INCLUDE_DIR=$HOME/libcxx-build/libc++-install-90/include/c++/v1/ \
  -DENABLE_KLEE_EH_CXX=ON \
  -DENABLE_UNIT_TESTS=ON \
  -DGTEST_SRC_DIR=$HOME/googletest-release-1.7.0/ $HOME/klee && make -j 2 && make install 

RUN mkdir projects && cd projects && git clone https://github.com/lahiri-phdworks/LVA-LLVM-Pass
RUN git clone https://github.com/llvm/llvm-project
RUN cd ./llvm-project && cmake -S llvm -B build -G "Unix Makefiles" -DLLVM_ENABLE_PROJECTS="libcxx;libcxxabi" -DLLVM_ABI_BREAKING_CHECKS=FORCE_OFF
