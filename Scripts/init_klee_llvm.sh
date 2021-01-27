sudo apt-get update
sudo apt-get install ufw openssh-server net-tools inotify-tools curl git wget

sudo ufw enable
sudo ufw allow 22
sudo ufw allow 5000
sudo ufw allow 8500
sudo ufw allow 9500
sudo ufw allow 52
sudo ufw allow 53
sudo ufw allow 23
sudo ufw allow 24
sudo ufw allow 4700

sudo apt-get install g++ gcc clang llvm clang-tools
sudo apt-get install build-essential curl libcap-dev git cmake cmake-data graphviz xdot libncurses5-dev python3 python3-pip unzip libtcmalloc-minimal4 libgoogle-perftools-dev libsqlite3-dev doxygen libgraphviz-dev python3-pygraphviz lcov ggcov

sudo pip3 install tabulate wllvm lit pandas numpy z3-solver matplotlib scikit-learn
sudo apt-get install z3 dafny clang-9 llvm-9 llvm-9-dev llvm-9-tools cmake bison flex libboost-all-dev python perl zlib1g-dev minisat

git clone https://github.com/klee/klee-uclibc.git
cd klee-uclibc
./configure --make-llvm-lib  
make -j 6
sudo make install 

cd ~
curl -OL https://github.com/google/googletest/archive/release-1.7.0.zip
unzip release-1.7.0.zip
rm -rf release-1.7.0.zip 



mkdir klee-build
cd klee-build/
export PATH="/home/nodecluster655/.local/lib/python3.8/site-packages:$PATH"
cmake   -DENABLE_POSIX_RUNTIME=ON   -DENABLE_KLEE_UCLIBC=ON   -DKLEE_UCLIBC_PATH=../klee-uclibc/   -DENABLE_UNIT_TESTS=OFF   -DLLVM_CONFIG_BINARY=/usr/bin/llvm-config-9   -DLLVMCC=/usr/bin/clang-9   -DLLVMCXX=/usr/bin/clang++-9   ../klee
make -j 6
sudo make install 

clear
mkdir pse_project

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

cd ~
mkdir llvm_testing
cd llvm_testing/
git clone https://github.com/llvm/llvm-project.git

cd llvm-project/
mkdir llvm_build
mkdir code_samples
cd code_samples/
