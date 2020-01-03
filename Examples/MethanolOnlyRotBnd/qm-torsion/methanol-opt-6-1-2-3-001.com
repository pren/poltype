%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-001.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.734240    0.110929   -0.008012
 C   -0.687757   -0.012061    0.009082
 H   -0.954511   -1.074774    0.026095
 H   -1.081563    0.492862   -0.879933
 H   -1.048140    0.480316    0.919684
 H    1.116431   -0.780572   -0.013816


