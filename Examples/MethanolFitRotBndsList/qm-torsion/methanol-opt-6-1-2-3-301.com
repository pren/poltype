%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-301.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.733486    0.111790   -0.012839
 C   -0.687585   -0.011545    0.010851
 H   -0.999949   -0.576648   -0.874588
 H   -1.114095    0.997416    0.027578
 H   -0.961265   -0.555022    0.922865
 H    1.110808   -0.782090   -0.014167


