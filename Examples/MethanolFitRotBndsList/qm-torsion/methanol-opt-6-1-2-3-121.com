%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-121.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.734842    0.109367    0.003294
 C   -0.687559   -0.010003   -0.001063
 H   -1.071665    0.490577    0.894626
 H   -0.957146   -1.071934   -0.021867
 H   -1.055289    0.488689   -0.905269
 H    1.114817   -0.783095    0.000179


