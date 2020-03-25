%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-23-22-21-20-126.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C   -3.609058   -0.696431    6.213581
 C   -2.709676   -1.571529    6.839009
 C   -1.689879   -2.188004    6.087270
 C   -1.662206   -1.858456    4.709283
 N   -2.507051   -1.023232    4.095328
 C   -3.462760   -0.450520    4.843180
 C   -0.625968   -3.076022    6.685665
 C   -0.459920   -3.352294    8.052224
 C    0.677833   -4.096906    8.386030
 N    1.574569   -4.540314    7.508386
 C    1.317531   -4.254595    6.214848
 N    0.253152   -3.569057    5.792328
 N    2.248861   -4.714263    5.294653
 C    2.373347   -4.558231    3.864836
 C    3.627190   -4.822160    3.235452
 C    3.711772   -4.580646    1.853246
 C    2.639163   -4.140182    1.068081
 C    1.395310   -3.969789    1.684811
 C    1.289611   -4.160657    3.071315
 N    0.179493   -3.584165    1.031569
 C   -0.057349   -3.145454   -0.249165
 C   -1.434108   -2.576377   -0.521292
 C   -1.565319   -1.296639   -1.079683
 C   -2.834164   -0.766287   -1.328373
 C   -4.002628   -1.527764   -1.126593
 C   -3.853608   -2.809429   -0.563905
 C   -2.593305   -3.319920   -0.244663
 C   -5.381672   -0.955571   -1.459818
 N   -6.096306   -0.096132   -0.501251
 C   -5.654863    1.304493   -0.307260
 C   -4.761749    1.550779    0.938914
 N   -5.304643    1.020710    2.213442
 C   -6.331171    1.849227    2.858486
 C   -5.630328   -0.408129    2.009419
 C   -6.529445   -0.691017    0.783097
 O    0.771669   -3.213992   -1.140979
 C    4.864726   -5.272124    3.992881
 H   -4.394530   -0.200307    6.775809
 H   -2.816504   -1.742994    7.907250
 H   -0.882361   -2.256138    4.069808
 H   -4.121160    0.242190    4.322722
 H   -1.115962   -2.980302    8.829641
 H    0.892818   -4.330899    9.428542
 H    3.009384   -5.165767    5.780298
 H    4.662520   -4.735933    1.344527
 H    2.744710   -3.979442    0.001774
 H    0.338904   -4.008896    3.556685
 H   -0.631841   -3.567054    1.634197
 H   -0.665635   -0.726079   -1.294476
 H   -2.904711    0.233842   -1.756151
 H   -4.732489   -3.422866   -0.366150
 H   -2.495236   -4.320695    0.169408
 H   -5.283021   -0.386098   -2.395763
 H   -6.060125   -1.794930   -1.672930
 H   -5.214295    1.686291   -1.197961
 H   -6.956936    2.155198   -0.054665
 H   -4.536075    2.883170    1.071839
 H   -3.468230    0.885387    0.710839
 H   -7.227115    1.928017    2.232846
 H   -5.940834    2.855992    3.046507
 H   -6.615394    1.413815    3.823565
 H   -6.074289   -0.833461    2.953357
 H   -4.271998   -1.144794    1.748243
 H   -7.923916   -0.056229    1.131334
 H   -6.705468   -1.889037    0.656390
 H    4.707937   -6.249343    4.470883
 H    5.135519   -4.557592    4.783114
 H    5.747985   -5.376668    3.347667

20 21 22 23 F
36 21 22 23 F
36 21 22 27 F
20 21 22 27 F
14 13 11 12 F
14 13 11 10 F
15 14 13 11 F
19 14 13 11 F
19 18 20 21 F
17 18 20 21 F
22 21 20 18 F
36 21 20 18 F
29 28 25 24 F
29 28 25 26 F
25 28 29 35 F
25 28 29 30 F

