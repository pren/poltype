%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-151.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.734550    0.109679    0.003438
 C   -0.687464   -0.009615   -0.001931
 H   -1.101971    0.867639    0.506847
 H   -0.965546   -0.943167    0.500152
 H   -1.012313   -0.033012   -1.048668
 H    1.111944   -0.784024    0.001863


