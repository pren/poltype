%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-313.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O    0.749763    0.128715    0.072359
 C   -0.677654    0.000456    0.007690
 H   -0.936990   -0.579600   -0.883107
 H   -1.113844    1.003331   -0.017212
 H   -1.007545   -0.529499    0.906891
 H    1.111166   -0.761771   -0.086696

