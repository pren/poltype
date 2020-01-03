%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-089.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744314    0.116300    0.001945
 C   -0.684988   -0.010008   -0.000305
 H   -1.028846   -0.063233    1.036905
 H   -0.959308   -0.905373   -0.566298
 H   -1.097715    0.879022   -0.487293
 H    1.099863   -0.790503   -0.000433


