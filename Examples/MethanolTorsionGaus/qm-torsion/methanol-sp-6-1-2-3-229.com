%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-229.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O    0.740178    0.036333    0.255684
 C   -0.680568   -0.018218    0.057994
 H   -1.043726    0.998832   -0.116598
 H   -1.135048   -0.469786    0.944759
 H   -0.883439   -0.639983   -0.819892
 H    1.127515   -0.645187   -0.322262

