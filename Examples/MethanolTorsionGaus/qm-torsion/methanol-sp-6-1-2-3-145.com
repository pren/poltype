%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-145.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O    0.743554    0.076371   -0.204434
 C   -0.678789   -0.010822   -0.034148
 H   -1.077033    1.003009    0.067053
 H   -0.893784   -0.621446    0.847998
 H   -1.092987   -0.489455   -0.927125
 H    1.123871   -0.696276    0.250538

