%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-257.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744013    0.117458   -0.011325
 C   -0.685434   -0.011941    0.006947
 H   -1.062458    0.184337   -1.001102
 H   -1.086326    0.694404    0.739822
 H   -0.935270   -1.035693    0.303538
 H    1.104588   -0.787268   -0.009480


