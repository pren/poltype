%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-211.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.734290    0.110366    0.005380
 C   -0.687624   -0.010388   -0.004986
 H   -1.095912    0.852902   -0.541919
 H   -1.032907   -0.053342    1.034035
 H   -0.949126   -0.937808   -0.528033
 H    1.112879   -0.782830    0.008323


