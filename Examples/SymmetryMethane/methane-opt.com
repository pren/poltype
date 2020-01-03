%RWF=/scratch/bdw2292/Gau-methane/,100GB
%Nosave
%Chk=methane-opt.chk
%Mem=700MB
%Nproc=1
#P opt=(maxcycle=400) MP2/6-31G* Guess=INDO MaxDisk=100GB

methane Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 C    1.065700   -0.025700   -0.070900
 H    0.701600    0.529100   -0.938400
 H    0.701600   -1.054300   -0.117600
 H    0.701600    0.448200    0.843300
 H    2.157900   -0.025700   -0.070900


