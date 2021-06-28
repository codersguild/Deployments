#!/usr/bin/bash 

if [ $# -eq 0 ]
  then
    echo "Usage Info : Need to supply four parameters"
    exit -1
fi

if [ -z $1 ]
  then
    echo "Usage Info : First Parameter Empty @1 [type : folder-name]"
    exit -1
fi

if [ -z $2 ]
  then
    echo "Usage Info : Package Name Empty @2 [type : string]"
    exit -1
fi

if [ -z $3 ]
  then
    echo "Usage Info : UUID Fields Empty @3 [type : folder-name]"
    exit -1
fi

if [ -z $4 ]
  then
    echo "Usage Info : EMP ID missing @4 [type : integer]"
    exit -1
fi

for filename in `ls $1/*`
do
        while read line
        do
               echo -ne $line
        done <$filename
done

echo -ne " $2 SUCCESS "
echo 

for filename in `ls $3/*`
do
        while read line
        do
               echo [$line]
        done <$filename
done
echo 

ifconfig -a | grep ether > $4_$(tr -dc 'A-Za-z0-9' </dev/urandom | head -c 13)
