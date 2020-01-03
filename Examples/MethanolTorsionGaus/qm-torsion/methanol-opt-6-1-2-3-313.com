%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-313.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.743702    0.117599   -0.008398
 C   -0.685076   -0.010972    0.006216
 H   -0.977942   -0.747885   -0.747730
 H   -1.122423    0.971843   -0.192384
 H   -0.980097   -0.358274    1.001499
 H    1.099236   -0.789303   -0.008812


