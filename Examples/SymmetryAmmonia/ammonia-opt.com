%RWF=/scratch/bdw2292/Gau-ammonia/,100GB
%Nosave
%Chk=ammonia-opt.chk
%Mem=700MB
%Nproc=1
#P opt=(maxcycle=400) MP2/6-31G* Guess=INDO MaxDisk=100GB

ammonia Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 N    0.904400    0.008800    0.092500
 H    0.592800    0.905700   -0.277200
 H    0.592800   -0.694200   -0.576100
 H    1.921700    0.019500    0.035200


