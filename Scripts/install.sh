sudo apt-get install -y \
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
    clang-9 llvm-9 llvm-9-dev llvm-9-tools afl++ xclip \
    nginx openssh-server libstdc++-10-dev


sudo pip3 install lit tabulate wllvm pygame keras pandas scikit-learn 
sudo pip3 install torch torchvision
curl -OL https://github.com/google/googletest/archive/release-1.7.0.zip
unzip release-1.7.0.zip

sudo snap install htop
sudo snap install --classic heroku
sudo snap install microk8s --channel=1.19/candidate --classic
sudo snap install slack --classic
sudo snap install gitkraken --classic

sudo apt-get install default-jdk default-jre

# Node.js
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update

apt-cache policy docker-ce
sudo apt install -y docker-ce

echo $USER
sudo usermod -aG docker $USER
sudo apt-get install gparted

sudo apt-get update
sudo apt-get upgrade
sudo update-initramfs -u
sudo update-grub
sudo update-grub2

sudo apt-get install -y golang-go unzip git wget
wget https://github.com/microsoft/cascadia-code/releases/download/v2009.22/CascadiaCode-2009.22.zip
unzip CascadiaCode-2009.22.zip
sudo cp -r ttf/ /usr/share/fonts/
sudo cp -r woff2/ /usr/share/fonts/
