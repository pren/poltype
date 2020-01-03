%RWF=/scratch/bdw2292/Gau-methylamine/,20GB
%Nosave
%Chk=methylamine-opt.chk
%Mem=5GB
%Nproc=4
#P opt=(maxcycle=500) HF/6-311G* freq Guess=INDO MaxDisk=20GB SCRF=(PCM)

methylamine Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 N   -0.715400    0.000000    0.000000
 C    0.715400    0.000000    0.000000
 H    1.106900    0.091600    1.017400
 H    1.099600    0.834900   -0.593000
 H    1.099600   -0.927400   -0.434500
 H   -1.062500    0.856400    0.429400
 H   -1.062500   -0.766100    0.575300


