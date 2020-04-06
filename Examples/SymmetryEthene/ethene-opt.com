%RWF=/scratch/bdw2292/Gau-ethene/,100GB
%Nosave
%Chk=ethene-opt.chk
%Mem=700MB
%Nproc=1
#P opt=(maxcycle=400) wB97X-D/6-31G* Guess=INDO MaxDisk=100GB

ethene Gaussian OPT Calculation on bme-nova.bme.utexas.edu

0 1
 C   -0.667200    0.000000    0.000000
 C    0.667200    0.000000    0.000000
 H   -1.221300   -0.929000    0.070800
 H   -1.221200    0.929000   -0.070800
 H    1.221300    0.929000   -0.070800
 H    1.221300   -0.929000    0.070800

