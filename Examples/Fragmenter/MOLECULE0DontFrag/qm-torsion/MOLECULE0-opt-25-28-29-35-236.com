%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-25-28-29-35-236.chk
%Mem=20GB
%Nproc=6
#P opt=(maxcycle=5,Loose) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -0.047651    4.566019   -1.349228
 C    1.275425    4.441105   -0.903143
 C    1.834845    3.162695   -0.706849
 C    0.987290    2.069139   -1.013475
 N   -0.275750    2.165854   -1.447450
 C   -0.778939    3.399900   -1.602951
 C    3.246586    2.933321   -0.224198
 C    4.206581    3.931937    0.003789
 C    5.466191    3.479594    0.412979
 N    5.781539    2.202189    0.608287
 C    4.789345    1.312660    0.394605
 N    3.558599    1.640636   -0.009281
 N    5.117511   -0.016376    0.623855
 C    4.399288   -1.256143    0.452718
 C    5.115912   -2.490863    0.429430
 C    4.366136   -3.664543    0.238053
 C    2.975142   -3.687175    0.079427
 C    2.285222   -2.472098    0.133055
 C    3.006910   -1.281528    0.312302
 N    0.872865   -2.297350   -0.007840
 C   -0.125126   -3.172638   -0.365789
 C   -1.483584   -2.570778   -0.671863
 C   -1.641484   -1.322110   -1.297081
 C   -2.915432   -0.796339   -1.516561
 C   -4.074551   -1.498910   -1.137510
 C   -3.902544   -2.759732   -0.533859
 C   -2.631460   -3.297918   -0.317459
 C   -5.462027   -0.879151   -1.321974
 N   -5.990379    0.063250   -0.310289
 C   -5.074193    0.661268    0.689480
 C   -4.948152   -0.170022    1.992470
 N   -6.239795   -0.494479    2.642791
 C   -6.798174    0.535714    3.525563
 C   -7.161465   -1.065509    1.632019
 C   -7.292002   -0.242017    0.325246
 O    0.045761   -4.380415   -0.418660
 C    6.625137   -2.583238    0.575644
 H   -0.501487    5.541494   -1.497655
 H    1.838143    5.349141   -0.701136
 H    1.363022    1.055368   -0.928281
 H   -1.808527    3.453483   -1.953628
 H    4.030146    4.989982   -0.146098
 H    6.272324    4.190375    0.592440
 H    6.090513   -0.084096    0.882342
 H    4.881309   -4.623564    0.200484
 H    2.434409   -4.613390   -0.072906
 H    2.480847   -0.341536    0.352656
 H    0.563540   -1.342811    0.111138
 H   -0.765352   -0.748546   -1.590143
 H   -2.997907    0.190271   -1.972382
 H   -4.771605   -3.334327   -0.214736
 H   -2.507051   -4.269275    0.154852
 H   -5.484697   -0.343038   -2.281539
 H   -6.176079   -1.712495   -1.399118
 H   -4.194484    0.886615    0.277594
 H   -5.710548    2.035522    1.132199
 H   -4.122930    0.616157    2.944083
 H   -4.326237   -1.294801    1.745080
 H   -7.070081    1.434216    2.960310
 H   -6.068332    0.810279    4.295419
 H   -7.691335    0.154719    4.033651
 H   -8.401894   -1.219555    2.193961
 H   -6.632426   -2.415802    1.256098
 H   -7.942512    1.112657    0.739064
 H   -7.958543   -0.694442   -0.380083
 H    6.953544   -2.231918    1.564081
 H    7.141685   -1.974337   -0.179878
 H    7.004970   -3.608197    0.463777

25 28 29 35 F
25 28 29 30 F
12 11 13 14 F
10 11 13 14 F
19 18 20 21 F
17 18 20 21 F
36 21 22 23 F
20 21 22 23 F
36 21 22 27 F
20 21 22 27 F
24 25 28 29 F
26 25 28 29 F
