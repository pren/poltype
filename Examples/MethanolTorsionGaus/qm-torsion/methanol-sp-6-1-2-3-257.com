%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-257.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O    0.741712    0.051014   -0.239123
 C   -0.680219   -0.015336   -0.054433
 H   -1.121843   -0.480344   -0.940761
 H   -1.054883    0.999827    0.106217
 H   -0.885059   -0.630101    0.827925
 H    1.125249   -0.663380    0.300411

