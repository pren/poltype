%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-173.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744042    0.116712    0.001894
 C   -0.684931   -0.009914   -0.001626
 H   -1.120300    0.985559    0.125366
 H   -0.977375   -0.689469    0.804541
 H   -0.982279   -0.428269   -0.968503
 H    1.098052   -0.790799    0.002748


