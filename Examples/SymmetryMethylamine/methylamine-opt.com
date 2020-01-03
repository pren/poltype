%RWF=/scratch/bdw2292/Gau-methylamine/,100GB
%Nosave
%Chk=methylamine-opt.chk
%Mem=700MB
%Nproc=1
#P opt=(maxcycle=400) MP2/6-31G* Guess=INDO MaxDisk=100GB

methylamine Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 N   -0.715400    0.000000    0.000000
 C    0.715400    0.000000    0.000000
 H    1.106900    0.091600    1.017400
 H    1.099600    0.834900   -0.593000
 H    1.099600   -0.927400   -0.434500
 H   -1.062500    0.856400    0.429400
 H   -1.062500   -0.766100    0.575300


