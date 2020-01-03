%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-341.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744180    0.117079   -0.006860
 C   -0.685251   -0.011360    0.005643
 H   -0.954738   -1.017685   -0.328927
 H   -1.106689    0.759326   -0.646386
 H   -1.024769    0.140922    1.035004
 H    1.103174   -0.788298   -0.008478


