%RWF=/home/daniele/PSI4_sctatch/Gau-benzene_3D/,100GB
%Nosave
%Chk=benzene_3D-dma_temp.chk
%Mem=700MB
%Nproc=8
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB 

benzene_3D Gaussian SP Calculation on daniele-Precision-5750

0 1
 C    1.255271   -0.608727    0.010578
 C    1.155255    0.782552   -0.023146
 C    0.100658   -1.392195    0.033736
 C   -0.100453    1.392244   -0.033737
 C   -1.155285   -0.782374    0.023142
 C   -1.255471    0.608461   -0.010572
 H    2.233619   -1.082240    0.018792
 H    2.055151    1.392143   -0.041171
 H    0.179144   -2.475781    0.060007
 H   -0.179677    2.475823   -0.059996
 H   -2.054739   -1.392502    0.041171
 H   -2.233211    1.083028   -0.018813



