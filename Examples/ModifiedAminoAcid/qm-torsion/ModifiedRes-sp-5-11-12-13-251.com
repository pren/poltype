%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-sp-5-11-12-13-251.chk
%Mem=20GB
%Nproc=6
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB Pop=NBORead

ModifiedRes Rotatable Bond SP Calculation on g2-node38.bme.utexas.edu

0 1
 C    1.495596    1.925443   -1.028419
 O    1.953477    2.335228    0.044198
 N    0.829785    0.739921   -1.139681
 H    0.570463    0.417983   -2.067658
 C    0.497772   -0.095384    0.026985
 H    0.319169    0.578450    0.877713
 C    1.692214   -1.013678    0.362856
 O    1.659000   -2.200223    0.031545
 H   -0.602733   -1.614830   -1.084682
 H   -0.930825   -1.566963    0.653999
 C   -0.761796   -0.951000   -0.231279
 S   -2.222423    0.110625   -0.614469
 C   -3.123224   -0.129444    0.809546
 N   -3.715623   -0.282935    1.824720
 N    2.724026   -0.419989    1.018447
 H    1.611826    2.475138   -1.975761
 H    2.707020    0.586803    1.161453
 H    3.525596   -0.983520    1.268243

