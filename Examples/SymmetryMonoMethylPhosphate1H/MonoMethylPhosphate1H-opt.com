%RWF=/scratch/bdw2292/Gau-MonoMethylPhosphate1H/,150GB
%Nosave
%Chk=MonoMethylPhosphate1H-opt.chk
%Mem=100GB
%Nproc=4
#P opt=(maxcycle=400) wB97XD/6-31G* Guess=INDO MaxDisk=150GB SCRF=(PCM)

MonoMethylPhosphate1H Gaussian OPT Calculation on node37.bme.utexas.edu

-1 1
 H   -0.277600    1.217300   -1.418200
 O    0.487900    1.222900   -0.838900
 P    0.514200    0.000400   -0.059600
 O   -0.919500   -0.004000    0.761500
 O    1.562000   -0.005500    1.049400
 O    0.486600   -1.277600   -0.893000
 C   -2.129900   -0.000100    0.021500
 H   -2.188600    0.898400   -0.597700
 H   -2.967800   -0.003900    0.722800
 H   -2.188500   -0.892000   -0.607400

