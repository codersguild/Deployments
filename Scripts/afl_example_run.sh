#!/usr/bin/bash

cd code2inv/prog_generator
sudo fuzz/afl-init.sh

# Arguments for AFL
export CC=$HOME/afl/afl-gcc
export CXX=$HOME/afl/afl-g++
export AFL=$HOME/afl/afl-fuzz

for file_index in fuzz/src/type1/*.c;
do 
    var=`echo $file_index |  tr "/" "\n" | tr "." "\n" | grep ^[0-9]`
    echo $var
    if [[ -n $var ]]; then 
        ./run_solver_file.sh ../../benchmarks/C_instances/c_graph/${var}.c.json ../../benchmarks/C_instances/c_smt2/${var}.c.smt specs/fuzz_spec -o results/inv_result_${var}.txt ${var} fuzz_spec
    fi
done

pkill afl
pkill afl-fuzz

