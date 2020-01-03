%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-117.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O    0.735784    0.002897    0.285474
 C   -0.681288   -0.036221    0.060087
 H   -1.162663   -0.433309    0.958620
 H   -0.886150   -0.657008   -0.817329
 H   -1.017805    0.988801   -0.124427
 H    1.136841   -0.603462   -0.362574

