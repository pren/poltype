%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-181.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.734161    0.110270    0.004662
 C   -0.687389   -0.009485   -0.003574
 H   -1.111487    1.000507   -0.019374
 H   -0.991806   -0.570657    0.887118
 H   -0.972081   -0.555465   -0.910708
 H    1.109201   -0.784570    0.005176


