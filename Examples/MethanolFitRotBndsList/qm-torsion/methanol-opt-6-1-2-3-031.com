%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-031.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.734042    0.111076   -0.006875
 C   -0.687555   -0.011344    0.008906
 H   -0.956682   -0.930732    0.541103
 H   -1.039719   -0.020863   -1.028631
 H   -1.085282    0.861547    0.539219
 H    1.112897   -0.781985   -0.014422


