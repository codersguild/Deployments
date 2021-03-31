#!/usr/bin/bash

for index in {1..50};
do 
    for type in _type1_ _type2_ _type3_
    do
        if [[ -f sucess_dump_$index$type.txt ]];
        then
            if [[ -f pre_run_$index$type.txt ]];
            then
                echo "Redundent Pre-Run File : pre_run_$index$type.txt ! Removing ..."
                rm -rf pre_run_$index$type.txt
            fi
        fi
    done
done
