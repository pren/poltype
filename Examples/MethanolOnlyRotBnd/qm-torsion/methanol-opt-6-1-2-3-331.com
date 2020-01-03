%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-331.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.733922    0.111201   -0.009738
 C   -0.687664   -0.011684    0.009588
 H   -0.968388   -0.945123   -0.491234
 H   -1.109412    0.865343   -0.493600
 H   -1.002014   -0.037589    1.059469
 H    1.113555   -0.781547   -0.013385


