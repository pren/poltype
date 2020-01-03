%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-271.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB

methanol Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 O   -0.732733   -0.096245    0.166553
 C    0.683907    0.014308    0.034501
 H    0.969816   -0.414093   -0.932639
 H    1.143864   -0.516766    0.875133
 H    0.949554    1.077453    0.069477
 H   -1.134229    0.701161   -0.213025

