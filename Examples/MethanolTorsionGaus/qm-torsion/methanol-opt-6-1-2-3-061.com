%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-061.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744058    0.116419    0.001535
 C   -0.684830   -0.009499    0.000421
 H   -0.987465   -0.546148    0.904602
 H   -0.986709   -0.538604   -0.908449
 H   -1.108973    0.999419    0.004444
 H    1.096810   -0.791573   -0.002096


