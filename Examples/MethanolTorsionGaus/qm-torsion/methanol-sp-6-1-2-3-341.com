%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-341.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O   -0.742263    0.062984   -0.222869
 C    0.678996   -0.013289   -0.038118
 H    0.890701   -0.630034    0.840551
 H    1.067099    1.003036    0.076605
 H    1.106802   -0.479982   -0.930990
 H   -1.126147   -0.680983    0.274859

