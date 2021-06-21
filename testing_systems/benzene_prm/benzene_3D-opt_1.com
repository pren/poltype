%RWF=/home/daniele/PSI4_sctatch/Gau-benzene_3D/,100GB
%Nosave
%Chk=benzene_3D-opt_1.chk
%Mem=700MB
%Nproc=8
#P opt=(ModRedundant,maxcycles=400,Loose) MP2/6-31G* MaxDisk=100GB 

benzene_3D Gaussian OPT Calculation on daniele-Precision-5750

0 1
 C    1.214300   -0.603500    0.010600
 C    1.126400    0.772200   -0.022800
 C    0.097400   -1.411500    0.034200
 C   -0.097100    1.406500   -0.034100
 C   -1.124200   -0.772400    0.022800
 C   -1.215100    0.600300   -0.010500
 H    2.204900   -1.078000    0.018800
 H    2.016300    1.394200   -0.041100
 H    0.177000   -2.503200    0.060700
 H   -0.183000    2.496600   -0.060500
 H   -2.019600   -1.395900    0.041100
 H   -2.197300    1.094700   -0.019200

