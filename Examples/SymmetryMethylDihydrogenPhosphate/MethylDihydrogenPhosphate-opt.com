%RWF=/scratch/bdw2292/Gau-MethylDihydrogenPhosphate/,100GB
%Nosave
%Chk=MethylDihydrogenPhosphate-opt.chk
%Mem=20GB
%Nproc=4
#P opt=(maxcycle=400) wB97X-D/6-31G* Guess=INDO MaxDisk=100GB

MethylDihydrogenPhosphate Gaussian OPT Calculation on bme-nova.bme.utexas.edu

0 1
 P    0.510800    0.049700   -0.008500
 O   -0.905700    0.829100   -0.093600
 O    0.391800   -1.088600   -1.150800
 O    0.379400   -0.789100    1.367700
 O    1.724000    0.928200   -0.101900
 C   -2.100200    0.070800   -0.013000
 H   -2.950000    0.753700   -0.092900
 H   -2.158500   -0.448900    0.946600
 H   -2.151600   -0.648800   -0.833800
 H    1.169800   -1.655700   -1.338500
 H    1.158900   -1.284500    1.697800

