%RWF=/scratch/bdw2292/Gau-DiMethylPhosphate0H/,100GB
%Nosave
%Chk=DiMethylPhosphate0H-opt.chk
%Mem=20GB
%Nproc=4
#P opt=(maxcycle=400) wB97XD/6-31G* Guess=INDO MaxDisk=100GB SCRF=(PCM)

DiMethylPhosphate0H Gaussian OPT Calculation on node37.bme.utexas.edu

-1 1
 P   -0.048000    0.583800    0.054800
 O    1.054000   -0.343200    0.794500
 O   -1.003000   -0.456700   -0.737900
 O    0.775800    1.305300   -1.137000
 O   -0.776600    1.535600    0.959600
 C    1.808200   -1.282300    0.047500
 C   -1.810300   -1.342500    0.018500
 H    1.147500   -1.999700   -0.444700
 H    2.468400   -1.821700    0.731300
 H    2.417800   -0.765300   -0.697800
 H   -2.521400   -0.771600    0.621300
 H   -1.188000   -1.962900    0.668200
 H   -2.362300   -1.987800   -0.669000
