%RWF=/scratch/bdw2292/Gau-acetamide/,100GB
%Nosave
%Chk=acetamide-opt.chk
%Mem=700MB
%Nproc=1
#P opt=(maxcycle=400) wB97X-D/6-31G* Guess=INDO MaxDisk=100GB

acetamide Gaussian OPT Calculation on bme-nova.bme.utexas.edu

0 1
 O    0.607300   -1.165700    0.001800
 N    0.752200    1.130600    0.001500
 C   -1.427500    0.096900    0.001300
 C    0.068000   -0.061800   -0.004600
 H   -1.876800   -0.690600   -0.610100
 H   -1.791700    0.014000    1.028800
 H   -1.727400    1.065500   -0.408400
 H    1.766700    1.149200    0.003100
 H    0.281500    2.029800    0.008100

