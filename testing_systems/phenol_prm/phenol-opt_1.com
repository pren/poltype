%RWF=/home/daniele/PSI4_sctatch/Gau-phenol/,100GB
%Nosave
%Chk=phenol-opt_1.chk
%Mem=700MB
%Nproc=8
#P opt=(ModRedundant,maxcycles=400,Loose) MP2/6-31G* MaxDisk=100GB 

phenol Gaussian OPT Calculation on daniele-Precision-5750

0 1
 H   -1.665300   -2.086800    0.006500
 C   -1.051400   -1.176200    0.005500
 C   -1.694200    0.044500    0.029000
 H   -2.775900    0.095900    0.047800
 C   -0.910800    1.181400    0.027600
 H   -1.354400    2.160600    0.045200
 C    0.458000    1.103400    0.003700
 H    1.110400    1.987000    0.001900
 C    1.114700   -0.111800   -0.019900
 C    0.326700   -1.241900   -0.018400
 H    0.818300   -2.208900   -0.036600
 O    2.483200   -0.250200   -0.044400
 H    3.140700    0.503100   -0.047700

