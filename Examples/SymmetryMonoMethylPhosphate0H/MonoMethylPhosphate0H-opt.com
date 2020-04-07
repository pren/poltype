%RWF=/scratch/bdw2292/Gau-MonoMethylPhosphate0H/,150GB
%Nosave
%Chk=MonoMethylPhosphate0H-opt.chk
%Mem=100GB
%Nproc=8
#P opt=(maxcycle=400) wB97XD/6-31G* Guess=INDO MaxDisk=150GB SCRF=(PCM)

MonoMethylPhosphate0H Gaussian OPT Calculation on node37.bme.utexas.edu

-2 1
 P    0.514200    0.000400   -0.059600
 O   -0.919500   -0.004000    0.761500
 O    1.562000   -0.005500    1.049400
 O    0.486500    1.286800   -0.879700
 O    0.486600   -1.277600   -0.893000
 C   -2.129900   -0.000100    0.021500
 H   -2.188600    0.898400   -0.597700
 H   -2.967800   -0.003900    0.722800
 H   -2.188500   -0.892000   -0.607400

