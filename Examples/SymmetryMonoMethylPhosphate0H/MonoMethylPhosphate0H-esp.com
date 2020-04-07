%RWF=/scratch/bdw2292/Gau-MonoMethylPhosphate0H/,150GB
%Nosave
%Chk=MonoMethylPhosphate0H-esp.chk
%Mem=100GB
%Nproc=8
#P MP2/6-311++G(2d,2p) Sp Density=MP2 SCF=Save Guess=Huckel MaxDisk=150GB Pop=NBORead

MonoMethylPhosphate0H Gaussian SP Calculation on node37.bme.utexas.edu

-2 1
 P    0.520208   -0.055671    0.000872
 O   -0.959163    0.813464   -0.010498
 O    1.525890    1.093858    0.009565
 O    0.495004   -0.880276   -1.288445
 O    0.473356   -0.882034    1.288454
 C   -2.121548    0.034250   -0.001414
 H   -2.168274   -0.640526   -0.869952
 H   -2.996534    0.697120   -0.031921
 H   -2.189717   -0.587123    0.904665

$nbo bndidx $end

