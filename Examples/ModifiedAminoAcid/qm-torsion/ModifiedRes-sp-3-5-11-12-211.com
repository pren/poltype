%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-sp-3-5-11-12-211.chk
%Mem=20GB
%Nproc=6
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB Pop=NBORead

ModifiedRes Rotatable Bond SP Calculation on g2-node38.bme.utexas.edu

0 1
 C    2.776522   -1.443342    0.205931
 O    3.170217   -1.021997   -0.887597
 N    1.573497   -1.083492    0.739363
 H    1.414551   -1.255240    1.727854
 C    0.644230   -0.197873    0.019134
 H    0.779460   -0.405275   -1.052710
 C    0.999906    1.277307    0.288145
 O    0.446076    1.871673    1.214029
 H   -0.881089   -1.555681    0.759518
 H   -1.082469    0.126446    1.299472
 C   -0.804527   -0.510671    0.453259
 S   -1.946013   -0.171280   -0.950315
 C   -3.428719   -0.418391   -0.157262
 N   -4.475263   -0.585721    0.373793
 N    1.947366    1.809054   -0.528189
 H    3.376580   -2.116180    0.838301
 H    2.480880    1.189577   -1.132431
 H    2.211462    2.775416   -0.389866

