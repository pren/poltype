%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-117.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744642    0.116005    0.001555
 C   -0.685189   -0.010564   -0.000460
 H   -1.071412    0.425575    0.925491
 H   -0.949745   -1.068380   -0.091288
 H   -1.067488    0.542515   -0.864125
 H    1.103510   -0.789364    0.000361


