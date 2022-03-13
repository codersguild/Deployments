## Commands

```bash
    1  apt-get update
    2  apt-get install git gcc wget curl aria2 python python-pip python-docs binutils make cmake cmake-data
    3  apt-get install git gcc wget curl aria2 python python-pip binutils make cmake cmake-data
    4  wget https://github.com/Z3Prover/z3/releases/download/z3-4.5.0/z3-4.5.0-x64-ubuntu-14.04.zip
    5  apt-get install tar bzip2 unzip
    6  unzip z3-4.5.0-x64-ubuntu-14.04.zip 
    7  ls
    8  cd z3-4.5.0-x64-ubuntu-14.04
    9  apt-get install g++ gcc
   10  python scripts/mk_make.py
   11  ls
   12  cd bin/
   13  ls
   14  cd ..
   15  rm -rf z3-4.5.0-x64-ubuntu-14.04 z3-4.5.0-x64-ubuntu-14.04.zip 
   16  wget https://github.com/Z3Prover/z3/archive/refs/tags/z3-4.5.0.zip
   17  unzip z3-4.5.0.zip 
   18  cd z3-4.5.0.zip 
   19  cd z3-z3-4.5.0/
   20  clear
   21  ls
   22  https://github.com/Z3Prover/z3/archive/refs/tags/z3-4.5.0.zip
   23  python scripts/mk_make.py
   24  cd build/
   25  make 
   26  sudo make install 
   27  make install 
   28  cd ..
   29  cd /home
   30  ls
   31  git clone https://github.com/klee/klee/tree/v1.3.0
   32  unzip https://github.com/klee/klee/archive/refs/tags/v1.3.0.zip
   33  wget https://github.com/klee/klee/archive/refs/tags/v1.3.0.zip
   34  ls
   35  unzip v1.3.0.zip 
   36  mv v1.3.0.zip klee
   37  ls
   38  cd klee
   39  rm -rf klee 
   40  mkdir klee
   41  mv klee-1.3.0/*  klee
   42  ls
   43  cd klee
   44  ls
   45  cd ..
   46  git clone https://github.com/klee/klee-uclibc.git
   47  apt-get install build-essential curl libcap-dev git cmake libncurses5-dev python-minimal python-pip unzip libtcmalloc-minimal4 libgoogle-perftools-dev libsqlite3-dev doxygen
   48  pip3 install tabulate
   49  pip install tabulate
   50  apt-get install clang-3.8 llvm-3.8 llvm-3.8-dev llvm-3.8-tools
   51  apt-get install clang-3.8 llvm-3.8 llvm-3.8-dev 
   52  cd klee-uclibc/
   53  ./configure --make-llvm-lib 
   54  apt-get install llvm-tools
   55  apt-get install llvm-tool
   56  apt-get llvm clang clang-tools
   57  apt-get install llvm clang clang-tools
   58  apt-get install llvm clang 
   59  llvm-config
   60  ./configure --make-llvm-lib 
   61  make -j2
   62  cd ..
   63  mkdir klee_build_dir
   64  cd klee_build_dir && cmake -DENABLE_SOLVER_Z3=ON -DENABLE_SOLVER_STP=OFF -DENABLE_POSIX_RUNTIME=ON -DENABLE_KLEE_UCLIBC=ON  -DENABLE_UNIT_TESTS=OFF -DENABLE_SYSTEM_TESTS=OFF -DKLEE_UCLIBC_PATH=/home/klee-uclibc /home/klee
   65  cd ../
   66  rm -rf klee klee-1.3.0 
   67  ls
   68  git clone https://github.com/klee/klee.git
   69  cd klee
   70  ls
   71  git checkout v1.3.0
   72  ls
   73  ./configure 
   74  git checkout master
   75  cd ..
   76  cd klee_build_dir/
   77  ls
   78  cd klee_build_dir && cmake -DENABLE_SOLVER_Z3=ON -DENABLE_SOLVER_STP=OFF -DENABLE_POSIX_RUNTIME=ON -DENABLE_KLEE_UCLIBC=ON  -DENABLE_UNIT_TESTS=OFF -DENABLE_SYSTEM_TESTS=OFF -DKLEE_UCLIBC_PATH=/home/klee-uclibc /home/klee
   79  cmake -DENABLE_SOLVER_Z3=ON -DENABLE_SOLVER_STP=OFF -DENABLE_POSIX_RUNTIME=ON -DENABLE_KLEE_UCLIBC=ON  -DENABLE_UNIT_TESTS=OFF -DENABLE_SYSTEM_TESTS=OFF -DKLEE_UCLIBC_PATH=/home/klee-uclibc /home/klee
   80  apt-get install zlib
   81  apt-get install install zlib-devel zlib-static
   82  apt-get install zlib-devel zlib-static
   83  apt-get install zlib
   84  cmake -DENABLE_SOLVER_Z3=ON -DENABLE_SOLVER_STP=OFF -DENABLE_POSIX_RUNTIME=ON -DENABLE_KLEE_UCLIBC=ON  -DENABLE_UNIT_TESTS=OFF -DENABLE_SYSTEM_TESTS=OFF -DKLEE_UCLIBC_PATH=/home/klee-uclibc /home/klee
   85  export ZLIB_LIBRARY=/usr/local/zlib/lib
   86  export ZLIB_INCLUDE_DIR=/urs/local/zlib/include
   87  cmake -DENABLE_SOLVER_Z3=ON -DENABLE_SOLVER_STP=OFF -DENABLE_POSIX_RUNTIME=ON -DENABLE_KLEE_UCLIBC=ON  -DENABLE_UNIT_TESTS=OFF -DENABLE_SYSTEM_TESTS=OFF -DKLEE_UCLIBC_PATH=/home/klee-uclibc /home/klee
   88  /usr/local/zlib/lib
   89  cd /usr/local/zlib/lib
   90  apt-get install install zlib1g-dev
   91  apt-get install zlib1g-dev
   92  cmake -DENABLE_SOLVER_Z3=ON -DENABLE_SOLVER_STP=OFF -DENABLE_POSIX_RUNTIME=ON -DENABLE_KLEE_UCLIBC=ON  -DENABLE_UNIT_TESTS=OFF -DENABLE_SYSTEM_TESTS=OFF -DKLEE_UCLIBC_PATH=/home/klee-uclibc /home/klee
   93  make -j8
   94  make install 
   95  klee
   96  klee --help
   97  clear
   98  sage --help
   99  apt-get install sagemath
  100  apt-get install sage
  101  apt-add-repository -y ppa:aims/sagemath
  102  apt-get install 
  103  apt-get update
  104  apt-get install sagemath
  105  apt-get install sagemath-upstream-binary
  106  cd ..
  107  ls
  108  wget http://mirror.aarnet.edu.au/pub/sage/linux/64bit/old/meta/sage-8.4-Ubuntu_18.04-x86_64.tar.bz2.torrent
  109  aria2c sage-8.4-Ubuntu_18.04-x86_64.tar.bz2.torrent \
  110  aria2c sage-8.4-Ubuntu_18.04-x86_64.tar.bz2.torrent
  111  ls
  112  bzip sage-8.4-Ubuntu_18.04-x86_64.tar.bz2
  113  bzip2 sage-8.4-Ubuntu_18.04-x86_64.tar.bz2
  114  unzip sage-8.4-Ubuntu_18.04-x86_64.tar.bz2
  115  tar -xzvf sage-8.4-Ubuntu_18.04-x86_64.tar.bz2
  116  bzip2 -d sage-8.4-Ubuntu_18.04-x86_64.tar.bz2
  117  ls
  118  rm -rf sage-8.4-Ubuntu_18.04-x86_64.tar.bz2
  119  rm -rf sage-8.4-Ubuntu_18.04-x86_64.tar.bz2.torrent 
  120  ls
  121  exit
  122  ls
  123  cd /research/
  124  ls
  125  cd sage-7.5.1
  126  make 
  127  export SAGE_PORT="ubuntu16.04"
  128  make 
  129  exit
  130  ls
  131  cd /research/
  132  ls
  133  bzip -d sage-8.9-Ubuntu_16.04-x86_64.tar.bz2 
  134  bzip2 -d sage-8.9-Ubuntu_16.04-x86_64.tar.bz2 
  135  bzip2 ls
  136  bzip2 --help
  137  bzip2 -d -v4 --fast sage-8.9-Ubuntu_16.04-x86_64.tar.bz2 
  138  bzip2 -d -v -v --fast sage-8.9-Ubuntu_16.04-x86_64.tar.bz2 
  139  sage
  140  z3
  141  clang -v
  142  clear
  143  exit
  144  cd /research/
  145  ls
  146  cd SageMath/
  147  ./sage
  148  make 
  149  cd ../
  150  rm -rf SageMath/
  151  ls
  152  tar -xvf sage-8.9-Ubuntu_16.04-x86_64.tar.bz2 
  153  ls
  154  cd SageMath/
  155  ./sage
  156  pip install ipython
  157  pip install --upgrade pip
  158  python
  159  ./sagfe
  160  ./sage
  161  mail -s 'Sage Crash Report' sage-support@googlegroups.com < /root/.sage/ipython-5.0.0/Sage_crash_report.txt
  162  apt-get install mail
  163  mail
  164  ./sage
  165  cat /root/.sage/ipython-5.0.0/Sage_crash_report.txt
  166  apt-get install libpng12.so.0
  167  apt-get install libtool autoconf build-essential pkg-config automake tcsh
  168  add-apt-repository ppa:linuxuprising/libpng12
  169  apt install libpng12-0
  170  ./sage
  171  cat /root/.sage/ipython-5.0.0/Sage_crash_report.txt
  172  apt-get install libfreetype6
  173  ./sage
  174  clear
  175  z3
  176  sage -c "import z3"
  177  ./sage -c "import z3"
  178  pip install z3-solver
  179  ./sage -c "import z3"
  180  ./asge
  181  ./sga
  182  ./sage 
  183  nano z3sc.py
  184  cd ..
  185  cd numinv/
  186  cat README.md 
  187  sage -python -O dig2.py programs/nla/cohendiv.c
  188  ../SageMath/sage -python -O dig2.py programs/nla/cohendiv.c
  189  z3
  190  pip3 install z3-solver
  191  apt-get install z3 dafny nano
  192  apt-get install z3 nano
  193  nano z3util.py 
  194  cd ..
  195  nano z3test.py
  196  python z3test.py 
  197  nano z3test.py
  198  export Z3=PATH/TO/z3   #Z3 dir
  199  export SAGE=PATH/TO/sage  #where your SAGE dir is
  200  export SAGE_PATH=$Z3/src/api/python
  201  export KLEE=$DEVEL/KLEE/
  202  export PATH=$KLEE/klee_build_dir/bin:$SAGE:$PATH
  203  ls
  204  /home/klee_build_dir/bin/klee --help
  205  export Z3=/z3-z3-4.5.0
  206  export SAGE=/research/SageMath  
  207  export SAGE_PATH=$Z3/src/api/python
  208  export KLEE=/home/klee
  209  export PATH=/home/klee_build_dir/bin:$SAGE:$PATH
  210  export Z3=/z3-z3-4.5.0
  211  export SAGE=/research/SageMath  
  212  export SAGE_PATH=$Z3/src/api/python
  213  export KLEE=/home/klee
  214  export PATH=/home/klee_build_dir/bin:$SAGE:$PATH
  215  export Z3=/z3-z3-4.5.0
  216  export SAGE=/research/SageMath  
  217  export SAGE_PATH=$Z3/src/api/python
  218  export KLEE=/home/klee
  219  export PATH=/home/klee_build_dir/bin:$SAGE:$PATH
  220  cd numinv/
  221  sage
  222  sage -python -O dig2.py programs/nla/cohendiv.c
  223  sage -python -O dig2.py programs/nla/cohendiv.c 
  224  apt-get install astyle
  225  sage --help
  226  klee --help | grep "z3"
  227  sage -c "import z3"
  228  ipython
  229  ipython3
  230  apt-get install ipython
  231  ipython
  232  python scripts/mk_make.py --python
  233  cd /z3-z3-4.5.0/
  234  python scripts/mk_make.py --python
  235  cd build
  236  make -j8
  237  make all
  238  make install 
  239  cd ..
  240  python scripts/mk_make.py --prefix=/usr --python --pypkgdir=/usr/lib/python-2.7/site-packages
  241  cd build/
  242  make -j8
  243  make install 
  244  export PYTHONPATH=/usr/lib/python-2.7/site-packages:$PYTHONPATH
  245  sage
  246  sage -c "import z3"
  247  cd ../
  248  cd ...\
  249  cd /research/
  250  sage -c "import z3"
  251  cd numinv/
  252  sage -python -O dig2.py programs/nla/cohendiv.c
  253  history
  254  sage -python -O dig2.py programs/nla/geo3.c 
  255  sage -python -O dig2.py programs/nla/mannadiv.c 
  256  for files in programs/nla/*.c ; do echo $files ; done  
  257  for files in programs/nla/*.c ; do sage -python -O dig2.py $files ; done  
  258  clear
  259  history
```

```bash
export Z3=/z3-z3-4.5.0
export SAGE=/research/SageMath  
export SAGE_PATH=$Z3/src/api/python
export KLEE=/home/klee
export PATH=/home/klee_build_dir/bin:$SAGE:$PATH
```

