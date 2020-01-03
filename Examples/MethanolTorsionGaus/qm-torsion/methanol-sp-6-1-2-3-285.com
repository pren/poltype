%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-285.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O    0.749346    0.123773   -0.095592
 C   -0.678253   -0.000534   -0.025346
 H   -1.023266   -0.536971   -0.914279
 H   -1.109423    1.002638    0.040915
 H   -0.925210   -0.572852    0.874623
 H    1.111157   -0.754624    0.119731

