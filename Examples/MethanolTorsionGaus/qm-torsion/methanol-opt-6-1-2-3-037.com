%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-037.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.743907    0.117322   -0.005560
 C   -0.685077   -0.010934    0.005670
 H   -0.956799   -0.868130    0.629094
 H   -1.029449   -0.132217   -1.025641
 H   -1.099158    0.907211    0.433933
 H    1.100086   -0.789251   -0.009492


