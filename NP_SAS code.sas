/*P.38 Ex. 2.2*/
data FEMALE MONKEYS;
input x @@;
weight=x-8.41;
datalines;
8.30 9.50 9.60 8.75 8.40 9.10 9.25 9.80 10.05 8.15 10.00 9.60 9.80 9.20 9.30
;
ODS RTF FILE="D:\NP\HW1\sample.RTF";
PROC UNIVARIATE;
    VAR WEIGHT;
RUN;
ODS RTF CLOSE;

/*P.74 Ex. 2.29*/
data Scores;
input x @@;
Difference=x-70;
cards;
80 68 30 67 70 62 69 65 53 29 65 68 62 56 46 48 39 72 36 69 40 61 54 53 25
;
ODS RTF FILE="D:\礚ダ计(NP)\HW2\Scores.RTF";
PROC UNIVARIATE;
    VAR Difference;
RUN;
ODS RTF CLOSE;

/*P.73 Ex. 2.27*/
data working wives;
input outcome $ count;
cards;
s  6
f 14
;
ODS RTF FILE="D:\礚ダ计(NP)\HW2\wives.RTF";
PROC FREQ ORDER=DATA;
	WEIGHT COUNT;
	TABLE OUTCOME/BINOMIAL(p=0.25);
	EXACT BIONIMIAL;
RUN;
ODS RTF CLOSE;

/*P.71 Ex. 2.23*/
data cotton crop;
input x y @@;
diff=x-y;
cards;
19479 15375 26667 21312 
63969 26526 57715 24865
38086 21152 38434 23458 
24196 25774 19319 32646
29975 31768 25451 24821
20410 19593 19910 14960 
;
ODS RTF FILE="D:\礚ダ计(NP)\HW3\Crops.RTF";
PROC UNIVARIATE;
    VAR diff;
RUN;
ODS RTF CLOSE;

/*P.127 Ex. 3.18*/
data experiment;
input group$ score @@;
cards;
x 1.322 x 0.061 x 0.715 x 0.257 x 1.755 x 0.198
y 0.111 y 0.064 y 0.154 y 0.120 y 0.032 y 0.382
;
PROC TTEST;
	CLASS GROUP;
	VAR SCORE;
ODS RTF FILE="D:\礚ダ计(NP)\HW4\Experiment.RTF";
PROC NPAR1WAY MEDIAN;
    CLASS GROUP;
	VAR SCORE;
ODS GRAPHICS OFF;
RUN;
ODS RTF CLOSE;

/*P.129 Ex. 3.21*/
data disease;	
input group $ percentage @@;
cards;
X 6.01 X 2.48 X 1.76 X 5.10 X 0.75 X 7.13 X 4.88
Y 5.68 Y 5.68 Y 16.30 Y 21.46 Y 11.63 Y 44.20 Y 33.30
;
ODS RTF FILE="D:\礚ダ计(NP)\HW4\Disease.RTF";
PROC NPAR1WAY WILCOXON;
    CLASS GROUP;
	VAR PERCENTAGE;
    EXACT WILCOXON;
RUN;
ODS RTF CLOSE;
