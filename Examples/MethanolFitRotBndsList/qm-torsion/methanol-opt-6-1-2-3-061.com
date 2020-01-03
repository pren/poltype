%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-061.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.734435    0.109371    0.002687
 C   -0.687186   -0.008544    0.000749
 H   -0.989889   -0.548418    0.905070
 H   -0.988544   -0.534603   -0.912123
 H   -1.099932    1.006776    0.008166
 H    1.107716   -0.786181   -0.003849


