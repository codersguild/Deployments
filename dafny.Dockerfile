## Using Ubuntu Focal Image. 
FROM ubuntu:bionic

SHELL ["/bin/bash", "-c"]
ENV SHELL=/bin/bash
WORKDIR /

## Install required dependencies. 
RUN apt -qq -o=Dpkg::Use-Pty=0 update && \
    apt -qq -o=Dpkg::Use-Pty=0 install --no-install-recommends -y \ 
    git nano sudo cmake cmake-data \
    curl apt-utils binutils-common wget ninja-build \
    make build-essential clang autoconf ca-certificates \ 
    python python3 python3-pip llvm z3 gcc g++

## Node.js Install
RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN apt -qq -o=Dpkg::Use-Pty=0 install -y nodejs
RUN npm install -g bignumber.js

## Dafny Specific
RUN mkdir /dafny-progs
WORKDIR /dafny-progs
RUN npm install --save bignumber.js
COPY ./boogie /dafny-progs/boogie
COPY ./dafny /dafny-progs/dafny

RUN sudo apt install gnupg ca-certificates && \
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
	echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list && \
	sudo apt update
	
RUN apt -qq -o=Dpkg::Use-Pty=0 install -y mono-complete

## Set up default user
RUN useradd -ms /bin/bash default && \
	echo default:esnow4596 | chpasswd && \
	usermod -aG sudo default ; 

RUN	chmod -R 777 /opt/	
RUN	chmod -R 777 /dafny-progs/	

WORKDIR /
USER default
