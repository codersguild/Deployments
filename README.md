## Some Installs

- [Docker Images : Maintain for AWS & GCP](https://hub.docker.com/u/prodrelworks)
- [https://docs.docker.com/develop/develop-images/multistage-build/](https://docs.docker.com/develop/develop-images/multistage-build/)

## Init Install :

```bash
sudo apt-get install -y curl wget cmake git nano make \
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

sudo pip3 install lit tabulate wllvm
sudo apt-get install clang-9 llvm-9 llvm-9-dev llvm-9-tools
curl -OL https://github.com/google/googletest/archive/release-1.7.0.zip
unzip release-1.7.0.zip
```
## Basic Setup

```bash
sudo snap install htop
sudo snap install --classic heroku
sudo snap install microk8s --channel=1.19/candidate --classic
sudo apt-get install texlive-full texmaker xjournal
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
```

Docker Install 

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update

apt-cache policy docker-ce
sudo apt install -y docker-ce

sudo usermod -aG docker $USER
sudo systemctl status docker
```
More Packages 
```
sudo apt-get install gparted

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-client-12 pgadmin4 nginx openssh-server libstdc++-10-dev
sudo apt-get upgrade
sudo update-initramfs -u
sudo update-grub
sudo update-grub2
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

- Bluetooth Issue : [Install](https://askubuntu.com/questions/922860/pairing-apple-airpods-as-headset)
- GOLLVM Commit : [Issue Install](https://go.googlesource.com/gollvm/+/9e1280ddbe7c442191b630827c030d13de35b569)
- TexStudio : [Install](https://linuxhint.com/install-texstudio-latex-editor-linux/)
- Fortinet Client : [Install](https://www.forticlient.com/downloads)

## More Build CMD for `cmake-projects` for Research Projects

```
mkdir libcxx-build
cd ../klee
LLVM_VERSION=9 BASE=$HOME/libcxx-build REQUIRES_RTTI=1 DISABLE_ASSERTIONS=1 ENABLE_DEBUG=0 ENABLE_OPTIMIZED=1 ./scripts/build/build.sh libcxx

mkdir build && cd build

cmake \
  -DENABLE_POSIX_RUNTIME=ON \
  -DENABLE_KLEE_UCLIBC=ON \
  -DKLEE_UCLIBC_PATH=$HOME/klee-uclibc \
  -DLLVM_CONFIG_BINARY=/usr/bin/llvm-config \
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
  -DGTEST_SRC_DIR=$HOME/googletest-release-1.7.0/ $HOME/klee
```

## Termification

```
sudo apt install -y golang-go unzip git wget
go get -u github.com/justjanne/powerline-go

wget https://github.com/microsoft/cascadia-code/releases/download/v2009.22/CascadiaCode-2009.22.zip
unzip CascadiaCode-2009.22.zip

sudo cp -r ttf/ /usr/share/fonts/
sudo cp -r woff2/ /usr/share/fonts/

sudo nano ~/.bashrc

GOPATH=$HOME/go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $?)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```

* [Cascadia Code PL](https://github.com/microsoft/cascadia-code/releases?WT.mc_id=-blog-scottha)
* [Terminal Schemes](https://docs.microsoft.com/en-us/windows/terminal/custom-terminal-gallery/frosted-glass-theme)
* [Retro Fitting](https://docs.microsoft.com/en-us/windows/terminal/custom-terminal-gallery/retro-command-prompt)

## Running MacOSX

```
sudo docker run --name macosx \
    --device /dev/kvm \
    --device /dev/snd \
    -e AUDIO_DRIVER=pa,server=unix:/tmp/pulseaudio.socket \
    -v "/run/user/$(id -u)/pulse/native:/tmp/pulseaudio.socket" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e PULSE_SERVER=unix:/tmp/pulseaudio.socket \
    --privileged \
    --net host \
    --cap-add=ALL \
    -e SMP=4 \
    -e CORES=4 \
    -e RAM=16 \
    -p 50922:10022 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e EXTRA='-usb -device usb-host,hostbus=1,hostaddr=2' \
    -v /dev:/dev \
    -v /lib/modules:/lib/modules \
    -e "DISPLAY=${DISPLAY:-:0.0}" \
    sickcodes/docker-osx:latest
```

## Intresting Commands

Random Text

```
$(tr -dc 'A-Za-z0-9' </dev/urandom | head -c 15)
```

Epoll Source : [Epoll](https://github.com/enki/libev/blob/master/ev_epoll.c)
