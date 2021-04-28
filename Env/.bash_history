clear
rm -rf code.*
ls
cd Documents/Research/AlVer-HonggFuzz/
rm -rf ../AlVer-Templates/
rm -rf ../AlVer-Templates
ls
cd ../
ls
cd AlVer-HonggFuzz/
clear
cd processing/
python3 template.py 
python3 template.py "n c" 39 "0 0"
python3 template.py "z1 z2 z3 x m n" 20 "0 0 0 0 0"
python3 template.py "z1 z2 z3 x m n" 22 "0 0 0 0 0"
python3 template.py "n c" 40 "0 0"
python3 template.py "c" 36 "0 0"
python3 template.py "c n v1 v2 v3" 61 "0 0 0 0 0"
python3 template.py "c n v1 v2 v3" 62 "0 0 0 0 0"
python3 template.py "c x1 x2 x3 y z" 74 "0 0 0 0 0 0"
python3 template.py "i x y" 77 "0 0 0"
python3 template.py "i x y" 79 "0 0 0"
clear
cd Documents/Research/code2inv/code2inv/prog_generator/results/
./removeRedundent.sh 
cd ../../../
cd scripts/
./compile.sh 
cd Documents/Research/code2inv/scripts/
cat compile_results.csv | grep "fuzz_spec" | grep "Passed" | wc -l 
nano getSolved.sh
chmod a+x getSolved.sh 
./getSolved.sh 
cd Documents/Research/code2inv/code2inv/prog_generator/results/
./removeRedundent.sh 
clear
cd ../../../
cd scripts/
nano getSolved.sh 
./getSolved.sh 
./removeRedundent.sh 
rm -rf *_fuzz_spec.txt
cd ../
rm -rf *.txt *.TXT *.fuzz
./init.sh 
cd Documents/Research/code2inv/
cd scripts/
./benchmark_fuzz_spec.sh 
cd Documents/Research/code2inv/scripts/
CLEAR
clear
cd ../code2inv/prog_generator/results/
./removeRedundent.sh 
cd ../
clear
cd ../../scripts/
nano getSolved.sh 
./getSolved.sh 
nano getSolved.sh 
./getSolved.sh 
nano getSolved.sh 
./getSolved.sh 
nano getSolved.sh 
./getSolved.sh 
cd Documents/Research/code2inv/code2inv/prog_generator/results/
./removeRedundent.sh 
clear
cd ../../../
cd scripts/
./compile.sh 
clear
./getSolved.sh 
zip RQ2_Examples_ALVER.zip -r .
mkplot.py -l --legend prog_alias -t 500 -b png --save-to examples/cactus.png AlVer_Benchmark_Results\ -\ CE-Cactus.csv 
python3 mkplot.py -l -t 500 -b png --save-to examples/cactus.png AlVer_Benchmark_Results\ -\ CE-Cactus.csv 
mkplot.py -l -p scatter -b png --save-to examples/scatter.png --shape squared -t 1000 --ylog --ymax 10000 --ymin 0.1 --xlog AlVer_Benchmark_Results\ -\ CE-Cactus.csv 
python3 mkplot.py -l -p scatter -b png --save-to examples/scatter.png --shape squared -t 1000 --ylog --ymax 10000 --ymin 0.1 --xlog AlVer_Benchmark_Results\ -\ CE-Cactus.csv 
cat AlVer_Benchmark_Results\ -\ CE-Cactus.csv 
code .
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
python3 parseback.py 
cd ../
mkplot.py -l --legend prog_alias -t 1000 -b png --save-to counterexamples_generated.png AlVer/*.json
python3 mkplot.py -l --legend prog_alias -t 1000 -b png --save-to counterexamples_generated.png AlVer/*.json
python3 parseback.py 
cd AlVer/
python3 parseback.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 1000 -b png --save-to counterexamples_generated.png AlVer/dataset/*.json
python3 mkplot.py -l --legend prog_alias -t 200 -b png --save-to counterexamples_generated.png AlVer/dataset/*.json
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to counterexamples_generated.png AlVer/dataset/*.json
python3 mkplot.py -l --legend prog_alias -t 75 -b png --save-to counterexamples_generated.png AlVer/dataset/*.json
cd AlVer/
python3 parseback.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 75 -b png --save-to counterexamples_generated_solved.png AlVer/dataset/*.json
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to counterexamples_generated_solved.png AlVer/dataset/*.json
cd ./AlVer/
python3 parseback.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to counterexamples_generated_Z3_solved.png AlVer/dataset/*.json
clear
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_spec.sh 
clear
cd Documents/Research/code2inv/code2inv/prog_generator/results/
./removeRedundent.sh 
cd ../
cd ../../
cd scripts/
clear
./compile.sh 
./getSolved.sh 
zip CS23A_Assign_6.zip Assign_6_Instructions.pdf 
exit
nano Sample.md
mv Sample.md Assign_6_Instructions.md
exit
sudo rm -rf *
./compile.sh 
nano alver_data.json
python3 parseback.py 
ls
history | grep "mkplot"
cd ../
clear
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to counterexamples_generated_Z3_solved.png AlVer/dataset/*.json
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to counterexamples_generated_Z3_solved.png AlVer/dataset/data_*.json
cd AlVer/
python3 parseback.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to counterexamples_generated_Z3_solved.png AlVer/dataset/data_*.json
cd AlVer/
python3 parseback.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to cexs_gen_Z3_linear_solved.png AlVer/dataset/data_*.json
cd AlVer/
python3 parseback.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to cexs_gen_Z3_non_linear_solved.png AlVer/dataset/data_*.json
cd AlVer/
python3 parseback.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to cexs_gen_hongg_20_10_solved.png AlVer/dataset/data_*.json
cd AlVer/
python3 parseback.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to cexs_gen_hongg_10_12_solved.png AlVer/dataset/data_*.json
nano alver_data_z3lin.json
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
rm -rf *.TXT *.txt *.fuzz results/*_fuzz_spec.txt models/*.txt 
clear
./shift.sh 
cd Documents/Research/code2inv/scripts/
clear
./benchmark_rq2_runs.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd benchmarks/modified_C/
cd c_smt2/
ls
chmod a+rwx *
sudo chmod a+rwx *
ls
mv *.smt ../../C_instances/c_smt2
cd ../
cd c_graph/
mv *.json ../../C_instances/c_graph/
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
docker start code2inv-prod
docker attach code2inv-prod
chmod 777 *
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
docker start code2inv-prod
docker attach code2inv-prod 
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd Documents/Research/code2inv
./scripts/check.sh 39 "( n <= n || ( n >= ( n + 1 ) && c < ( c * 1 ) ) || c <= ( 1 + c ) )"
docker start code2inv-prod 
docker attach code2inv-prod 
cd ../../
cd Research/AlVer-HonggFuzz/
clear
cd processing/
cd ../../
cd code2inv/
./scripts/check.sh 39 "( n <= n || ( n >= ( n + 1 ) && c < ( c * 1 ) ) || c <= ( 1 + c ) )"
cd ../AlVer-HonggFuzz/
cd processing/
clear
python3 template.py "x y" nl-1 "0 0"
python3 template.py "x y" nl-2 "0 0"
python3 template.py "x y" nl-3 "0 0"
python3 template.py "x y z" nl-4 "0 0 0"
python3 template.py "x z w" nl-5 "0 0 0"
python3 template.py "x y z w" nl-6 "0 0 0"
python3 template.py "x y z w" nl-7 "0 0 0"
exit
cd Documents/Research/code2inv/
./runner.sh nl-2 c_spec
./runner.sh nl-2 c_nl_spec
cd Documents/Research/code2inv/
clear
docker start 
emacs
exit
cd benchmarks/modified_C/
clear
cd ../../../
cd code2inv/
clear
./runner.sh nl-1 c_nl_spec
clear
./runner.sh nl-1 c_nl_spec
cd scripts/
chmod a+x single_nl_rq2.sh 
./single_nl_rq2.sh nl-1clear
Cclear
clear
./single_nl_rq2.sh nl-1 20 8
clear
./single_nl_rq2.sh nl-1 20 8
cd ../
./scripts/check.sh nl-1 "( x >= ( y * 1 ) && y > ( 1 * x ) )"
cd scripts/
./single_nl_rq2.sh nl-1 2 20
cd ../
cd scripts/
clear
./single_nl_rq2.sh nl-1 10 20
clear
./single_nl_rq2.sh nl-1 10 20
clear
./single_nl_rq2.sh nl-1 10 20
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cat candidates_nl-1_c_nl_mod_spec.txt | sort | uniq
cat candidates_nl-1_c_nl_mod_spec.txt | sort | uniq | wc -l 
cd ../../../
cd scripts/
chmod a+x getCandidatesLogs.sh 
watch -n 5 ./getCandidatesLogs.sh && cat getCandidates.log
fg
./getCandidatesLogs.sh 
watch -n 5 ./getCandidatesLogs.sh
watch -n 1 ./getCandidatesLogs.sh
cd Documents/Research/code2inv/
./scripts/check.sh nl-1 "((y > 0) && (y * y) >= x)"
./scripts/check.sh nl-1 "((x >= 0) && (y >= 0) && (y * y) >= x)"
./scripts/check.sh nl-1 "((x > 0) && (y > 0) && (y * y) >= x)"
./scripts/check.sh nl-1 "((y > 0) && (y * y) >= x)"
nano getCandidatesLogs.sh
chmod a+x getCandidatesLogs.sh 
./getCandidatesLogs.sh 
ls
cat getCandidates.log 
cat getCandidates.log | sort
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd Documents/Research/code
cd Documents/Research/code2inv/
./scripts/check.sh nl-6 "( ( w == d && x <= 1 ) || z >= ( y + w ) )"
./scripts/check.sh nl-6 "( ( ( w == z * y )  && x <= 1 ) || z >= ( y + w ) )"
./scripts/check.sh nl-6 "( ( w == 1 && w >= ( y * 1 ) ) || ( z == 1 && w <= ( z * w ) ) )"
cd processing/
python3 template.py "x y z w d" nl-6 "0 0 0 0 0"
python3 template.py "x y z w" nl-6 "0 0 0 0"
cd Documents/Research/code2inv/
./scripts/check.sh nl-6 "( z < ( x * x ) )"
clear
nano code.c
gcc code.c -o code.out
./code.out 
gcc code.c -o code.out
./code.out 
nano code.c
./code.out 
gcc code.c -o code.out
./code.out 
nano code.c
gcc code.c -o code.out
./code.out 
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
./code.out 
nano code.c
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
./code.out 
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
./code.out 
nano code.c
gcc code.c -o code.out
./code.out 
nano code.c
gcc code.c -o code.out
./code.out 
nano code.c
gcc code.c -o code.out
./code.out 
nano code.c
gcc code.c -o code.out
./code.out 
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
./code.out 
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
nano code.c
gcc code.c -o code.out
./code.out 
gcc code.c -o code.out
nano code.c
rm -rf code.c code.out 
ls
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd Documents/Research/code2inv/
./scripts/check.sh nl-6 "( z <= ( y * 1 ) || ( z <= ( y + 1 ) && x <= ( y * 1 ) ) || ( y > w && y <= 1 ) )"
./scripts/check.sh nl-6 "( z < ( x + x ) )"
./getCandidatesLogs.sh nl-6 fuzz
./getCandidatesLogs.sh nl-6 fuzz_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh nl-6 fuzz_nl_mod_spec
clear
docker start code2inv-prod
docker attach code2inv-prod
cd Documents/Research/code2inv/scripts/
clewar
clear
watch -n 1 ./getCandidatesLogs.sh 
watch -n 0.5 ./getCandidatesLogs.sh 
watch -n 0.5 ./getCandidatesLogs.sh nl-1 c_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh nl-1 fuzz_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh nl-1 c_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh nl-1 fuzz_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh nl-6 c_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh nl-6 fuzz_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh nl-6 c_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh
watch -n 0.5 ./getCandidatesLogs.sh nl-6
watch -n 0.5 ./getCandidatesLogs.sh nl-6 c_nl_mod_spec
clear
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
rm -rf *.txt *.TXT *.fuzz candidates/* models/* 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./getSolved.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./getSolved.sh 
cd scripts/
./getSolved.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
conda activate base
./getSolved.sh 
cd  ../
docker start code2inv-prod
docker attach code2inv-prod
clear
watch -n 0.5 ./getCandidatesLogs.sh nl-6 fuzz_nl_mod_spec
cd Documents/Research/code2inv/scripts/
watch -n 0.5 ./getCandidatesLogs.sh nl-6 fuzz_nl_mod_spec
watch -n 0.5 ./getCandidatesLogs.sh nl-1 fuzz_nl_mod_spec
./single_nl_rq2.sh nl-6 10 100
pkill honggfuzz
clear
./single_nl_rq2.sh nl-6 10 10
pkill honggfuzz
clear
./single_nl_rq2.sh nl-6 10 25
./single_nl_rq2.sh nl-1 10 25
cd OOPSLA_DATA_ALVER/mkplot/AlVer/
python3 timeplots.py 
cd ../
history | python3 mkploy
history | grep "python3 mkplot"
python3 mkplot.py -l --legend prog_alias -t 500 -b png --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 750 -b png --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 600 -b png --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 500 -b png --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 cexplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 100 -b png --save-to solved_instance_cexs.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 50 -b png --save-to solved_instance_cexs.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 40 -b png --save-to solved_instance_cexs.png AlVer/dataset/cex_*.json
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
clear
cd scripts/
./getSolved.sh 
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
clear
./dryRun.sh 20 20
CLEAR
clear
cd ../../../
clear
./runner.sh 20 fuzz_spec
clear
./runner.sh 20 fuzz_spec
clear
./runner.sh 20 fuzz_spec
clear
cd Documents/Research/code2inv/
./runner.sh 20 fuzz_spec
clear
cd Documents/Research/code2inv/
docker start code2inv-prod
docker attach code2inv-prod 

./runner-mod.sh 20 fuzz_spec
./runner.sh 20 fuzz_spec
./scripts/check.sh 20 "( n >= ( 0 * x ) || m >= 0 )"
docker attach code2inv-prod 
./scripts/check.sh 20 "( n >= ( 0 * x ) || m >= 0 )"
docker start code2inv-prod
docker attach code2inv-prod 
cd Documents/Research/code2inv/
./runner-mod.sh 20 fuzz_spec
./runner.sh 20 fuzz_spec
docker start code2inv-prod 
docker attach code2inv-prod 
./runner-mod.sh 20 fuzz_spec
clear
./runner-mod.sh 20 fuzz_spec
./scripts/check.sh 20 "( m >= ( n - n ) && x >= ( 0 * x ) )"
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
rm -rf *_fuzz_spec.txt
rm -rf *_fuzz_nl_spec.txt
./removeRedundent.sh 
docker start code2inv-prod 
docker attach code2inv-prod 
clear
cd Documents/Research/code2inv/
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 " ( ( c >= 0 && c < ( 1 * n ) ) )"
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "( c < ( 0 * 1 ) || n >= ( c + 1 ) )"
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "(c < (n * n))"
./runner-mod.sh 40 fuzz_spec
func(c, n)
./scripts/check.sh 40 "( c >= ( n * 0 ) && n > ( 0 * c ) )"
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "( c >= ( n * 0 ) && n > ( 0 * c ) ) "
./runner-mod.sh 40 fuzz_spec
clear
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "( c < ( 0 * 1 ) || n >= ( c + 1 ) )"
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "( ( c <= 0 || c <= ( 0 - 0 ) ) && ( c < ( c + c ) || c == ( 0 * 1 ) ) && c < n )"
./runner-mod.sh 40 fuzz_spec
( ( c >= 0 && c < ( 1 * n ) ) ) 
./scripts/check.sh 40 "( ( c >= 0 && c < ( 1 * n ) ) ) "
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "( ( c == 0 || n < ( c - 1 ) ) )"
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "( ( c > ( 0 + 1 ) && c < 1 ) || ( c <= ( c + 1 ) && n >= ( c + 1 ) ) )"
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "( ( c > ( 0 + 1 ) && c < 1 ) || ( c <= ( c + 1 ) && n >= ( c + 1 ) ) )"
./runner-mod.sh 40 fuzz_spec
./scripts/check.sh 40 "( ( c >= 0 && c < ( 1 * n ) ) )     "
./scripts/check.sh 40 "( ( c >= 0 && c < ( 1 * n ) ) )"
./scripts/check.sh 40 "( ( c >= 0 && c > ( 1 * n ) ) )"
CLEAR
clear
./runner.sh 20 fuzz_spec
./scripts/check.sh 20 "( ( m <= ( x + m ) && x <= ( x + m ) ) )"
./runner.sh 20 fuzz_nl_spec
./runner.sh 40 fuzz_nl_spec
./scripts/check.sh 40 "( c < ( n + 0 ) || ( n == pow ( n , 1 ) && c < pow ( c , 0 ) ) )"
./scripts/check.sh 40 "( c < ( n + 0 ) || ( n == n && c < c ) )"
./runner.sh 40 fuzz_nl_spec
./scripts/check.sh 40 "( n >= ( n * 0 ) && ( n >= ( c * 0 ) || n == ( n + 0 ) ) )"
./runner.sh 40 fuzz_nl_spec
clear
./runner.sh 40 fuzz_nl_spec
./scripts/check.sh 40 "( ( c == 0 && n >= 1 ) )"
./runner.sh 40 fuzz_nl_spec
./scripts/check.sh 40 "( c < n )"
./runner.sh 77 fuzz_spec
clear
./runner.sh 77 fuzz_spec
./runner-mod.sh 77 fuzz_spec
This is for networking with Nishant.
./scripts/check.sh 77 "( ( x > ( y * y ) && x >= 0 ) || x == ( i - x ) || y < ( 0 + i ) )"
./runner-mod.sh 77 fuzz_spec
chmod a+x script.sh 
./script.sh 
clear
./script.sh 
./scripts/check.sh 40 "( ( n > c * c ) && c == ( 0 - 0 ) )"
time ./runner.sh 40 fuzz_nl_spec
time ./runner-mod.sh 40 fuzz_nl_spec
mkdir adaline
cd adaline/
nano main.c
gcc main.c 
ls
./a.out 
ls
cat ADALINE.txt 
cd ../
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
rm -rf *.txt *.TXT *.fuzz
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./removeRedundent.sh 
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_spec.sh 5 8 
./getSolved.sh 
./benchmark_fuzz_spec.sh 25 8
clear
./getSolved.sh 5 8
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./clean.sh 
rm -rf results_*
clear
exit
cd Documents/Research/code2inv/code2inv/prog_generator/results
rm -rf *_fuzz
rm -rf *_fuzz*
clear
cd ../
ls 
ls -al
nano clean.sh 
chmod a+x ./clean.sh 
./clean.sh 
nano clean.sh 
./clean.sh 
ls 
./clean.sh 
ls 
nano clean.sh 
./clean.sh 
./getCandidatesLogs.sh 
cd ../../../
cd code2inv/scripts/
cleart
clear
./getSolved.sh 
./getSolved.sh 5 8
./benchmark_fuzz_spec.sh 25 8
clear
cd ../
git push origin almost-ver
cd Documents/Research/
rm -rf .git
clear
cd code2inv/
clear
git push origin master
git add remote almost-ver https://github.com/lahiri-phdworks/code2inv.git
git remote add almost-ver https://github.com/lahiri-phdworks/code2inv.git
git pull origin master
git remote -v
git push almost-ver
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
ls -al | wc -l
nano array.sh
chmod a+x array.sh 
./array.sh 
nano array.sh
./array.sh 
nano array.sh
./array.sh 
nano array.sh
./array.sh 
nano array.sh
./array.sh 
nano array.sh
./array.sh 
nano array.sh
./array.sh 
nano array.sh
./array.sh 
nano array.sh
./array.sh 
nano array.sh
rm -rf array.sh 
clear
exot
exit
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_spec.sh 
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh 
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh | wc -l
./benchmark_fuzz_spec.sh
./benchmark_fuzz_spec.sh 20 8
clear
./benchmark_fuzz_spec.sh
CLEAR
clear
./benchmark_fuzz_spec.sh
clear
exit
cd Documents/Research/code2inv/
./scripts/check.sh 141 "( ( y < square ( i2 ) && i >= ( 50000 - 50000 ) ) )"
./scripts/check.sh 141 "( ( y < ( i2 * i2 ) && i >= ( 50000 - 50000 ) ) )"
./scripts/check.sh 140 "( ( y < ( i2 * i2 ) && i >= ( 50000 - 50000 ) ) )"
cd Documents/Research/code2inv/
./scripts/check.sh 141 ""
./scripts/check.sh 141 "( ( i <= 1 ) && ( n <= ( ( ( n ) * ( n + 1 ) * ( 2 * n + 1 ) ) / ( 6 ) ) ) )"
./scripts/check.sh 140 "( ( i <= 1 ) && ( n <= ( ( ( n ) * ( n + 1 ) * ( 2 * n + 1 ) ) / ( 6 ) ) ) )"
./scripts/check.sh 140 "( ( i >= 1 ) && ( sum >= ( ( ( n ) * ( n + 1 ) * ( 2 * n + 1 ) ) / ( 6 ) ) ) )"
./scripts/check.sh 140 "( ( i >= 1 ) && ( n > 0 ) && ( sum >= ( ( ( n ) * ( n + 1 ) * ( 2 * n + 1 ) ) / ( 6 ) ) ) )"
./scripts/check.sh 140 "( ( i >= 1 ) && ( n >= 1 ) && ( sum >= ( ( ( n ) * ( n + 1 ) * ( 2 * n + 1 ) ) / ( 6 ) ) ) )"
./scripts/check.sh 140 "( ( i >= 1 ) && ( n >= 1 ) && ( sum <= ( ( ( n ) * ( n + 1 ) * ( 2 * n + 1 ) ) / ( 6 ) ) ) )"
./scripts/check.sh 140 "( ( i >= 1 ) && ( n >= 1 ) && ( sum < ( ( ( n ) * ( n + 1 ) * ( 2 * n + 1 ) ) / ( 6 ) ) ) )"
./scripts/check.sh 142 "( ( i >= 1 ) && ( n >= 1 ) && ( sum < ( ( ( n ) * ( n + 1 ) * ( 2 * n + 1 ) ) / ( 6 ) ) ) )"
cd code2inv/prog_generator/fuzz/
./dryRun.sh 140 50
./dryRun.sh 141 50
./dryRun.sh 142 50
cd Documents/Research/code2inv/
./scripts/check.sh 140 "(n >= 0 && i >= 0 && sum == (n * (n + 1) * ( 2 * n + 1 )) / 6)"
./scripts/check.sh 140 "(n >= 0 && i >= 0 && sum >= (n * (n + 1) * ( 2 * n + 1 )) / 6)"
./scripts/check.sh 140 "(n >= 0 && i >= 0 && sum <= (n * (n + 1) * ( 2 * n + 1 )) / 6)"
./scripts/check.sh 141 "(n >= 0 && i >= 0 && sum <= (n * (n + 1) * ( 2 * n + 1 )) / 6)"
./scripts/check.sh 142 "(n >= 0 && i >= 0 && sum <= (n * (n + 1) * ( 2 * n + 1 )) / 6)"
./scripts/check.sh 142 "(sum <= (n * (n + 1) * ( 2 * n + 1 )) / 6)"
./scripts/check.sh 142 "(sum == y)"
cd processing 
python3 template.py "q d n r" 143 "0 0 0 0"
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
rm -rf *.txt
rm -rf *.TXT
rm -rf *.fuzz
rm -rf ../*.smt2
clear
./clean.sh 
cd Documents/Research/code2inv/
./scripts/check.sh 142 "((n >= 0 && sum > 0) || (n < 0 && sum >= 0))"
./scripts/check.sh 142 "((n >= 0 && sum >= 0) || (n < 0 && sum >= 0))"
./scripts/check.sh 142 "((n > 0 && sum >= 0) || (n < 0 && sum >= 0))"
./scripts/check.sh 142 "((n > 0 && sum >= 0) || (n <= 0 && sum >= 0))"
./scripts/check.sh 142 "((n > 0 && sum >= 0) && (n <= 0 && sum >= 0))"
./scripts/check.sh 142 "((n > 0 && sum >= 0) || (n <= 0 && sum >= 0))"
./runner.sh 142 c_nl_spec
./runner.sh 143 c_nl_spec
./scripts/check.sh 140 "(n > 0 && i >= 0 && i <= n && sum == (i * (i + 1) * ( 2 * i + 1 )) / 6)"
( ( q > 1 || n > ( 1 * q ) ) && ( r < ( d + d ) || r >= ( 1 + q ) ) && ( n < ( q * q ) || n < ( q - 1 ) ) )
./scripts/check.sh 143 "( ( q > 1 || n > ( 1 * q ) ) && ( r < ( d + d ) || r >= ( 1 + q ) ) && ( n < ( q * q ) || n < ( q - 1 ) ) )"
./scripts/check.sh 140 "(n > 0 && i >= 0 && i <= n && sum == (i * (i + 1) * ( 2 * i + 1 )) / 6)"
./scripts/check.sh 140 "i <= n && sum == (i * (i + 1) * ( 2 * i + 1 )) / 6)"
./scripts/check.sh 140 "((i <= n) && sum == (i * (i + 1) * ( 2 * i + 1 )) / 6))"
./scripts/check.sh 140 "((i <= n) && (sum == (i * (i + 1) * ( 2 * i + 1 )) / 6)))"
./scripts/check.sh 140 "(i <= n && sum == (i * (i + 1) * ( 2 * i + 1 )) / 6)"
./scripts/check.sh 140 "( i <= n ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 )) / 6 )"
./scripts/check.sh 140 
./scripts/check.sh 140 "( ( i <= n ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 )) / 6 ) )"
( ( ( sum <= y ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 ) ) / 6 ) ) || ( ( ( i <= n ) && ( n == ( i * ( i + 1 ) * ( 2 * i + 1 ) ) / 6 ) ) && ( ( y <= sum ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 ) ) / 6 ) ) ) )
./scripts/check.sh 140 "( ( ( sum <= y ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 ) ) / 6 ) ) || ( ( ( i <= n ) && ( n == ( i * ( i + 1 ) * ( 2 * i + 1 ) ) / 6 ) ) && ( ( y <= sum ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 ) ) / 6 ) ) ) )"
clear
./scripts/check.sh 140 "( ( ( ( n == n ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 ) ) / 6 ) ) && ( ( y < n ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 ) ) / 6 ) ) ) )"
./scripts/check.sh 140 "( ( i <= n ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 )) / 6 ) )"
cd code2inv/prog_generator/fuzz/include/
clear
watch -n tail -n 1 140.h
watch -n 1 tail -n 1 140.h
clear
watch -n 1 tail -n 1 140.h
watch -n 1 tail -n 1 141.h
cd ../
clear
./dryRun.sh 
./dryRun.sh 141
./dryRun.sh 141 20
watch -n 1 tail -n 1 141.h
cd include/
watch -n 1 tail -n 1 141.h
watch -n 1 tail -n 1 140.h
watch -n 1 tail -n 1 142.h
watch -n 1 tail -n 1 143.h
clear
watch -n 1 tail -n 1 143.h
watch -n 1 tail -n 1 140.h
exit
docker start code2inv-prod 
docker attach code2inv-prod 
docker start code2inv-prod 
docker attach code2inv-prod 
exit
cd ../
clear
chmod a+x batch.sh 
clear
./batch.sh 
chmod a+x batch.sh 
clear
./batch.sh 
clear
./batch.sh 
clear
./batch.sh 
clear
./batch.sh 
clear
./batch.sh 
clear
./batch.sh 
clear
time ./runner.sh 140 fuzz_spec
clear
time ./runner.sh 140 fuzz_spec
cclear
clear
time ./runner.sh 140 fuzz_func_spec
clear
time ./runner.sh 140 fuzz_func_spec
clear
time ./runner.sh 140 fuzz_func_spec
clear
time ./runner.sh 141 fuzz_func_spec
time ./runner.sh 141 
time ./runner.sh 141 fuzz_func_spec
clear
time ./runner.sh 141 fuzz_func_spec
clear
time ./runner.sh 141 fuzz_func_spec
time ./runner.sh 140 fuzz_func_spec
time ./runner.sh 140 fuzz_spec
time ./runner.sh 140 fuzz_lin_spec
time ./runner.sh 140 fuzz_spec
time ./runner.sh 140 fuzz_func_spec
clear
./runner.sh 143 fuzz_spec
./runner.sh 140 fuzz_spec
clear
./runner.sh 140 fuzz_spec
./runner.sh 140 fuzz_func_spec
clear
./runner.sh 140 fuzz_func_spec
clear
./runner.sh 140 fuzz_func_spec
clear
./runner.sh 140 fuzz_func_spec
exit
clear
cd code2inv/prog_generator/fuzz/include/
watch -n 1 cat 140
watch -n 1 cat 140.h 
exit
cd processing/
python3 template.py "i n out" 141.c "0 0 0"
python3 template.py "i n out" 141 "0 0 0"
cd code2inv/prog_generator/
./clean.sh 
exit
cd Documents/Research/code2inv/
clear
docker start code2inv-prod 
docker attach code2inv-prod 
exit
cd ../
./dryRun.sh 
./dryRun.sh 141
./dryRun.sh 14120
./dryRun.sh 141 20
./dryRun.sh 141 75
clear
exit
ls -al 
ls -al | wc -l
clear
cd Documents/Research/code2inv/
cd code2inv/prog_generator/fuzz/
./dryRun.sh 141 75
clear
rm -rf *.txt *.TXT *.fuzz
clear
./dryRun.sh 141 75
exit
ls -al
cd ../
cd Documents/Research/code2inv/scripts/
clear
chmod a+x getRQ4stats.sh 
./getRQ4stats.sh 
cd Documents/Research/code2inv/scripts/
./getRQ4stats.sh 
docker start code2inv-prod 
docker attach code2inv-prod 
cd Documents/Research/code2inv/
docker start code2inv-prod 
docker attach code2inv-prod 
cd scripts/
watch -n 5 cat results_final.txt
python3 seaborn_heatmap.py 
cd Documents/Research/code2inv/
cd scripts/
./getRQ4stats.sh 
cd Documents/Research/code2inv/
./runner.sh 140 fuzz_sum_spec
clear
python3 time_heatmap.py 
python3 solved_egsx_heatmap.py 
python3 time_heatmap.py 
python3 solved_egsx_heatmap.py 
python3 time_heatmap.py 
./scripts/check.sh 141 "(n > 2) && (i <= n) && && out == i"
./scripts/check.sh 141 "(n > 2) && (i <= n) && out == i"
./scripts/check.sh 140 "((i <= n) && sum == (i * (i + 1) * ( 2 * i + 1 )) / 6))"
./scripts/check.sh 140 "(i <= n) && (sum == (i * (i + 1) * ( 2 * i + 1 )) / 6))"
./scripts/check.sh 140 "( ( i <= n ) && ( sum == ( i * ( i + 1 ) * ( 2 * i + 1 )) / 6 ) )"
./scripts/check.sh 141 "((n > 2) && (i <= n) && (out == i))"
./scripts/check.sh 141 "((n > 2) && (i <= n) && (out == (i * (i + 1)) / 2 ))"
./scripts/check.sh 141 "((n > 2) && (i <= n) && (out == i))"
./scripts/check.sh 141 "((n > 2) && (i <= n) && (out == (i * (i + 1)) / 2 ))"
./scripts/check.sh 141 "((n > 2) && (i <= n) && (out == i))"
./scripts/check.sh 141 "((n > 2) && (i <= n) && (out == (i * (i + 1)) / 2 ))"
./scripts/check.sh 141 "((n > 2) && (i <= n) && (out == i)) || ((n > 2) && (i <= n) && (out == (i * (i + 1)) / 2 ))"
exit
cd Documents/Research/code2inv/
docker start code2inv-prod 
docker attach code2inv-prod 
cd code2inv/prog_generator/fuzz/
clear
./dryRun.sh 140 75
./dryRun.sh 79 75
cd ../../../
./scripts/check.sh 140 "i <= n && sum == (i * (i + 1) * ( 2 * i + 1 )) / 6)"
./scripts/check.sh 140 "(i <= n && sum == (i * (i + 1) * ( 2 * i + 1 )) / 6))"
docker start code2inv-prod 
docker attach code2inv-prod 
exit
cd Documents/Research/code2inv/
./runner.sh 140 
./runner.sh 140 fuzz_sum_spec
clear
./runner.sh 140 fuzz_sum_spec
./runner.sh 141 fuzz_sum_spec
./runner.sh 72 fuzz_spec
./runner.sh 79 fuzz_spec
./runner.sh 40 fuzz_spec
./runner.sh 79 fuzz_spec
./runner.sh 140 fuzz_sum_spec
clear
exit
cd Documents/Research/code2inv/
clear
./scripts/check.sh 79 "( y <= ( x + y ) && i <= ( 1 + 0 ) )"
python3 solved_egsx_heatmap.py 
cd plots/
python3 solved_egsx_heatmap.py 
python3 time_heatmap.py 
cd Documents/Research/code2inv/scripts/
./getRQ4stats.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
rm -rf *.txt *.TXT *.fuzz ../*.smt2
python3 solved_egsx_heatmap.py 
cd plots/
python3 solved_egsx_heatmap.py 
cd plots/
python3 solved_egsx_heatmap.py 
cd Documents/Research/code2inv/scripts/
clear
./getRQ4stats.sh 
cd Documents/Research/code2inv/
cd scripts/
./benchmark_fuzz_z3.sh 
clear
./benchmark_fuzz_z3.sh 
clear
gitk
git log
git stash
git apply stash
git pop
git stash pop
cd plots/
python3 percent_solved_correct.py 
python3 solved_instances.py 
python3 percent_solved_correct.py 
python3 time_heatmap.py 
clear
python3 process_z3_logs.py z3_models_50_8.log 
clear
python3 process_z3_logs.py z3_models_50_8.log 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
python3 process_z3_logs.py z3_models_50_8.log 
cd processing/
python3 process_z3_logs.py z3_models_50_8.log 
python3 process_z3_logs.py z3_models_single_50_8.log 
python3 process_z3_logs.py z3_models_single_100_8.log 
python3 process_z3_logs.py z3_models_100_8.log 
rm -rf *_fuzz_spec.txt
ls -al | wc -l
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./getRQ4stats.sh 
cd Documents/Research/code2inv/
./runner.sh 141 fuzz_isprime_spec
clear
./runner.sh 141 fuzz_isprime_spec
cd code2inv/prog_generator/fuzz/
./dryRun.sh 141 80
cd ../../../
clear
./runner.sh 141 fuzz_isprime_spec
clear
./runner.sh 141 fuzz_isprime_spec
clear
./runner.sh 141 fuzz_isprime_spec
clear
./runner.sh 141 fuzz_isprime_spec
clear
docker start code2inv-prod 
docker attach code2inv-prod 
clear
./runner.sh 141 fuzz_isprime_spec
clear
./runner.sh 141 fuzz_isprime_spec
clear
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_z3.sh 
clear
CLEAR
clear
./benchmark_fuzz_z3.sh 
clear
cd Documents/Research/code2inv/code2inv/prog_generator/results
rm -rf *_fuzz_spec.txt
ls -al | wc -l
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/

./getSolved.sh 50 8
./getSolved.sh 20 8
./getSolved.sh 100 8
chmod a+x getFailedCases.sh 
./getFailedCases.sh 
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getFailedCases.sh 
python3 getFailed.py 
./getFailedCases.sh 
python3 getFailed.py 
./getFailedCases.sh 
python3 getFailed.py 
./getFailedCases.sh 
python3 getFailed.py 
./getFailedCases.sh 
python3 getFailed.py 
./getFailedCases.sh 
python3 getFailed.py 
./getFailedCases.sh 
python3 getFailed.py 
cd Documents/Research/code2inv/
./runner.sh 11 fuzz_spec
./scripts/check.sh 11 "( x > ( x * y ) && ( y < ( 10 + y ) || x >= ( x + 0 ) ) )"
./runner.sh 11 fuzz_spec
./runner.sh 35 fuzz_spec
./scripts/check.sh 35 "( ( c < ( 40 - 40 ) || c == ( c - 1 ) ) && ( c == ( c * 1 ) || c > ( 40 * 40 ) ) && c >= ( c + 0 ) )"
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./clean.sh 
git stash pop
chmod a+x *
chmod a+x */**
sudo chmod a+x */**
git stash pop
git add .
git commit -am "New Files"
git stash pop
git add .
git stash pop
rm -rf ../../code2inv/prog_generator/models/z3_c_nl_spec_model_143.txt
git stash pop
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_z3.sh 
cd Documents/Research/code2inv/
clear
./runner.sh 11 fuzz_spec 
clear
./runner.sh 12 fuzz_spec
./runner.sh 11 fuzz_spec 
./clean.sh
cd Documents/Research/code2inv/
clear
./runner.sh 11 fuzz_spec
clear
./runner.sh 11 fuzz_spec
./scripts/check.sh 11 "( y > ( x * y ) || y <= ( y + x ) )"
./runner.sh 11 fuzz_spec
./scripts/check.sh 11 "( ( x >= ( 20 - x ) && y >= ( x - y ) ) || x < ( 20 + y ) || ( x == y && x >= ( x - x ) ) )"
./runner.sh 11 fuzz_spec
./scripts/check.sh 11 " ( x <= ( 10 + y ) )"
./runner.sh 11 fuzz_spec
./runner.sh 12 fuzz_spec
./scripts/check.sh 12 "( ( y > ( x - 20 ) && x < ( 20 + y ) ) || ( y < ( x + x ) && y == ( x + 0 ) ) || y > ( 20 + x ) )"
./runner.sh 13 fuzz_spec
CLEAR
vlear
clear
exit
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./clean.sh 
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_z3.sh 
cd scripts/
./getSolved.sh 
cd ../code2inv/prog_generator/results/
./removeRedundent.sh 
cd ../../../scripts/
./getSolved.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getFailedCases.sh 
python3 getFailed.py 
./getFailedCases.sh 
python3 getFailed.py 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getFailedCases.sh 
python3 getFailed.py 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" >> failed.log
python3 getFailed.py 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed"
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" >> failed.log 
python3 getFailed.py 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" >> failed.log 
python3 getFailed.py 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" >> failed.log 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" | awk '{ print $1 }'>> failed.log 

tr ',' '\n' < failed.log
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" | awk '{ print $1 }'>> failed.log 
tr ", " 
tr ", " "\n"
tr ", " "\n" < failed.log 
tr ", " " " < failed.log 
cd scripts/
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" | awk '{ print $1 }'>> failed.log 
cat CSVs/compile_results_10_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" | awk '{ print $1 }'>> failed.log 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" | awk '{ print $1 }'>> failed.log 
cat CSVs/compile_results_10_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" | awk '{ print $1 }'>> failed.log 
cat CSVs/compile_results_20_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" | awk '{ print $1 }'>> failed.log 
cat CSVs/compile_results_10_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed" | awk '{ print $1 }'>> failed.log 
cat CSVs/compile_results_10_8.csv | grep "fuzz_spec" | grep "Yes" | grep "Failed"
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getRQ4stats.sh 
code /
code .
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getSolved.sh 10 8
cat CSVs/compile_results_10_8.csv | grep "fuzz_spec" | grep "Failed" | grep "Yes"
./getSolved.sh 10 8
./removeRedundent.sh 
cd scripts/
./getSolved.sh 
nano epochs_log.txt
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_z3.sh 
clear
./benchmark_fuzz_z3.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getSolved.sh 
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd ../code2inv/prog_generator/results/
./removeRedundent.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
python3 timeplots.py 
history | grep "python3 mkplot"
python3 mkplot.py -l --legend prog_alias -t 300 -b png --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd ../
python3 mkplot.py -l --legend prog_alias -t 300 -b png --save-to solved_instance_time.png AlVer/dataset/time_*.json
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd AlVer/
python3 timeplots.py 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./clean.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd AlVer/
python3 timeplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 300 -b png --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b png --xmin=0 --xmax=60 -save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b png -xmin=0 -xmax=60 -save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b png -save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=60 --xmin=0 --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=57 --xmin=0 --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=57 --xmin=0 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=57 --xmin=0 --xlabel="Solved" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=57 --xmin=0 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 AlVer/timeplots.py 
cd AlVer/
python3 timeplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=57 --xmin=0 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=300 --xmin=0 --ymin=0 --ymax=60 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=300 --xmin=0 --ymin=0 --ymax=60 --ylabel="Solved Instances" --xlabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b png --xmax=300 --xmin=0 --ymin=0 --ymax=60 --ylabel="Solved Instances" --xlabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_spec.sh 
clear
pkill honggfuzz
clear
./benchmark_fuzz_spec.sh 
./getSolved.sh 20 8
cd ../code2inv/prog_generator/results
rm -rf *_c_nl_spec.txt
./removeRedundent.sh 
ls -al
ld
ls
clear
cd ../../../
cd scripts/
./getSolved.sh 20 8
cd ../
./scripts/check.sh 45 "( c < ( 0 * 1 ) || n >= ( c + 1 ) )"
./scripts/check.sh 65 "( ( y == ( 0 + 1 ) && y > ( x * 1 ) ) || y > 0 || x < ( 1 + 1 ) )"
clear
cd scripts/
./benchmark_fuzz_spec.sh 
clear
./benchmark_fuzz_spec.sh 
cd ../
cd AlVer/
python3 timeplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=300 --xmin=0 --ymin=0 --ymax=60 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b png --xmax=300 --xmin=0 --ymin=0 --ymax=60 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b png --xmax=300 --xmin=0 --ymin=0 --ymax=60 --ylabel="Solved Instances" --xlabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b svg --xmax=300 --xmin=0 --ymin=0 --ymax=60 --ylabel="Solved Instances" --xlabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=300 --xmin=0 --ymin=0 --ymax=60 --ylabel="Solved Instances" --xlabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=60 --xmin=0 --ymin=0 --ymax=300 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getSolved.sh 20 8 
./getSolved.sh 10 8
./getSolved.sh 20 8
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_spec.sh 
clear
pkill honggfuzz
clear
./benchmark_fuzz_spec.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./clean.sh 
cd Documents/Research/code2inv/
clear
./runner.sh 140 fuzz_spec
clear
./runner.sh 140 fuzz_sum_spec
clear
./runner.sh 140 fuzz_sum_spec
clear
./runner.sh 141 fuzz_isprime_spec
clear
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_spec.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getSolved 10 8
./getSolved.sh 10 8
./getSolved.sh 20 8
cd Al
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd AlVer/
python3 timeplots.py 
cd ../ 
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=60 --xmin=0 --ymin=0 --ymax=300 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 timeplots.py 
cd ../ 
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=60 --xmin=0 --ymin=0 --ymax=300 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 timeplots.py 
cd ../ 
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=60 --xmin=0 --ymin=0 --ymax=300 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 timeplots.py 
cd ../ 
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=60 --xmin=0 --ymin=0 --ymax=300 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
exit
./clean.sh 
cd benchmarks/src/
rm -rf *copy.c
cd Documents/Research/code2inv/scripts/
./benchmark_fuzz_spec.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getSolved.sh 10 8 
./getSolved.sh 20 8 
CLEAR
clear
cd ../
cd code2inv/prog_generator/
./clean.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
clear
ls -al | awk '{ print $1 }'
ls -al | awk '{ print $2 }'
ls -al | awk '{ print $3 }'
ls -al | awk '{ print $4 }'
ls -al | awk '{ print $5 }'
ls -al | awk '{ print $6 }'
ls -al | awk '{ print $7 }'
ls -al | awk '{ print $8 }'
ls -al | awk '{ print $9 }'
ls -al | awk '{ print $9 }' | tr ".c" "\n"
ls -al | awk '{ print $9 }' | tr ".c" " "
ls -al | awk '{ print $9 }' | tr ".c" "\t"
ls -al | awk '{ print $9 }' | tr ".c" "."
ls -al | awk '{ print $9 }' | tr ".c" " " | tr "\n" "\t"
ls -al | awk '{ print $9 }' | tr ".c" " " | tr "\n" " "
clear
ls -al | awk '{ print $9 }' | tr ".c" " " | tr "\n" " "
clear
cd ../../../
cd ../
cd scripts/
./benchmark_fuzz_spec.sh 
./benchmark_fuzz_spec.sh | wc -l
clear
EXIT
exit
wc -l
ls -al | wc -l 
ls -al | sort | uniq
python3 template.py "i size sn" 118 "0 0 0"
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd AlVer/
python3 models_time.py 
cd ../
history | python3 mkplot
history | grep "python3 mkplot"
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=10000 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=300 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=400 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=310 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getSolved.sh Z3 single
clear
git status
nano z3_single_extra.log
nano code.c
gcc code.c 
./a.out 
clear
cd Documents/Research/code2inv/
./runner.sh 141 fuzz_isprime_spec
./runner.sh 141 fuzz_isprime_spec/
./runner.sh 141 fuzz_isprime_spec
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
rm -rf *copy.c
cd processing/
python3 template.py "x y" 91 "0 0"
cd Documents/Research/code2inv/
./runner.sh 140 fuzz_sum_spec
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
clear
./getSolved.sh 20 8 32
ls -al | wc -l
exit
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd AlVer/
clear
history | grep "time*.json"
history | grep "mkplot"
python3 mkplot.py -l --legend prog_alias -t 320 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=320 --xlabel="# Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd ../
python3 mkplot.py -l --legend prog_alias -t 320 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=320 --xlabel="# Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 timeplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 320 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=320 --xlabel="# Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 320 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=320 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 320 -b pdf --xmax=100 --xmin=10 --ymin=-10 --ymax=320 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 cexplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=50 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 70 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=70 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 100 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=100 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 150 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=150 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 50 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=50 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
cd AlVer/
python3 cexplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=50 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getSolved.sh 10 8 extra
./getSolved.sh 20 8 extra
./getSolved.sh 10 8 full
./getSolved.sh 20 8 full
./getSolved.sh z3 single full
./runner.sh 131 c_nl_spec
cd Documents/Research/code2inv/
./runner.sh 131 c_nl_spec
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
ls -al | wc -l
cd Documents/Research/code2inv/
clear
cd scripts/
clear
./benchmark_fuzz_z3.sh 
clear
./benchmark_fuzz_z3.sh 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
cd scripts/
./getSolved.sh z3 single new
cd Documents/Research/code2inv/
cd scripts/
./benchmark_fuzz_z3.sh 
exit
cd AlVer/
python3 timeplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 320 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=320 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 timeplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 320 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=320 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 400 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=400 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 500 -b pdf --xmax=96 --xmin=0 --ymin=0 --ymax=500 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 timeplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 500 -b pdf --xmax=96 --xmin=0 --ymin=0 --ymax=500 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 600 -b pdf --xmax=96 --xmin=0 --ymin=0 --ymax=600 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 550 -b pdf --xmax=96 --xmin=0 --ymin=0 --ymax=550 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 cexplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 50 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=50 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 45 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=45 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
cd Documents/Research/code2inv/
cd scripts/
./benchmark_fuzz_spec.sh 
clear
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
clear
cd AlVer/
python3 timeplots.py 
python3 cexplots.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 45 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=45 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 550 -b pdf --xmax=96 --xmin=0 --ymin=0 --ymax=550 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
cd AlVer/
python3 models_time.py 
cd ../
history | grep "models_time.py"
history | grep "achar_"
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=310 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
cd AlVer/
pyhton3 models_time.py 
python3 models_time.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 300 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=310 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 400 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=400 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 500 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=500 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 500 -b pdf --xmax=35 --xmin=0 --ymin=0 --ymax=500 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 550 -b pdf --xmax=32 --xmin=0 --ymin=0 --ymax=500 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
cd AlVer/
python3 models_time.py 
cd ../
python3 mkplot.py -l --legend prog_alias -t 550 -b pdf --xmax=32 --xmin=0 --ymin=0 --ymax=500 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 550 -b pdf --xmax=25 --xmin=0 --ymin=0 --ymax=550 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 600 -b pdf --xmax=30 --xmin=0 --ymin=0 --ymax=600 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 600 -b pdf --xmax=25 --xmin=0 --ymin=0 --ymax=600 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to models_time.pdf AlVer/dataset/achar_time_*.json
python3 mkplot.py -l --legend prog_alias -t 600 -b pdf --xmax=96 --xmin=0 --ymin=0 --ymax=600 --xlabel="Solved Instances" --ylabel="Time (secs)" --save-to solved_instance_time.png AlVer/dataset/time_*.json
python3 mkplot.py -l --legend prog_alias -t 80 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=80 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
python3 mkplot.py -l --legend prog_alias -t 60 -b pdf --xmax=100 --xmin=0 --ymin=0 --ymax=60 --xlabel="Solved Instances" --ylabel="Counter Examples" --save-to solved_instance_counterexamples.png AlVer/dataset/cex_*.json
zip -r achar_experiments.zip Achar\ Experimental\ Data/
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
clear
chmod a+x check_all.sh 
./check_all.sh 2
./check_all.sh 1
git add .
git commit -am "Pending Changes"
git push origin master
git lfs install
git install lfs
lfs
git lfs track "*.zip"
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
git lfs
lfs
git add .gitattributes
nano .gitattributes
git add .
mv achar_experiments.zip achar_data.zip
git add .
git stash pop
git stash
git add .
git commit -am "Running Changes"
git push origin master
cd build/
clear
make -j 12
sudo make install 
clear
exit
cd build/
make -j 12
make -j 12\
make -j 12
sudo make install 
make -j 12
sudo make install 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./run.sh example3
./run.sh example4
./run.sh example3
python3 postprocess/reader.py ./example3_klee_out/conds_dump.txt example3
./run.sh example3
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
./run.sh example3
sudo snap install todoist
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
clewar
cleart
clewar
clear
cleaer
clear
./run.sh example4
./run.sh example5
clear
./run.sh example5
cd postprocess/
python3 z3write.py 
python3 z3write.py ../example5_processed/example5_paths.json 
python3 z3write.py ../example5_processed/example5_processed.json 
python3 z3write.py ../example5_processed/example5_paths.json 
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
clear
python3 estimate_example5/candidates.py 
python3 estimate_example5/candidates.py 5
clear
python3 estimate_example5/candidates.py 5
./run.sh example5
python3 postprocess/z3write.py example5_processed/example5_paths.json > estimate_example5/paths.py
./run.sh example5
python3 postprocess/z3write.py example5_processed/example5_paths.json > estimate_example5/paths.py
python3 estimate_example5/candidates.py 5
./run.sh example5
python3 postprocess/z3write.py example5_processed/example5_paths.json > estimate_example5/paths.py
python3 estimate_example5/candidates.py 5
./run.sh example5
python3 postprocess/z3write.py example5_processed/example5_paths.json > estimate_example5/paths.py
./run.sh example5
clear
./run.sh example5
python3 postprocess/z3write.py example5_processed/example5_paths.json estimate_example5/paths.py 
python3 postprocess/z3write.py example5_processed/example5_paths.json > estimate_example5/paths.py 
./run.sh example5
python3 estimate_example5/candidates.py 5
python3 estimate_example5/candidates.py 100
clear
./run.sh example5
python3 postprocess/z3write.py example5_processed/example5_paths.json > estimate_example5/paths.py
python3 estimate_example5/candidates.py 
python3 estimate_example5/candidates.py 20
clear
python3 estimate_example5/candidates.py 20
python3 estimate_example5/candidates.py 30
./run.sh example4
python3 estimate_example5/executeCV.py 
python3 estimate_example5/executeCV.py inputs
clear
python3 estimate_example5/candidates.py 1
python3 estimate_example5/candidates.py 2
python3 estimate_example5/candidates.py 3
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 3
python3 estimate_example5/candidates.py 50
clear
python3 estimate_example5/executeCV.py inputs
exit
cd Documents/Research/PSE-Program-Examples/
clear
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 10
python3 estimate_example5/candidates.py 20
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 2
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 2
python3 estimate_example5/candidates.py 4
python3 estimate_example5/candidates.py 5
python3 estimate_example5/candidates.py 10
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 15
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 15
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 15
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 15
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 25
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 25
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt
cd ../../
clear
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt
cd ../../
cd estimate_example5/outputs/
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt
cd ../../
python3 estimate_example5/candidates.py 15
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt
cat *txt | sort 
cat *txt
cat *txt | sort 
cd ../../
python3 estimate_example5/executeCV.py inputs
python3 estimate_example5/candidates.py 15
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/candidates.py 15
python3 estimate_example5/candidates.py 30
python3 estimate_example5/candidates.py 50
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd Documents/Research/PSE-Program-Examples/
python3 estimate_example5/candidates.py 25
python3 estimate_example5/candidates.py 15
python3 estimate_example5/candidates.py 20
python3 estimate_example5/candidates.py 15
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
python3 estimate_example5/candidates.py 50
cd ../../
python3 estimate_example5/candidates.py 50
python3 estimate_example5/candidates.py 25
python3 estimate_example5/candidates.py 30
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
cd ../../
python3 estimate_example5/candidates.py 15
python3 estimate_example5/candidates.py 20
python3 estimate_example5/candidates.py 15
python3 estimate_example5/executeCV.py inputs
cd estimate_example5/outputs/
cat *txt | sort 
docker ps -a
xrandr
xinput
xinput map-to-output 21 HDMI-0
xinput map-to-output 21 HDMI-1-1
cat App.js
nano App.js 
mkdir WebApp
mkdir Docker-Examples
cd Docker-Examples/
clear
docker run 
ls -al 
docker run -it -v $PWD:/examples ubuntu 
docker ps 
docker ps -a
docker rm 983f5668d188
docker ps -a
nano example.Dockerfile 
docker build 
docker build -f example.Dockerfile .
docker pull nodejs
docker pull mongo
docker run -name mymongo -it -v $PWD:/data mongo
docker run --name mymongo -it -v $PWD:/data mongo
cd ../
cd Documents/Research/code2inv/
clear
docker start code2inv-prod
docker ps -a
docker attach code2inv-prod 
CD ~
cd ~
cd WebApp/
clear
npx create-react-app 
npx create-react-app myapp
cd myapp/
npm start
CD ../
cd ../
mkdir backend
express 
chrome 
google-chrome
code .
history
which perf
apt install linux-tools-$(uname -r) linux-tools-generic
sudo apt install linux-tools-$(uname -r) linux-tools-generic
CLEAR
clear
git clone https://github.com/mavam/libbf.git
cd libbf/
CXX=clang++ ./configure
make -j 12
CXX=g++ ./configure
make -j 12
make test
sudo make install 
cd ../
nano code.cpp
g++ code.cpp 
cd libbf/
make clean 
sudo make clean
CXX=clang++ ./configure --prefix=/usr/bin
CXX=g++ ./configure --prefix=/usr/bin
make -j 12
make test
sudo make install 
make test
cd ../
g++ code.cpp 
clear
rm -rf code.cpp 
ls
cd build/
cmake ..
make -j 12
make test
cd ../
rm -rf libbf/
ls
git clone https://github.com/mavam/libbf.git
cd libbf/
./configure 
make -j 12
make test
cd ../
git clone https://github.com/alabid/countminsketch.git
rm -rf libbf/
git clone https://github.com/mavam/libbf.git
cd libbf/
./configure --prefix=/usr/include/
make -j 12
sudo make install 
sudo make clean 
./configure --prefix=/usr/
make -j 12
sudo make install 
make test
cd ../
which iostream
clear
nano code.cpp
g++ code.cpp 
g++ -I/usr/include/bf code.cpp 
clear
cd libbf/
./configure 
make clean 
cd build
make clean 
ls
cd ../
cd libbf/
make clean 
sudo make clean 
./configure 
make -j 6
make test
CXX=clang++ ./configure
make 
./configure 
make 
make -j 4
./configure 
make -j 4
make test
cd build/
cmake ...
cmake ..
cd ../
make clean 
sudo make clean 
cd build/
cmake ..
make -j 4
make test
cd ../
configure
make install 
sudo make install 
./configure 
make -j 12
sudo make install 
make test
cd ../
ls
g++ code.cpp
g++ code.cpp -l/usr/local/lib/libbf.so
g++ code.cpp -l/usr/local/lib/libbf.so 
g++ code.cpp -L/usr/local/lib/libbf.so 
g++ code.cpp -llibbf
g++ code.cpp -L/usr/local/lib/libbf.so -llibbf
g++ code.cpp -o code.out -L/usr/local/lib/libbf.so -llibbf
g++ code.cpp -o code.out /usr/local/lib/libbf.a 
g++ code.cpp -o code.out /usr/local/lib/libbf.a -lz -llibbf
g++ code.cpp -I/usr/local/include/bf-o code.out /usr/local/lib/libbf.a -lz -llibbf
g++ code.cpp -I/usr/local/include/bf -o code.out /usr/local/lib/libbf.a -lz -llibbf
g++ code.cpp -I/usr/local/include/bf/ -o code.out /usr/local/lib/libbf.a -lz -llibbf
g++ code.cpp -I/usr/local/include/bf -o code.out /usr/local/lib/libbf.a -lz -llibbf
nano code.cpp
find bf.h /
find bf.h /usr/local
find bf.h ./libbf/
cd libbf/
ls
cd bf/
ls
cd ../../
/usr/local/bf/
/usr/local/include/bf/
ls /usr/local/include/bf/
ls /usr/local/include/bf/bloom_filter
nano code.cpp 
g++ code.cpp
rm -rf libbf
ls
git clone https://github.com/mavam/libbf.git
cd libbf/
make 
./configure
make -j 12
make test
make install 
sudo make install /
sudo make install 
cd ../
code code.cpp
g++ code.cpp 
g++ code.cpp -o code.out -llibbf
g++ code.cpp -o code.out -L/usr/local/lib/libbf.so
g++ code.cpp -o code.out -L/usr/local/lib/libbf.so -llibbf
g++ code.cpp -o code.out -L/usr/local/lib/libbf.so 
g++ code.cpp -o code.out -L/usr/local/lib/libbf.so -L/usr/local/lib/libbf.a
clear
g++ code.cpp -o code.out
objdump code.out

g++ code.cpp -o code.out -lbf
clewar
clear
./code.out 
clear
rm -rf code.cpp
sudo make install 
cd build/
sudo make install 
cd ../../../
cd ha-useast-service/
cd Documents/Research/PSE-Program-Examples/Q
cd Documents/Research/PSE-Program-Examples/
g++ example_hyperloglog.cpp 
cd ../../../
cd datasketches/
cd build/
cmake ..
cd ../
cd build 
make clean 
cd ../
cmake 
cmake .
ls
rm -rf CMakeFiles  CMakeLists.txt 
ls
cd build/
cmake ..
cd ../
rm -rf datasketches/
g++ example_hyperloglog.cpp 
clear
g++ example_hyperloglog.cpp 
cd build/
cmake ..
make -j 12
make test
sudo make install 
cd ../
rm -rf datasketches/
git clone https://github.com/apache/datasketches-cpp
cd datasketches-cpp/
cd build/
ls
cmake .. 
make -j 4
make test
sudo make install 
cmake --build build --config Release
cd ../
cmake --build build --config Release
cmake --build build --config Release --target test
ls
nano code.cpp
cd hll/
ls
cd ../
g++ code.cpp 
code .
cd build/
make test
cmake ..
make -j 12
sudo apt-get update
sudo apt-get upgrade
code .
source /home/ha-useast-service/anaconda3/bin/activate
conda activate base
g++ BaseTest.cpp 
cd ../
cd include/
g++ BaseTest.cpp 
sensors
sudo apt install indicator-multiload
sensors
clear
watch -n 5 sensors
sudo apt-get update
sudo apt-get upgrade
cd Documents/Research/PSE-Program-Examples/
CLEAR
clear
./run.sh example1
./run.sh example2
./run.sh example
./run.sh example1
clear
./run.sh example1
./run.sh example2
./run.sh example3
./run.sh example5
sensors
clear
sensors
clear
sensors
clear
sensors
clear
sensors
clear
