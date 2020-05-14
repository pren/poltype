%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-23-22-21-36-125.chk
%Mem=20GB
%Nproc=6
#P opt=(maxcycle=5,Loose) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -1.543990   -2.707435   -8.341713
 C   -0.221069   -3.167345   -8.369011
 C    0.423394   -3.534597   -7.170475
 C   -0.355535   -3.425405   -5.993104
 N   -1.621104   -2.990157   -5.948844
 C   -2.197409   -2.635378   -7.107013
 C    1.850029   -4.019148   -7.104397
 C    2.654412   -4.278316   -8.227446
 C    3.952644   -4.724864   -7.961574
 N    4.445900   -4.900541   -6.739176
 C    3.609046   -4.621159   -5.718826
 N    2.351849   -4.197367   -5.865587
 N    4.161075   -4.805439   -4.464690
 C    3.662657   -4.712371   -3.117528
 C    4.412849   -5.319716   -2.063675
 C    3.899047   -5.214861   -0.761823
 C    2.706451   -4.556966   -0.446803
 C    1.984398   -3.952598   -1.482121
 C    2.472541   -4.043517   -2.797376
 N    0.744669   -3.252703   -1.312590
 C   -0.077627   -3.134953   -0.214698
 C   -1.451006   -2.550051   -0.460291
 C   -1.641474   -1.310826   -1.091031
 C   -2.933198   -0.834565   -1.328903
 C   -4.070972   -1.566123   -0.936873
 C   -3.860396   -2.803841   -0.298383
 C   -2.573520   -3.288255   -0.054924
 C   -5.483556   -1.015564   -1.142081
 N   -6.051831   -0.081536   -0.155778
 C   -5.577604    1.320912   -0.125844
 C   -4.431331    1.593905    0.882755
 N   -4.726848    1.145120    2.264575
 C   -5.538654    2.046169    3.090679
 C   -5.147238   -0.276973    2.224563
 C   -6.294624   -0.567727    1.222289
 O    0.259469   -3.460911    0.911411
 C    5.718273   -6.067202   -2.282470
 H   -2.055904   -2.410497   -9.252379
 H    0.289377   -3.211396   -9.327956
 H    0.057539   -3.721030   -5.033928
 H   -3.225975   -2.285802   -7.031888
 H    2.330598   -4.167888   -9.254914
 H    4.655367   -4.962149   -8.759727
 H    5.099308   -5.160006   -4.572600
 H    4.445183   -5.668871    0.064085
 H    2.343010   -4.508665    0.571912
 H    1.924633   -3.577157   -3.600849
 H    0.379777   -2.834409   -2.157264
 H   -0.772592   -0.730261   -1.391114
 H   -3.053956    0.131259   -1.819382
 H   -4.713007   -3.393977    0.036179
 H   -2.423586   -4.239785    0.448742
 H   -5.515697   -0.513044   -2.119014
 H   -6.179079   -1.864766   -1.203372
 H   -5.286019    1.678124   -1.200380
 H   -6.732814    2.154036    0.285599
 H   -4.155928    2.923613    0.906537
 H   -3.388189    1.010889    0.520818
 H   -6.551859    2.144421    2.685065
 H   -5.076777    3.039343    3.133242
 H   -5.604075    1.663539    4.115793
 H   -5.463005   -0.640594    3.366333
 H   -3.975918   -1.047871    1.838547
 H   -7.503037    0.122697    1.718588
 H   -6.555008   -1.738149    1.209840
 H    6.510013   -5.425683   -2.695405
 H    5.582969   -6.901251   -2.976764
 H    6.120236   -6.493866   -1.359669

36 21 22 23 F
20 21 22 23 F
36 21 22 27 F
20 21 22 27 F
12 11 13 14 F
10 11 13 14 F
19 18 20 21 F
17 18 20 21 F
24 25 28 29 F
26 25 28 29 F
25 28 29 35 F
25 28 29 30 F
