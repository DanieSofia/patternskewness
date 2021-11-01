%Convert data from xls to a table in matlab
format bank

FTSE100daily = readtable('FTSE100_00a20_daily.xlsx');
FTSE100weekly = readtable('FTSE100_00a20_weekly.xlsx');
FTSE100monthly = readtable('FTSE100_00a20_monthly.xlsx');

FTSE100P1 = readtable('FTSE100_P1_daily.xlsx');
FTSE100P2 = readtable('FTSE100_P2_daily.xlsx');
FTSE100P3 = readtable('FTSE100_P3_daily.xlsx');
FTSE100P4 = readtable('FTSE100_P4_daily.xlsx');

DAX30daily = readtable('DAX30_00a20_daily.xlsx');
DAX30weekly = readtable('DAX30_00a20_weekly.xlsx');
DAX30monthly = readtable('DAX30_00a20_monthly.xlsx');

DAX30P1 = readtable('DAX30_P1_daily.xlsx');
DAX30P2 = readtable('DAX30_P2_daily.xlsx');
DAX30P3 = readtable('DAX30_P3_daily.xlsx');
DAX30P4 = readtable('DAX30_P4_daily.xlsx');

NIKKEI225daily = readtable('Nikkei225_00a20_daily.xlsx');
NIKKEI225weekly = readtable('Nikkei225_00a20_weekly.xlsx');
NIKKEI225monthly = readtable('Nikkei225_00a20_monthly.xlsx');

NIKKEI225P1 = readtable('Nikkei225_P1_daily.xlsx');
NIKKEI225P2 = readtable('Nikkei225_P2_daily.xlsx');
NIKKEI225P3 = readtable('Nikkei225_P3_daily.xlsx');
NIKKEI225P4 = readtable('Nikkei225_P4_daily.xlsx');

SP500daily = readtable('SP500_00a20_daily.xlsx');
SP500weekly = readtable('SP500_00a20_weekly.xlsx');
SP500monthly = readtable('SP500_00a20_monthly.xlsx');

SP500P1 = readtable('SP500_P1_daily.xlsx');
SP500P2 = readtable('SP500_P2_daily.xlsx');
SP500P3 = readtable('SP500_P3_daily.xlsx');
SP500P4 = readtable('SP500_P4_daily.xlsx');

PRTFdaily = readtable('Portfolio_00a20_daily.xlsx');
PRTFweekly = readtable('Portfolio_00a20_weekly.xlsx');
PRTFmonthly = readtable('Portfolio_00a20_monthly.xlsx');

PRTFP1 = readtable('Portfolio_P1_daily.xlsx');
PRTFP2 = readtable('Portfolio_P2_daily.xlsx');
PRTFP3 = readtable('Portfolio_P3_daily.xlsx');
PRTFP4 = readtable('Portfolio_P4_daily.xlsx');


%convert all the tables to matrices

FTSE100daily = FTSE100daily{:,:};
FTSE100weekly = FTSE100weekly{:,:};
FTSE100monthly = FTSE100monthly{:,:};

FTSE100P1 = FTSE100P1{:,:};
FTSE100P2 = FTSE100P2{:,:};
FTSE100P3 = FTSE100P3{:,:};
FTSE100P4 = FTSE100P4{:,:};

DAX30daily = DAX30daily{:,:};
DAX30weekly = DAX30weekly{:,:};
DAX30monthly = DAX30monthly{:,:};

DAX30P1 = DAX30P1{:,:};
DAX30P2 = DAX30P2{:,:};
DAX30P3 = DAX30P3{:,:};
DAX30P4 = DAX30P4{:,:};

NIKKEI225daily = NIKKEI225daily{:,:};
NIKKEI225weekly = NIKKEI225weekly{:,:};
NIKKEI225monthly = NIKKEI225monthly{:,:};

NIKKEI225P1 = NIKKEI225P1{:,:};
NIKKEI225P2 = NIKKEI225P2{:,:};
NIKKEI225P3 = NIKKEI225P3{:,:};
NIKKEI225P4 = NIKKEI225P4{:,:};

SP500daily = SP500daily{:,:};
SP500weekly = SP500weekly{:,:};
SP500monthly = SP500monthly{:,:};

SP500P1 = SP500P1{:,:};
SP500P2 = SP500P2{:,:};
SP500P3 = SP500P3{:,:};
SP500P4 = SP500P4{:,:};

PRTFdaily = PRTFdaily{:,:};
PRTFweekly = PRTFweekly{:,:};
PRTFmonthly = PRTFmonthly{:,:};

PRTFP1 = PRTFP1{:,:};
PRTFP2 = PRTFP2{:,:};
PRTFP3 = PRTFP3{:,:};
PRTFP4 = PRTFP4{:,:};


%create a vector with the historical prices only
%these ones are in the forth column of the previous matrices 

FTSE100Dprice = FTSE100daily(:,4);
FTSE100Wprice = FTSE100weekly(:,4);
FTSE100Mprice = FTSE100monthly(:,4);

FTSE100P1price = FTSE100P1(:,4);
FTSE100P2price = FTSE100P2(:,4);
FTSE100P3price = FTSE100P3(:,4);
FTSE100P4price = FTSE100P4(:,4);


DAX30Dprice = DAX30daily(:,4);
DAX30Wprice = DAX30weekly(:,4);
DAX30Mprice = DAX30monthly(:,4);

DAX30P1price = DAX30P1(:,4);
DAX30P2price = DAX30P2(:,4);
DAX30P3price = DAX30P3(:,4);
DAX30P4price = DAX30P4(:,4);


NIKKEI225Dprice = NIKKEI225daily(:,4);
NIKKEI225Wprice = NIKKEI225weekly(:,4);
NIKKEI225Mprice = NIKKEI225monthly(:,4);

NIKKEI225P1price = NIKKEI225P1(:,4);
NIKKEI225P2price = NIKKEI225P2(:,4);
NIKKEI225P3price = NIKKEI225P3(:,4);
NIKKEI225P4price = NIKKEI225P4(:,4);


SP500Dprice = SP500daily(:,4);
SP500Wprice = SP500weekly(:,4);
SP500Mprice = SP500monthly(:,4);

SP500P1price = SP500P1(:,4);
SP500P2price = SP500P2(:,4);
SP500P3price = SP500P3(:,4);
SP500P4price = SP500P4(:,4);

PRTFDprice = PRTFdaily(:,4);
PRTFWprice = PRTFweekly(:,4);
PRTFMprice = PRTFmonthly(:,4);

PRTFP1price = PRTFP1(:,4);
PRTFP2price = PRTFP2(:,4);
PRTFP3price = PRTFP3(:,4);
PRTFP4price = PRTFP4(:,4);


%create the dif-log returns from the prices

lcFTSE100D = diflogret(FTSE100Dprice);
lcFTSE100W = diflogret(FTSE100Wprice);
lcFTSE100M = diflogret(FTSE100Mprice);
lcFTSE100P1 = diflogret(FTSE100P1price);
lcFTSE100P2 = diflogret(FTSE100P2price);
lcFTSE100P3 = diflogret(FTSE100P3price);
lcFTSE100P4 = diflogret(FTSE100P4price);
lcFTSE100P4 = sort(lcFTSE100P4);
lcFTSE100P4 = lcFTSE100P4(4:end);

lcDAX30D = diflogret(DAX30Dprice);
lcDAX30W = diflogret(DAX30Wprice);
lcDAX30M = diflogret(DAX30Mprice);
lcDAX30P1 = diflogret(DAX30P1price);
lcDAX30P2 = diflogret(DAX30P2price);
lcDAX30P3 = diflogret(DAX30P3price);
lcDAX30P4 = diflogret(DAX30P4price);
lcDAX30P4 = sort(lcDAX30P4);
lcDAX30P4 = lcDAX30P4(4:end);

lcNIKKEI225D = diflogret(NIKKEI225Dprice);
lcNIKKEI225W = diflogret(NIKKEI225Wprice);
lcNIKKEI225M = diflogret(NIKKEI225Mprice);
lcNIKKEI225P1 = diflogret(NIKKEI225P1price);
lcNIKKEI225P2 = diflogret(NIKKEI225P2price);
lcNIKKEI225P3 = diflogret(NIKKEI225P3price);
lcNIKKEI225P4 = diflogret(NIKKEI225P4price);
lcNIKKEI225P4 = sort(lcNIKKEI225P4);
lcNIKKEI225P4 = lcNIKKEI225P4(4:end);

lcSP500D = diflogret(SP500Dprice);
lcSP500W = diflogret(SP500Wprice);
lcSP500M = diflogret(SP500Mprice);
lcSP500P1 = diflogret(SP500P1price);
lcSP500P2 = diflogret(SP500P2price);
lcSP500P3 = diflogret(SP500P3price);
lcSP500P4 = diflogret(SP500P4price);
lcSP500P4 = sort(lcSP500P4);
lcSP500P4 = lcSP500P4(4:end);

lcPRTFD = diflogret(PRTFDprice);
lcPRTFW = diflogret(PRTFWprice);
lcPRTFM = diflogret(PRTFMprice);
lcPRTFP1 = diflogret(PRTFP1price);
lcPRTFP2 = diflogret(PRTFP2price);
lcPRTFP3 = diflogret(PRTFP3price);
lcPRTFP4 = diflogret(PRTFP4price);
lcPRTFP4 = sort(lcPRTFP4);
lcPRTFP4 = lcPRTFP4(4:end);

%Data Preliminary Statistics

%number of observations
nobv1 = length(lcFTSE100D);
nobv2 = length(lcFTSE100W);
nobv3 = length(lcFTSE100M);
nobv4 = length(lcFTSE100P1);
nobv5 = length(lcFTSE100P2);
nobv6 = length(lcFTSE100P3);
nobv7 = length(lcFTSE100P4);
nobv8 = length(lcDAX30D);
nobv9 = length(lcDAX30W);
nobv10 = length(lcDAX30M);
nobv11 = length(lcDAX30P1);
nobv12 = length(lcDAX30P2);
nobv13 = length(lcDAX30P3);
nobv14 = length(lcDAX30P4);
nobv15 = length(lcNIKKEI225D);
nobv16 = length(lcNIKKEI225W);
nobv17 = length(lcNIKKEI225M);
nobv18 = length(lcNIKKEI225P1);
nobv19 = length(lcNIKKEI225P2);
nobv20 = length(lcNIKKEI225P3);
nobv21 = length(lcNIKKEI225P4);
nobv22 = length(lcSP500D);
nobv23 = length(lcSP500W);
nobv24 = length(lcSP500M);
nobv25 = length(lcSP500P1);
nobv26 = length(lcSP500P2);
nobv27 = length(lcSP500P3);
nobv28 = length(lcSP500P4);
nobv29 = length(lcPRTFD);
nobv30 = length(lcPRTFW);
nobv31 = length(lcPRTFM);
nobv32 = length(lcPRTFP1);
nobv33 = length(lcPRTFP2);
nobv34 = length(lcPRTFP3);
nobv35 = length(lcPRTFP4);


%mean
media1 = mean(lcFTSE100D);
media2 = mean(lcFTSE100W);
media3 = mean(lcFTSE100M);
media4 = mean(lcFTSE100P1);
media5 = mean(lcFTSE100P2);
media6 = mean(lcFTSE100P3);
media7 = mean(lcFTSE100P4);
media8 = mean(lcDAX30D);
media9 = mean(lcDAX30W);
media10 = mean(lcDAX30M);
media11 = mean(lcDAX30P1);
media12 = mean(lcDAX30P2);
media13 = mean(lcDAX30P3);
media14 = mean(lcDAX30P4);
media15 = mean(lcNIKKEI225D);
media16 = mean(lcNIKKEI225W);
media17 = mean(lcNIKKEI225M);
media18 = mean(lcNIKKEI225P1);
media19 = mean(lcNIKKEI225P2);
media20 = mean(lcNIKKEI225P3);
media21 = mean(lcNIKKEI225P4);
media22 = mean(lcSP500D);
media23 = mean(lcSP500W);
media24 = mean(lcSP500M);
media25 = mean(lcSP500P1);
media26 = mean(lcSP500P2);
media27 = mean(lcSP500P3);
media28 = mean(lcSP500P4);
media29 = mean(lcPRTFD);
media30 = mean(lcPRTFW);
media31 = mean(lcPRTFM);
media32 = mean(lcPRTFP1);
media33 = mean(lcPRTFP2);
media34 = mean(lcPRTFP3);
media35 = mean(lcPRTFP4);


%standard deviation
std1 = std(lcFTSE100D);
std2 = std(lcFTSE100W);
std3 = std(lcFTSE100M);
std4 = std(lcFTSE100P1);
std5 = std(lcFTSE100P2);
std6 = std(lcFTSE100P3);
std7 = std(lcFTSE100P4);
std8 = std(lcDAX30D);
std9 = std(lcDAX30W);
std10 = std(lcDAX30M);
std11 = std(lcDAX30P1);
std12 = std(lcDAX30P2);
std13 = std(lcDAX30P3);
std14 = std(lcDAX30P4);
std15 = std(lcNIKKEI225D);
std16 = std(lcNIKKEI225W);
std17 = std(lcNIKKEI225M);
std18 = std(lcNIKKEI225P1);
std19 = std(lcNIKKEI225P2);
std20 = std(lcNIKKEI225P3);
std21 = std(lcNIKKEI225P4);
std22 = std(lcSP500D);
std23 = std(lcSP500W);
std24 = std(lcSP500M);
std25 = std(lcSP500P1);
std26 = std(lcSP500P2);
std27 = std(lcSP500P3);
std28 = std(lcSP500P4);
std29 = std(lcPRTFD);
std30 = std(lcPRTFW);
std31 = std(lcPRTFM);
std32 = std(lcPRTFP1);
std33 = std(lcPRTFP2);
std34 = std(lcPRTFP3);
std35 = std(lcPRTFP4);


%empirical kurtosis
kurtosis1 = kurtosis(lcFTSE100D);
kurtosis2 = kurtosis(lcFTSE100W);
kurtosis3 = kurtosis(lcFTSE100M);
kurtosis4 = kurtosis(lcFTSE100P1);
kurtosis5 = kurtosis(lcFTSE100P2);
kurtosis6 = kurtosis(lcFTSE100P3);
kurtosis7 = kurtosis(lcFTSE100P4);
kurtosis8 = kurtosis(lcDAX30D);
kurtosis9 = kurtosis(lcDAX30W);
kurtosis10 = kurtosis(lcDAX30M);
kurtosis11 = kurtosis(lcDAX30P1);
kurtosis12 = kurtosis(lcDAX30P2);
kurtosis13 = kurtosis(lcDAX30P3);
kurtosis14 = kurtosis(lcDAX30P4);
kurtosis15 = kurtosis(lcNIKKEI225D);
kurtosis16 = kurtosis(lcNIKKEI225W);
kurtosis17 = kurtosis(lcNIKKEI225M);
kurtosis18 = kurtosis(lcNIKKEI225P1);
kurtosis19 = kurtosis(lcNIKKEI225P2);
kurtosis20 = kurtosis(lcNIKKEI225P3);
kurtosis21 = kurtosis(lcNIKKEI225P4);
kurtosis22 = kurtosis(lcSP500D);
kurtosis23 = kurtosis(lcSP500W);
kurtosis24 = kurtosis(lcSP500M);
kurtosis25 = kurtosis(lcSP500P1);
kurtosis26 = kurtosis(lcSP500P2);
kurtosis27 = kurtosis(lcSP500P3);
kurtosis28 = kurtosis(lcSP500P4);
kurtosis29 = kurtosis(lcPRTFD);
kurtosis30 = kurtosis(lcPRTFW);
kurtosis31 = kurtosis(lcPRTFM);
kurtosis32 = kurtosis(lcPRTFP1);
kurtosis33 = kurtosis(lcPRTFP2);
kurtosis34 = kurtosis(lcPRTFP3);
kurtosis35 = kurtosis(lcPRTFP4);


%empirical excess kurtosis
excesskurtosis1 = kurtosis1-3;
excesskurtosis2 = kurtosis2-3;
excesskurtosis3 = kurtosis3-3;
excesskurtosis4 = kurtosis4-3;
excesskurtosis5 = kurtosis5-3;
excesskurtosis6 = kurtosis6-3;
excesskurtosis7 = kurtosis7-3;
excesskurtosis8 = kurtosis8-3;
excesskurtosis9 = kurtosis9-3;
excesskurtosis10 = kurtosis10-3;
excesskurtosis11 = kurtosis11-3;
excesskurtosis12 = kurtosis12-3;
excesskurtosis13 = kurtosis13-3;
excesskurtosis14 = kurtosis14-3;
excesskurtosis15 = kurtosis15-3;
excesskurtosis16 = kurtosis16-3;
excesskurtosis17 = kurtosis17-3;
excesskurtosis18 = kurtosis18-3;
excesskurtosis19 = kurtosis19-3;
excesskurtosis20 = kurtosis20-3;
excesskurtosis21 = kurtosis21-3;
excesskurtosis22 = kurtosis22-3;
excesskurtosis23 = kurtosis23-3;
excesskurtosis24 = kurtosis24-3;
excesskurtosis25 = kurtosis25-3;
excesskurtosis26 = kurtosis26-3;
excesskurtosis27 = kurtosis27-3;
excesskurtosis28 = kurtosis28-3;
excesskurtosis29 = kurtosis29-3;
excesskurtosis30 = kurtosis30-3;
excesskurtosis31 = kurtosis31-3;
excesskurtosis32 = kurtosis32-3;
excesskurtosis33 = kurtosis33-3;
excesskurtosis34 = kurtosis34-3;
excesskurtosis35 = kurtosis35-3;


%empirical skewness
skewness1 = skewness(lcFTSE100D);
skewness2 = skewness(lcFTSE100W);
skewness3 = skewness(lcFTSE100M);
skewness4 = skewness(lcFTSE100P1);
skewness5 = skewness(lcFTSE100P2);
skewness6 = skewness(lcFTSE100P3);
skewness7 = skewness(lcFTSE100P4);
skewness8 = skewness(lcDAX30D);
skewness9 = skewness(lcDAX30W);
skewness10 = skewness(lcDAX30M);
skewness11 = skewness(lcDAX30P1);
skewness12 = skewness(lcDAX30P2);
skewness13 = skewness(lcDAX30P3);
skewness14 = skewness(lcDAX30P4);
skewness15 = skewness(lcNIKKEI225D);
skewness16 = skewness(lcNIKKEI225W);
skewness17 = skewness(lcNIKKEI225M);
skewness18 = skewness(lcNIKKEI225P1);
skewness19 = skewness(lcNIKKEI225P2);
skewness20 = skewness(lcNIKKEI225P3);
skewness21 = skewness(lcNIKKEI225P4);
skewness22 = skewness(lcSP500D);
skewness23 = skewness(lcSP500W);
skewness24 = skewness(lcSP500M);
skewness25 = skewness(lcSP500P1);
skewness26 = skewness(lcSP500P2);
skewness27 = skewness(lcSP500P3);
skewness28 = skewness(lcSP500P4);
skewness29 = skewness(lcPRTFD);
skewness30 = skewness(lcPRTFW);
skewness31 = skewness(lcPRTFM);
skewness32 = skewness(lcPRTFP1);
skewness33 = skewness(lcPRTFP2);
skewness34 = skewness(lcPRTFP3);
skewness35 = skewness(lcPRTFP4);


%minimum value
minval1 = min(lcFTSE100D);
minval2 = min(lcFTSE100W);
minval3 = min(lcFTSE100M);
minval4 = min(lcFTSE100P1);
minval5 = min(lcFTSE100P2);
minval6 = min(lcFTSE100P3);
minval7 = min(lcFTSE100P4);
minval8 = min(lcDAX30D);
minval9 = min(lcDAX30W);
minval10 = min(lcDAX30M);
minval11 = min(lcDAX30P1);
minval12 = min(lcDAX30P2);
minval13 = min(lcDAX30P3);
minval14 = min(lcDAX30P4);
minval15 = min(lcNIKKEI225D);
minval16 = min(lcNIKKEI225W);
minval17 = min(lcNIKKEI225M);
minval18 = min(lcNIKKEI225P1);
minval19 = min(lcNIKKEI225P2);
minval20 = min(lcNIKKEI225P3);
minval21 = min(lcNIKKEI225P4);
minval22 = min(lcSP500D);
minval23 = min(lcSP500W);
minval24 = min(lcSP500M);
minval25 = min(lcSP500P1);
minval26 = min(lcSP500P2);
minval27 = min(lcSP500P3);
minval28 = min(lcSP500P4);
minval29 = min(lcPRTFD);
minval30 = min(lcPRTFW);
minval31 = min(lcPRTFM);
minval32 = min(lcPRTFP1);
minval33 = min(lcPRTFP2);
minval34 = min(lcPRTFP3);
minval35 = min(lcPRTFP4);


%maximum value
maxval1 = max(lcFTSE100D);
maxval2 = max(lcFTSE100W);
maxval3 = max(lcFTSE100M);
maxval4 = max(lcFTSE100P1);
maxval5 = max(lcFTSE100P2);
maxval6 = max(lcFTSE100P3);
maxval7 = max(lcFTSE100P4);
maxval8 = max(lcDAX30D);
maxval9 = max(lcDAX30W);
maxval10 = max(lcDAX30M);
maxval11 = max(lcDAX30P1);
maxval12 = max(lcDAX30P2);
maxval13 = max(lcDAX30P3);
maxval14 = max(lcDAX30P4);
maxval15 = max(lcNIKKEI225D);
maxval16 = max(lcNIKKEI225W);
maxval17 = max(lcNIKKEI225M);
maxval18 = max(lcNIKKEI225P1);
maxval19 = max(lcNIKKEI225P2);
maxval20 = max(lcNIKKEI225P3);
maxval21 = max(lcNIKKEI225P4);
maxval22 = max(lcSP500D);
maxval23 = max(lcSP500W);
maxval24 = max(lcSP500M);
maxval25 = max(lcSP500P1);
maxval26 = max(lcSP500P2);
maxval27 = max(lcSP500P3);
maxval28 = max(lcSP500P4);
maxval29 = max(lcPRTFD);
maxval30 = max(lcPRTFW);
maxval31 = max(lcPRTFM);
maxval32 = max(lcPRTFP1);
maxval33 = max(lcPRTFP2);
maxval34 = max(lcPRTFP3);
maxval35 = max(lcPRTFP4);



%5th percentile
percentile5th1 = prctile(lcFTSE100D,5);
percentile5th2 = prctile(lcFTSE100W,5);
percentile5th3 = prctile(lcFTSE100M,5);
percentile5th4 = prctile(lcFTSE100P1,5);
percentile5th5 = prctile(lcFTSE100P2,5);
percentile5th6 = prctile(lcFTSE100P3,5);
percentile5th7 = prctile(lcFTSE100P4,5);
percentile5th8 = prctile(lcDAX30D,5);
percentile5th9 = prctile(lcDAX30W,5);
percentile5th10 = prctile(lcDAX30M,5);
percentile5th11 = prctile(lcDAX30P1,5);
percentile5th12 = prctile(lcDAX30P2,5);
percentile5th13 = prctile(lcDAX30P3,5);
percentile5th14 = prctile(lcDAX30P4,5);
percentile5th15 = prctile(lcNIKKEI225D,5);
percentile5th16 = prctile(lcNIKKEI225W,5);
percentile5th17 = prctile(lcNIKKEI225M,5);
percentile5th18 = prctile(lcNIKKEI225P1,5);
percentile5th19 = prctile(lcNIKKEI225P2,5);
percentile5th20 = prctile(lcNIKKEI225P3,5);
percentile5th21 = prctile(lcNIKKEI225P4,5);
percentile5th22 = prctile(lcSP500D,5);
percentile5th23 = prctile(lcSP500W,5);
percentile5th24 = prctile(lcSP500M,5);
percentile5th25 = prctile(lcSP500P1,5);
percentile5th26 = prctile(lcSP500P2,5);
percentile5th27 = prctile(lcSP500P3,5);
percentile5th28 = prctile(lcSP500P4,5);
percentile5th29 = prctile(lcPRTFD,5);
percentile5th30 = prctile(lcPRTFW,5);
percentile5th31 = prctile(lcPRTFM,5);
percentile5th32 = prctile(lcPRTFP1,5);
percentile5th33 = prctile(lcPRTFP2,5);
percentile5th34 = prctile(lcPRTFP3,5);
percentile5th35 = prctile(lcPRTFP4,5);


%95th percentile
percentile95th1 = prctile(lcFTSE100D,95);
percentile95th2 = prctile(lcFTSE100W,95);
percentile95th3 = prctile(lcFTSE100M,95);
percentile95th4 = prctile(lcFTSE100P1,95);
percentile95th5 = prctile(lcFTSE100P2,95);
percentile95th6 = prctile(lcFTSE100P3,95);
percentile95th7 = prctile(lcFTSE100P4,95);
percentile95th8 = prctile(lcDAX30D,95);
percentile95th9 = prctile(lcDAX30W,95);
percentile95th10 = prctile(lcDAX30M,95);
percentile95th11 = prctile(lcDAX30P1,95);
percentile95th12 = prctile(lcDAX30P2,95);
percentile95th13 = prctile(lcDAX30P3,95);
percentile95th14 = prctile(lcDAX30P4,95);
percentile95th15 = prctile(lcNIKKEI225D,95);
percentile95th16 = prctile(lcNIKKEI225W,95);
percentile95th17 = prctile(lcNIKKEI225M,95);
percentile95th18 = prctile(lcNIKKEI225P1,95);
percentile95th19 = prctile(lcNIKKEI225P2,95);
percentile95th20 = prctile(lcNIKKEI225P3,95);
percentile95th21 = prctile(lcNIKKEI225P4,95);
percentile95th22 = prctile(lcSP500D,95);
percentile95th23 = prctile(lcSP500W,95);
percentile95th24 = prctile(lcSP500M,95);
percentile95th25 = prctile(lcSP500P1,95);
percentile95th26 = prctile(lcSP500P2,95);
percentile95th27 = prctile(lcSP500P3,95);
percentile95th28 = prctile(lcSP500P4,95);
percentile95th29 = prctile(lcPRTFD,95);
percentile95th30 = prctile(lcPRTFW,95);
percentile95th31 = prctile(lcPRTFM,95);
percentile95th32 = prctile(lcPRTFP1,95);
percentile95th33 = prctile(lcPRTFP2,95);
percentile95th34 = prctile(lcPRTFP3,95);
percentile95th35 = prctile(lcPRTFP4,95);

%Dickey-Fuller test
%[h,pValue,stat,cValue,reg] = adftest(___) additionally returns the test 
%statistic, critical value, and a structure of regression statistics for 
%the hypothesis test.
%assume signifancia de 1%
[DFh1,DFpval1,DFstat1,DFcVal1,DFreg1] = adftest(lcFTSE100D,'model','ARD','test','F','alpha',0.01);
[DFh2,DFpval2,DFstat2,DFcVal2,DFreg2] = adftest(lcFTSE100W,'model','ARD','test','F','alpha',0.01);
[DFh3,DFpval3,DFstat3,DFcVal3,DFreg3] = adftest(lcFTSE100M,'model','ARD','test','F','alpha',0.01);
[DFh4,DFpval4,DFstat4,DFcVal4,DFreg4] = adftest(lcFTSE100P1,'model','ARD','test','F','alpha',0.01);
[DFh5,DFpval5,DFstat5,DFcVal5,DFreg5] = adftest(lcFTSE100P2,'model','ARD','test','F','alpha',0.01);
[DFh6,DFpval6,DFstat6,DFcVal6,DFreg6] = adftest(lcFTSE100P3,'model','ARD','test','F','alpha',0.01);
[DFh7,DFpval7,DFstat7,DFcVal7,DFreg7] = adftest(lcFTSE100P4,'model','ARD','test','F','alpha',0.01);
[DFh8,DFpval8,DFstat8,DFcVal8,DFreg8] = adftest(lcDAX30D,'model','ARD','test','F','alpha',0.01);
[DFh9,DFpval9,DFstat9,DFcVal9,DFreg9] = adftest(lcDAX30W,'model','ARD','test','F','alpha',0.01);
[DFh10,DFpval10,DFstat10,DFcVal10,DFreg10] = adftest(lcDAX30M,'model','ARD','test','F','alpha',0.01);
[DFh11,DFpval11,DFstat11,DFcVal11,DFreg11] = adftest(lcDAX30P1,'model','ARD','test','F','alpha',0.01);
[DFh12,DFpval12,DFstat12,DFcVal12,DFreg12] = adftest(lcDAX30P2,'model','ARD','test','F','alpha',0.01);
[DFh13,DFpval13,DFstat13,DFcVal13,DFreg13] = adftest(lcDAX30P3,'model','ARD','test','F','alpha',0.01);
[DFh14,DFpval14,DFstat14,DFcVal14,DFreg14] = adftest(lcDAX30P4,'model','ARD','test','F','alpha',0.01);
[DFh15,DFpval15,DFstat15,DFcVal15,DFreg15] = adftest(lcNIKKEI225D,'model','ARD','test','F','alpha',0.01);
[DFh16,DFpval16,DFstat16,DFcVal16,DFreg16] = adftest(lcNIKKEI225W,'model','ARD','test','F','alpha',0.01);
[DFh17,DFpval17,DFstat17,DFcVal17,DFreg17] = adftest(lcNIKKEI225M,'model','ARD','test','F','alpha',0.01);
[DFh18,DFpval18,DFstat18,DFcVal18,DFreg18] = adftest(lcNIKKEI225P1,'model','ARD','test','F','alpha',0.01);
[DFh19,DFpval19,DFstat19,DFcVal19,DFreg19] = adftest(lcNIKKEI225P2,'model','ARD','test','F','alpha',0.01);
[DFh20,DFpval20,DFstat20,DFcVal20,DFreg20] = adftest(lcNIKKEI225P3,'model','ARD','test','F','alpha',0.01);
[DFh21,DFpval21,DFstat21,DFcVal21,DFreg21] = adftest(lcNIKKEI225P4,'model','ARD','test','F','alpha',0.01);
[DFh22,DFpval22,DFstat22,DFcVal22,DFreg22] = adftest(lcSP500D,'model','ARD','test','F','alpha',0.01);
[DFh23,DFpval23,DFstat23,DFcVal23,DFreg23] = adftest(lcSP500W,'model','ARD','test','F','alpha',0.01);
[DFh24,DFpval24,DFstat24,DFcVal24,DFreg24] = adftest(lcSP500M,'model','ARD','test','F','alpha',0.01);
[DFh25,DFpval25,DFstat25,DFcVal25,DFreg25] = adftest(lcSP500P1,'model','ARD','test','F','alpha',0.01);
[DFh26,DFpval26,DFstat26,DFcVal26,DFreg26] = adftest(lcSP500P2,'model','ARD','test','F','alpha',0.01);
[DFh27,DFpval27,DFstat27,DFcVal27,DFreg27] = adftest(lcSP500P3,'model','ARD','test','F','alpha',0.01);
[DFh28,DFpval28,DFstat28,DFcVal28,DFreg28] = adftest(lcSP500P4,'model','ARD','test','F','alpha',0.01);
[DFh29,DFpval29,DFstat29,DFcVal29,DFreg29] = adftest(lcPRTFD,'model','ARD','test','F','alpha',0.01);
[DFh30,DFpval30,DFstat30,DFcVal30,DFreg30] = adftest(lcPRTFW,'model','ARD','test','F','alpha',0.01);
[DFh31,DFpval31,DFstat31,DFcVal31,DFreg31] = adftest(lcPRTFM,'model','ARD','test','F','alpha',0.01);
[DFh32,DFpval32,DFstat32,DFcVal32,DFreg32] = adftest(lcPRTFP1,'model','ARD','test','F','alpha',0.01);
[DFh33,DFpval33,DFstat33,DFcVal33,DFreg33] = adftest(lcPRTFP2,'model','ARD','test','F','alpha',0.01);
[DFh34,DFpval34,DFstat34,DFcVal34,DFreg34] = adftest(lcPRTFP3,'model','ARD','test','F','alpha',0.01);
[DFh35,DFpval35,DFstat35,DFcVal35,DFreg35] = adftest(lcPRTFP4,'model','ARD','test','F','alpha',0.01);

%Jarque-bera test
%[h,p,jbstat,critval] = jbtest(___) also returns the test statistic jbstat 
%and the critical value critval for the test.
%assume significancia de 5%
[JBh1,JBpval1,JBstat1,JBcval1] = jbtest(lcFTSE100D);
[JBh2,JBpval2,JBstat2,JBcval2] = jbtest(lcFTSE100W);
[JBh3,JBpval3,JBstat3,JBcval3] = jbtest(lcFTSE100M);
[JBh4,JBpval4,JBstat4,JBcval4] = jbtest(lcFTSE100P1);
[JBh5,JBpval5,JBstat5,JBcval5] = jbtest(lcFTSE100P2);
[JBh6,JBpval6,JBstat6,JBcval6] = jbtest(lcFTSE100P3);
[JBh7,JBpval7,JBstat7,JBcval7] = jbtest(lcFTSE100P4);
[JBh8,JBpval8,JBstat8,JBcval8] = jbtest(lcDAX30D);
[JBh9,JBpval9,JBstat9,JBcval9] = jbtest(lcDAX30W);
[JBh10,JBpval10,JBstat10,JBcval10] = jbtest(lcDAX30M);
[JBh11,JBpval11,JBstat11,JBcval11] = jbtest(lcDAX30P1);
[JBh12,JBpval12,JBstat12,JBcval12] = jbtest(lcDAX30P2);
[JBh13,JBpval13,JBstat13,JBcval13] = jbtest(lcDAX30P3);
[JBh14,JBpval14,JBstat14,JBcval14] = jbtest(lcDAX30P4);
[JBh15,JBpval15,JBstat15,JBcval15] = jbtest(lcNIKKEI225D);
[JBh16,JBpval16,JBstat16,JBcval16] = jbtest(lcNIKKEI225W);
[JBh17,JBpval17,JBstat17,JBcval17] = jbtest(lcNIKKEI225M);
[JBh18,JBpval18,JBstat18,JBcval18] = jbtest(lcNIKKEI225P1);
[JBh19,JBpval19,JBstat19,JBcval19] = jbtest(lcNIKKEI225P2);
[JBh20,JBpval20,JBstat20,JBcval20] = jbtest(lcNIKKEI225P3);
[JBh21,JBpval21,JBstat21,JBcval21] = jbtest(lcNIKKEI225P4);
[JBh22,JBpval22,JBstat22,JBcval22] = jbtest(lcSP500D);
[JBh23,JBpval23,JBstat23,JBcval23] = jbtest(lcSP500W);
[JBh24,JBpval24,JBstat24,JBcval24] = jbtest(lcSP500M);
[JBh25,JBpval25,JBstat25,JBcval25] = jbtest(lcSP500P1);
[JBh26,JBpval26,JBstat26,JBcval26] = jbtest(lcSP500P2);
[JBh27,JBpval27,JBstat27,JBcval27] = jbtest(lcSP500P3);
[JBh28,JBpval28,JBstat28,JBcval28] = jbtest(lcSP500P4);
[JBh29,JBpval29,JBstat29,JBcval29] = jbtest(lcPRTFD);
[JBh30,JBpval30,JBstat30,JBcval30] = jbtest(lcPRTFW);
[JBh31,JBpval31,JBstat31,JBcval31] = jbtest(lcPRTFM);
[JBh32,JBpval32,JBstat32,JBcval32] = jbtest(lcPRTFP1);
[JBh33,JBpval33,JBstat33,JBcval33] = jbtest(lcPRTFP2);
[JBh34,JBpval34,JBstat34,JBcval34] = jbtest(lcPRTFP3);
[JBh35,JBpval35,JBstat35,JBcval35] = jbtest(lcPRTFP4);

%table with preliminary statistics

rownames = {'n of observations';'mean';'std. dev';'skewness';'kurtosis';...
            'excess kurtosis';'minimum';'maximum';'5th percentile';...
            '95th percentile';'Dickey-Fuller';'Jarque-Bera'};
Daily = [nobv1;media1;std1;skewness1;kurtosis1;excesskurtosis1;...
         minval1;maxval1;percentile5th1;percentile95th1;DFstat1;JBstat1];
Weekly = [nobv2;media2;std2;skewness2;kurtosis2;excesskurtosis2;...
          minval2;maxval2;percentile5th2;percentile95th2;DFstat2;JBstat2];
Monthly = [nobv3;media3;std3;skewness3;kurtosis3;excesskurtosis3;...
          minval3;maxval3;percentile5th3;percentile95th3;DFstat3;JBstat3];
P1 = [nobv4;media4;std4;skewness4;kurtosis4;excesskurtosis4;...
          minval4;maxval4;percentile5th4;percentile95th4;DFstat4;JBstat4];
P2 = [nobv5;media5;std5;skewness5;kurtosis5;excesskurtosis5;...
          minval5;maxval5;percentile5th5;percentile95th5;DFstat5;JBstat5];
P3 = [nobv6;media6;std6;skewness6;kurtosis6;excesskurtosis6;...         
          minval6;maxval6;percentile5th6;percentile95th6;DFstat6;JBstat6];
P4 = [nobv7;media7;std7;skewness7;kurtosis7;excesskurtosis7;...
          minval7;maxval7;percentile5th7;percentile95th7;DFstat7;JBstat7];
FTSE100table = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(FTSE100table,'FTSE100table.xlsx');


rownames = {'n of observations';'mean';'std. dev';'skewness';'kurtosis';...
            'excess kurtosis';'minimum';'maximum';'5th percentile'; ...
            '95th percentile';'Dickey-Fuller';'Jarque-Bera'};
Daily = [nobv8;media8;std8;skewness8;kurtosis8;excesskurtosis8;minval8;...
    maxval8;percentile5th8;percentile95th8;DFstat8;JBstat8];
Weekly = [nobv9;media9;std9;skewness9;kurtosis9;excesskurtosis9;minval9;...
    maxval9;percentile5th9;percentile95th9;DFstat9;JBstat9];
Monthly = [nobv10;media10;std10;skewness10;kurtosis10;excesskurtosis10;...
    minval10;maxval10;percentile5th10;percentile95th10;DFstat10;JBstat10];
P1 = [nobv11;media11;std11;skewness11;kurtosis11;excesskurtosis11;minval11;...
    maxval11;percentile5th11;percentile95th11;DFstat11;JBstat11];
P2 = [nobv12;media12;std12;skewness12;kurtosis12;excesskurtosis12;minval12;...
    maxval12;percentile5th12;percentile95th12;DFstat12;JBstat12];...
P3 = [nobv13;media13;std13;skewness13;kurtosis13;excesskurtosis13;minval13;...
    maxval13;percentile5th13;percentile95th13;DFstat13;JBstat13];...
P4 = [nobv14;media14;std14;skewness14;kurtosis14;excesskurtosis14;minval14;...
    maxval14;percentile5th14;percentile95th14;DFstat14;JBstat14];
DAX30table = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(DAX30table,'DAX30table.xlsx');


rownames = {'n of observations';'mean';'std. dev';'skewness';'kurtosis';...
    'excess kurtosis';'minimum';'maximum';'5th percentile';...
    '95th percentile';'Dickey-Fuller';'Jarque-Bera'};
Daily = [nobv15;media15;std15;skewness15;kurtosis15;excesskurtosis15;...
      minval15;maxval15;percentile5th15;percentile95th15;DFstat15;JBstat15];
Weekly = [nobv16;media16;std16;skewness16;kurtosis16;excesskurtosis16;...
      minval16;maxval16;percentile5th16;percentile95th16;DFstat16;JBstat16];
Monthly = [nobv17;media17;std17;skewness17;kurtosis17;excesskurtosis17;...
      minval17;maxval17;percentile5th17;percentile95th17;DFstat17;JBstat17];
P1 = [nobv18;media18;std18;skewness18;kurtosis18;excesskurtosis18;minval18;...
    maxval18;percentile5th18;percentile95th18;DFstat18;JBstat18];
P2 = [nobv19;media19;std19;skewness19;kurtosis19;excesskurtosis19;minval19;...
    maxval19;percentile5th19;percentile95th19;DFstat19;JBstat19];
P3 = [nobv20;media20;std20;skewness20;kurtosis20;excesskurtosis20;minval20;...
    maxval20;percentile5th20;percentile95th20;DFstat20;JBstat20];
P4 = [nobv21;media21;std21;skewness21;kurtosis21;excesskurtosis21;minval21;...
    maxval21;percentile5th21;percentile95th21;DFstat21;JBstat21];
Nikkei225table = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(Nikkei225table,'Nikkei225table.xlsx');


rownames = {'n of observations';'mean';'std. dev';'skewness';'kurtosis';...
    'excess kurtosis';'minimum';'maximum';'5th percentile'; ...
    '95th percentile';'Dickey-Fuller';'Jarque-Bera'};
Daily = [nobv22;media22;std22;skewness22;kurtosis22;excesskurtosis22;...
      minval22;maxval22;percentile5th22;percentile95th22;DFstat22;JBstat22];
Weekly = [nobv23;media23;std23;skewness23;kurtosis23;excesskurtosis23;...
      minval23;maxval23;percentile5th23;percentile95th23;DFstat23;JBstat23];
Monthly = [nobv24;media24;std24;skewness24;kurtosis24;excesskurtosis24;...
      minval24;maxval24;percentile5th24;percentile95th24;DFstat24;JBstat24];
P1 = [nobv25;media25;std25;skewness25;kurtosis25;excesskurtosis25;...
      minval25;maxval25;percentile5th25;percentile95th25;DFstat25;JBstat25];
P2 = [nobv26;media26;std26;skewness26;kurtosis26;excesskurtosis26;...
      minval26;maxval26;percentile5th26;percentile95th26;DFstat26;JBstat26];
P3 = [nobv27;media27;std27;skewness27;kurtosis27;excesskurtosis27;...
      minval27;maxval27;percentile5th27;percentile95th27;DFstat27;JBstat27];
P4 = [nobv28;media28;std28;skewness28;kurtosis28;excesskurtosis28;...
      minval28;maxval28;percentile5th28;percentile95th28;DFstat28;JBstat28];
SP500table = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(SP500table,'SP500table.xlsx');


rownames = {'n of observations';'mean';'std. dev';'skewness';'kurtosis';...
    'excess kurtosis';'minimum';'maximum';'5th percentile'; ...
      '95th percentile';'Dickey-Fuller';'Jarque-Bera'};
Daily = [nobv29;media29;std29;skewness29;kurtosis29;excesskurtosis29;...
      minval29;maxval29;percentile5th29;percentile95th29;DFstat29;JBstat29];
Weekly = [nobv30;media30;std30;skewness30;kurtosis30;excesskurtosis30;...
      minval30;maxval30;percentile5th30;percentile95th30;DFstat30;JBstat30];
Monthly = [nobv31;media31;std31;skewness31;kurtosis31;excesskurtosis31;...
      minval31;maxval31;percentile5th31;percentile95th31;DFstat31;JBstat31];
P1 = [nobv32;media32;std32;skewness32;kurtosis32;excesskurtosis32;...
      minval32;maxval32;percentile5th32;percentile95th32;DFstat32;JBstat32];
P2 = [nobv33;media33;std33;skewness33;kurtosis33;excesskurtosis33;...
      minval33;maxval33;percentile5th33;percentile95th33;DFstat33;JBstat33];
P3 = [nobv34;media34;std34;skewness34;kurtosis34;excesskurtosis34;...
      minval34;maxval34;percentile5th34;percentile95th34;DFstat34;JBstat34];
P4 = [nobv35;media35;std35;skewness35;kurtosis35;excesskurtosis35;...
      minval35;maxval35;percentile5th35;percentile95th35;DFstat35;JBstat35];
PORTFOLIOtable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(PORTFOLIOtable,'PORTFOLIOtable.xlsx');

%clear DAX30daily Daily DAX30monthly DAX30P1 DAX30P2 DAX30P3 DAX30P4 DAX30table ...
%    DAX30weekly DFcVal1 DFcVal10 DFcVal11 DFcVal12 DFcVal13 DFcVal14 DFcVal15 ...
%    DFcVal16 DFcVal17 DFcVal18 DFcVal19 DFcVal2 DFcVal20 DFcVal21 DFcVal22 ...
%    DFcVal23 DFcVal24 DFcVal25 DFcVal26 DFcVal27 DFcVal28 DFcVal29 DFcVal3 ...
%    DFcVal30 DFcVal31 DFcVal32 DFcVal33 DFcVal34 DFcVal35 DFcVal4 DFcVal5 DFcVal6...
%    DFcVal7 DFcVal8 

%FITTING PROCESS

%fitting into a Normal distribuiton
[muFTSE100D,sigmaFTSE100D] = normfit(lcFTSE100D);
[muFTSE100W,sigmaFTSE100W] = normfit(lcFTSE100W);
[muFTSE100M,sigmaFTSE100M] = normfit(lcFTSE100M);
[muFTSE100P1,sigmaFTSE100P1] = normfit(lcFTSE100P1);
[muFTSE100P2,sigmaFTSE100P2] = normfit(lcFTSE100P2);
[muFTSE100P3,sigmaFTSE100P3] = normfit(lcFTSE100P3);
[muFTSE100P4,sigmaFTSE100P4] = normfit(lcFTSE100P4);
[muDAX30D,sigmaDAX30D] = normfit(lcDAX30D);
[muDAX30W,sigmaDAX30W] = normfit(lcDAX30W);
[muDAX30M,sigmaDAX30M] = normfit(lcDAX30M);
[muDAX30P1,sigmaDAX30P1] = normfit(lcDAX30P1);
[muDAX30P2,sigmaDAX30P2] = normfit(lcDAX30P2);
[muDAX30P3,sigmaDAX30P3] = normfit(lcDAX30P3);
[muDAX30P4,sigmaDAX30P4] = normfit(lcDAX30P4);
[muNIKKEI225D,sigmaNIKKEI225D] = normfit(lcNIKKEI225D);
[muNIKKEI225W,sigmaNIKKEI225W] = normfit(lcNIKKEI225W);
[muNIKKEI225M,sigmaNIKKEI225M] = normfit(lcNIKKEI225M);
[muNIKKEI225P1,sigmaNIKKEI225P1] = normfit(lcNIKKEI225P1);
[muNIKKEI225P2,sigmaNIKKEI225P2] = normfit(lcNIKKEI225P2);
[muNIKKEI225P3,sigmaNIKKEI225P3] = normfit(lcNIKKEI225P3);
[muNIKKEI225P4,sigmaNIKKEI225P4] = normfit(lcNIKKEI225P4);
[muSP500D,sigmaSP500D] = normfit(lcSP500D);
[muSP500W,sigmaSP500W] = normfit(lcSP500W);
[muSP500M,sigmaSP500M] = normfit(lcSP500M);
[muSP500P1,sigmaSP500P1] = normfit(lcSP500P1);
[muSP500P2,sigmaSP500P2] = normfit(lcSP500P2);
[muSP500P3,sigmaSP500P3] = normfit(lcSP500P3);
[muSP500P4,sigmaSP500P4] = normfit(lcSP500P4);
[muPRTFD,sigmaPRTFD] = normfit(lcPRTFD);
[muPRTFW,sigmaPRTFW] = normfit(lcPRTFW);
[muPRTFM,sigmaPRTFM] = normfit(lcPRTFM);
[muPRTFP1,sigmaPRTFP1] = normfit(lcPRTFP1);
[muPRTFP2,sigmaPRTFP2] = normfit(lcPRTFP2);
[muPRTFP3,sigmaPRTFP3] = normfit(lcPRTFP3);
[muPRTFP4,sigmaPRTFP4] = normfit(lcPRTFP4);


%SGT distribution - SKEWED GENERALISED T DISTRIBUTION
%fitting into SGT dsitribution

[parmhatFTSE100D, seFTSE100D, parmciFTSE100D, outputFTSE100D] = sgtfit(lcFTSE100D,0.005,1);
[parmhatFTSE100W, seFTSE100W, parmciFTSE100W, outputFTSE100W] = sgtfit(lcFTSE100W,0.005,1);
[parmhatFTSE100M, seFTSE100M, parmciFTSE100M, outputFTSE100M] = sgtfit(lcFTSE100M,0.005,1);
[parmhatFTSE100P1, seFTSE100P1, parmciFTSE100P1, outputFTSE100P1] = sgtfit(lcFTSE100P1,0.005,1);
[parmhatFTSE100P2, seFTSE100P2, parmciFTSE100P2, outputFTSE100P2] = sgtfit(lcFTSE100P2,0.005,1);
[parmhatFTSE100P3, seFTSE100P3, parmciFTSE100P3, outputFTSE100P3] = sgtfit(lcFTSE100P3,0.005,1);
[parmhatFTSE100P4, seFTSE100P4, parmciFTSE100P4, outputFTSE100P4] = sgtfit(lcFTSE100P4,0.005,1);
[parmhatDAX30D, seDAX30D, parmciDAX30D, outputDAX30D] = sgtfit(lcDAX30D,0.005,1);
[parmhatDAX30W, seDAX30W, parmciDAX30W, outputDAX30W] = sgtfit(lcDAX30W,0.005,1);
[parmhatDAX30M, seDAX30M, parmciDAX30M, outputDAX30M] = sgtfit(lcDAX30M,0.005,1);
[parmhatDAX30P1, seDAX30P1, parmciDAX30P1, outputDAX30P1] = sgtfit(lcDAX30P1,0.005,1);
[parmhatDAX30P2, seDAX30P2, parmciDAX30P2, outputDAX30P2] = sgtfit(lcDAX30P2,0.005,1);
[parmhatDAX30P3, seDAX30P3, parmciDAX30P3, outputDAX30P3] = sgtfit(lcDAX30P3,0.005,1);
[parmhatDAX30P4, seDAX30P4, parmciDAX30P4, outputDAX30P4] = sgtfit(lcDAX30P4,0.005,1);
[parmhatNIKKEI225D, seNIKKEI225D, parmciNIKKEI225D, outputNIKKEI225D] = sgtfit(lcNIKKEI225D,0.005,1);
[parmhatNIKKEI225W, seNIKKEI225W, parmciNIKKEI225W, outputNIKKEI225W] = sgtfit(lcNIKKEI225W,0.005,1);
[parmhatNIKKEI225M, seNIKKEI225M, parmciNIKKEI225M, outputNIKKEI225M] = sgtfit(lcNIKKEI225M,0.005,1);
[parmhatNIKKEI225P1, seNIKKEI225P1, parmciNIKKEI225P1, outputNIKKEI225P1] = sgtfit(lcNIKKEI225P1,0.005,1);
[parmhatNIKKEI225P2, seNIKKEI225P2, parmciNIKKEI225P2, outputNIKKEI225P2] = sgtfit(lcNIKKEI225P2,0.005,1);
[parmhatNIKKEI225P3, seNIKKEI225P3, parmciNIKKEI225P3, outputNIKKEI225P3] = sgtfit(lcNIKKEI225P3,0.005,1);
[parmhatNIKKEI225P4, seNIKKEI225P4, parmciNIKKEI225P4, outputNIKKEI225P4] = sgtfit(lcNIKKEI225P4,0.005,1);
[parmhatSP500D, seSP500D, parmciSP500D, outputSP500D] = sgtfit(lcSP500D,0.005,1);
[parmhatSP500W, seSP500W, parmciSP500W, outputSP500W] = sgtfit(lcSP500W,0.005,1);
[parmhatSP500M, seSP500M, parmciSP500M, outputSP500M] = sgtfit(lcSP500M,0.005,1); %ML is not reliable (small amount of data)
[parmhatSP500P1, seSP500P1, parmciSP500P1, outputSP500P1] = sgtfit(lcSP500P1,0.005,1);
[parmhatSP500P2, seSP500P2, parmciSP500P2, outputSP500P2] = sgtfit(lcSP500P2,0.005,1);
[parmhatSP500P3, seSP500P3, parmciSP500P3, outputSP500P3] = sgtfit(lcSP500P3,0.005,1);
[parmhatSP500P4, seSP500P4, parmciSP500P4, outputSP500P4] = sgtfit(lcSP500P4,0.005,1);
[parmhatPRTFD, sePRTFD, parmciPRTFD, outputPRTFD] = sgtfit(lcPRTFD,0.005,1);
[parmhatPRTFW, sePRTFW, parmciPRTFW, outputPRTFW] = sgtfit(lcPRTFW,0.005,1);
[parmhatPRTFM, sePRTFM, parmciPRTFM, outputPRTFM] = sgtfit(lcPRTFM,0.005,1);
[parmhatPRTFP1, sePRTFP1, parmciPRTFP1, outputPRTFP1] = sgtfit(lcPRTFP1,0.005,1);
[parmhatPRTFP2, sePRTFP2, parmciPRTFP2, outputPRTFP2] = sgtfit(lcPRTFP2,0.005,1);
[parmhatPRTFP3, sePRTFP3, parmciPRTFP3, outputPRTFP3] = sgtfit(lcPRTFP3,0.005,1);
[parmhatPRTFP4, sePRTFP4, parmciPRTFP4, outputPRTFP4] = sgtfit(lcPRTFP4,0.005,1);


%GPD - GENERALISED PARETO DISSTRIBUTION
%fitting into GP distribution
%first of all, the matlab GPD fit and parameters estimate is done ignoring 
%the location parameter (mu - mean). For that reason we could also ignore 
%that parameter ou rewrite the distribution to Z = X - mu
%then, having in attention the GPD being implemented on the right tail,
%for the implementation of the left tail we need to consider simetric
%results and aply the fitting process of the new right tail over a
%certain threshold

%choosing the threshold of 
%5% of observations: 
xFTSE100d_5pc = sort(lcFTSE100D,'ascend');
n_gpd_1_5pc = ceil(0.05*nobv1);
gpd_sample_data_FTSEd_5pc = xFTSE100d_5pc(1:n_gpd_1_5pc);

xFTSE100w_5pc = sort(lcFTSE100W,'ascend');
n_gpd_2_5pc = ceil(0.05*nobv2);
gpd_sample_data_FTSEw_5pc = xFTSE100w_5pc(1:n_gpd_2_5pc);

xFTSE100m_5pc = sort(lcFTSE100M,'ascend');
n_gpd_3_5pc = ceil(0.05*nobv3);
gpd_sample_data_FTSEm_5pc = xFTSE100m_5pc(1:n_gpd_3_5pc);

xFTSE100p1_5pc = sort(lcFTSE100P1,'ascend');
n_gpd_4_5pc = ceil(0.05*nobv4);
gpd_sample_data_FTSEp1_5pc = xFTSE100p1_5pc(1:n_gpd_4_5pc);

xFTSE100p2_5pc = sort(lcFTSE100P2,'ascend');
n_gpd_5_5pc = ceil(0.05*nobv5);
gpd_sample_data_FTSEp2_5pc = xFTSE100p2_5pc(1:n_gpd_5_5pc);

xFTSE100p3_5pc = sort(lcFTSE100P3,'ascend');
n_gpd_6_5pc = ceil(0.05*nobv6);
gpd_sample_data_FTSEp3_5pc = xFTSE100p3_5pc(1:n_gpd_6_5pc);

xFTSE100p4_5pc = sort(lcFTSE100P4,'ascend');
n_gpd_7_5pc = ceil(0.05*nobv7);
gpd_sample_data_FTSEp4_5pc = xFTSE100p4_5pc(1:n_gpd_7_5pc);

xDAX30d_5pc = sort(lcDAX30D,'ascend');
n_gpd_8_5pc = ceil(0.05*nobv8);
gpd_sample_data_DAXd_5pc = xDAX30d_5pc(1:n_gpd_8_5pc);

xDAX30w_5pc = sort(lcDAX30W,'ascend');
n_gpd_9_5pc = ceil(0.05*nobv9);
gpd_sample_data_DAXw_5pc = xDAX30w_5pc(1:n_gpd_9_5pc);

xDAX30m_5pc = sort(lcDAX30M,'ascend');
n_gpd_10_5pc = ceil(0.05*nobv10);
gpd_sample_data_DAXm_5pc = xDAX30m_5pc(1:n_gpd_10_5pc);

xDAX30p1_5pc = sort(lcDAX30P1,'ascend');
n_gpd_11_5pc = ceil(0.05*nobv11);
gpd_sample_data_DAXp1_5pc = xDAX30p1_5pc(1:n_gpd_11_5pc);

xDAX30p2_5pc = sort(lcDAX30P2,'ascend');
n_gpd_12_5pc = ceil(0.05*nobv12);
gpd_sample_data_DAXp2_5pc = xDAX30p2_5pc(1:n_gpd_12_5pc);

xDAX30p3_5pc = sort(lcDAX30P3,'ascend');
n_gpd_13_5pc = ceil(0.05*nobv13);
gpd_sample_data_DAXp3_5pc = xDAX30p3_5pc(1:n_gpd_13_5pc);

xDAX30p4_5pc = sort(lcDAX30P4,'ascend');
n_gpd_14_5pc = ceil(0.05*nobv14);
gpd_sample_data_DAXp4_5pc = xDAX30p4_5pc(1:n_gpd_14_5pc);

xNIKKEId_5pc = sort(lcNIKKEI225D,'ascend');
n_gpd_15_5pc = ceil(0.05*nobv15);
gpd_sample_data_NIKKEId_5pc = xNIKKEId_5pc(1:n_gpd_15_5pc);

xNIKKEIw_5pc = sort(lcNIKKEI225W,'ascend');
n_gpd_16_5pc = ceil(0.05*nobv16);
gpd_sample_data_NIKKEIw_5pc = xNIKKEIw_5pc(1:n_gpd_16_5pc);

xNIKKEIm_5pc = sort(lcNIKKEI225M,'ascend');
n_gpd_17_5pc = ceil(0.05*nobv17);
gpd_sample_data_NIKKEIm_5pc = xNIKKEIm_5pc(1:n_gpd_17_5pc);

xNIKKEIp1_5pc = sort(lcNIKKEI225P1,'ascend');
n_gpd_18_5pc = ceil(0.05*nobv18);
gpd_sample_data_NIKKEIp1_5pc = xNIKKEIp1_5pc(1:n_gpd_18_5pc);

xNIKKEIp2_5pc = sort(lcNIKKEI225P2,'ascend');
n_gpd_19_5pc = ceil(0.05*nobv19);
gpd_sample_data_NIKKEIp2_5pc = xNIKKEIp2_5pc(1:n_gpd_19_5pc);

xNIKKEIp3_5pc = sort(lcNIKKEI225P3,'ascend');
n_gpd_20_5pc = ceil(0.05*nobv20);
gpd_sample_data_NIKKEIp3_5pc = xNIKKEIp3_5pc(1:n_gpd_20_5pc);

xNIKKEIp4_5pc = sort(lcNIKKEI225P4,'ascend');
n_gpd_21_5pc = ceil(0.05*nobv21);
gpd_sample_data_NIKKEIp4_5pc = xNIKKEIp4_5pc(1:n_gpd_21_5pc);

xSPd_5pc = sort(lcSP500D,'ascend');
n_gpd_22_5pc = ceil(0.05*nobv22);
gpd_sample_data_SPd_5pc = xSPd_5pc(1:n_gpd_22_5pc);

xSPw_5pc = sort(lcSP500W,'ascend');
n_gpd_23_5pc = ceil(0.05*nobv23);
gpd_sample_data_SPw_5pc = xSPw_5pc(1:n_gpd_23_5pc);

xSPm_5pc = sort(lcSP500M,'ascend');
n_gpd_24_5pc = ceil(0.05*nobv24);
gpd_sample_data_SPm_5pc = xSPm_5pc(1:n_gpd_24_5pc);

xSPp1_5pc = sort(lcSP500P1,'ascend');
n_gpd_25_5pc = ceil(0.05*nobv25);
gpd_sample_data_SPp1_5pc = xSPp1_5pc(1:n_gpd_25_5pc);

xSPp2_5pc = sort(lcSP500P2,'ascend');
n_gpd_26_5pc = ceil(0.05*nobv26);
gpd_sample_data_SPp2_5pc = xSPp2_5pc(1:n_gpd_26_5pc);

xSPp3_5pc = sort(lcSP500P3,'ascend');
n_gpd_27_5pc = ceil(0.05*nobv27);
gpd_sample_data_SPp3_5pc = xSPp3_5pc(1:n_gpd_27_5pc);

xSPp4_5pc = sort(lcSP500P4,'ascend');
n_gpd_28_5pc = ceil(0.05*nobv28);
gpd_sample_data_SPp4_5pc = xSPp4_5pc(1:n_gpd_28_5pc);

xPRTFd_5pc = sort(lcPRTFD,'ascend');
n_gpd_29_5pc = ceil(0.05*nobv29);
gpd_sample_data_PRTFd_5pc = xPRTFd_5pc(1:n_gpd_29_5pc);

xPRTFw_5pc = sort(lcPRTFW,'ascend');
n_gpd_30_5pc = ceil(0.05*nobv30);
gpd_sample_data_PRTFw_5pc = xPRTFw_5pc(1:n_gpd_30_5pc);

xPRTFm_5pc = sort(lcPRTFM,'ascend');
n_gpd_31_5pc = ceil(0.05*nobv31);
gpd_sample_data_PRTFm_5pc = xPRTFm_5pc(1:n_gpd_31_5pc);

xPRTFp1_5pc = sort(lcPRTFP1,'ascend');
n_gpd_32_5pc = ceil(0.05*nobv32);
gpd_sample_data_PRTFp1_5pc = xPRTFp1_5pc(1:n_gpd_32_5pc);

xPRTFp2_5pc = sort(lcPRTFP2,'ascend');
n_gpd_33_5pc = ceil(0.05*nobv33);
gpd_sample_data_PRTFp2_5pc = xPRTFp2_5pc(1:n_gpd_33_5pc);

xPRTFp3_5pc = sort(lcPRTFP3,'ascend');
n_gpd_34_5pc = ceil(0.05*nobv34);
gpd_sample_data_PRTFp3_5pc = xPRTFp3_5pc(1:n_gpd_34_5pc);

xPRTFp4_5pc = sort(lcPRTFP4,'ascend');
n_gpd_35_5pc = ceil(0.05*nobv35);
gpd_sample_data_PRTFp4_5pc = xPRTFp4_5pc(1:n_gpd_35_5pc);

%'restart' the location, simply subtracting the mean 5%
gpd_sample_data_FTSEd_5pc = gpd_sample_data_FTSEd_5pc - media1;
gpd_sample_data_FTSEw_5pc = gpd_sample_data_FTSEw_5pc - media2;
gpd_sample_data_FTSEm_5pc = gpd_sample_data_FTSEm_5pc - media3;
gpd_sample_data_FTSEp1_5pc = gpd_sample_data_FTSEp1_5pc - media4;
gpd_sample_data_FTSEp2_5pc = gpd_sample_data_FTSEp2_5pc - media5;
gpd_sample_data_FTSEp3_5pc = gpd_sample_data_FTSEp3_5pc - media6;
gpd_sample_data_FTSEp4_5pc = gpd_sample_data_FTSEp4_5pc - media7;

gpd_sample_data_DAXd_5pc = gpd_sample_data_DAXd_5pc - media8;
gpd_sample_data_DAXw_5pc = gpd_sample_data_DAXw_5pc - media9;
gpd_sample_data_DAXm_5pc = gpd_sample_data_DAXm_5pc - media10;
gpd_sample_data_DAXp1_5pc = gpd_sample_data_DAXp1_5pc - media11;
gpd_sample_data_DAXp2_5pc = gpd_sample_data_DAXp2_5pc - media12;
gpd_sample_data_DAXp3_5pc = gpd_sample_data_DAXp3_5pc - media13;
gpd_sample_data_DAXp4_5pc = gpd_sample_data_DAXp4_5pc - media14;

gpd_sample_data_NIKKEId_5pc = gpd_sample_data_NIKKEId_5pc - media15;
gpd_sample_data_NIKKEIw_5pc = gpd_sample_data_NIKKEIw_5pc - media16;
gpd_sample_data_NIKKEIm_5pc = gpd_sample_data_NIKKEIm_5pc - media17;
gpd_sample_data_NIKKEIp1_5pc = gpd_sample_data_NIKKEIp1_5pc - media18;
gpd_sample_data_NIKKEIp2_5pc = gpd_sample_data_NIKKEIp2_5pc - media19;
gpd_sample_data_NIKKEIp3_5pc = gpd_sample_data_NIKKEIp3_5pc - media20;
gpd_sample_data_NIKKEIp4_5pc = gpd_sample_data_NIKKEIp4_5pc - media21;

gpd_sample_data_SPd_5pc = gpd_sample_data_SPd_5pc - media22;
gpd_sample_data_SPw_5pc = gpd_sample_data_SPw_5pc - media23;
gpd_sample_data_SPm_5pc = gpd_sample_data_SPm_5pc - media24;
gpd_sample_data_SPp1_5pc = gpd_sample_data_SPp1_5pc - media25;
gpd_sample_data_SPp2_5pc = gpd_sample_data_SPp2_5pc - media26;
gpd_sample_data_SPp3_5pc = gpd_sample_data_SPp3_5pc - media27;
gpd_sample_data_SPp4_5pc = gpd_sample_data_SPp4_5pc - media28;

gpd_sample_data_PRTFd_5pc = gpd_sample_data_PRTFd_5pc - media29;
gpd_sample_data_PRTFw_5pc = gpd_sample_data_PRTFw_5pc - media30;
gpd_sample_data_PRTFm_5pc = gpd_sample_data_PRTFm_5pc - media31;
gpd_sample_data_PRTFp1_5pc = gpd_sample_data_PRTFp1_5pc - media32;
gpd_sample_data_PRTFp2_5pc = gpd_sample_data_PRTFp2_5pc - media33;
gpd_sample_data_PRTFp3_5pc = gpd_sample_data_PRTFp3_5pc - media34;
gpd_sample_data_PRTFp4_5pc = gpd_sample_data_PRTFp4_5pc - media35;

%turning the data simetric 5%
gpd_sample_data_FTSEd_5pc = -gpd_sample_data_FTSEd_5pc;
gpd_sample_data_FTSEw_5pc = -gpd_sample_data_FTSEw_5pc;
gpd_sample_data_FTSEm_5pc = -gpd_sample_data_FTSEm_5pc;
gpd_sample_data_FTSEp1_5pc = -gpd_sample_data_FTSEp1_5pc;
gpd_sample_data_FTSEp2_5pc = -gpd_sample_data_FTSEp2_5pc;
gpd_sample_data_FTSEp3_5pc = -gpd_sample_data_FTSEp3_5pc;
gpd_sample_data_FTSEp4_5pc = -gpd_sample_data_FTSEp4_5pc;

gpd_sample_data_DAXd_5pc = -gpd_sample_data_DAXd_5pc;
gpd_sample_data_DAXw_5pc = -gpd_sample_data_DAXw_5pc;
gpd_sample_data_DAXm_5pc = -gpd_sample_data_DAXm_5pc;
gpd_sample_data_DAXp1_5pc = -gpd_sample_data_DAXp1_5pc;
gpd_sample_data_DAXp2_5pc = -gpd_sample_data_DAXp2_5pc;
gpd_sample_data_DAXp3_5pc = -gpd_sample_data_DAXp3_5pc;
gpd_sample_data_DAXp4_5pc = -gpd_sample_data_DAXp4_5pc;

gpd_sample_data_NIKKEId_5pc = -gpd_sample_data_NIKKEId_5pc;
gpd_sample_data_NIKKEIw_5pc = -gpd_sample_data_NIKKEIw_5pc;
gpd_sample_data_NIKKEIm_5pc = -gpd_sample_data_NIKKEIm_5pc;
gpd_sample_data_NIKKEIp1_5pc = -gpd_sample_data_NIKKEIp1_5pc;
gpd_sample_data_NIKKEIp2_5pc = -gpd_sample_data_NIKKEIp2_5pc;
gpd_sample_data_NIKKEIp3_5pc = -gpd_sample_data_NIKKEIp3_5pc;
gpd_sample_data_NIKKEIp4_5pc = -gpd_sample_data_NIKKEIp4_5pc;

gpd_sample_data_SPd_5pc = -gpd_sample_data_SPd_5pc;
gpd_sample_data_SPw_5pc = -gpd_sample_data_SPw_5pc;
gpd_sample_data_SPm_5pc = -gpd_sample_data_SPm_5pc;
gpd_sample_data_SPp1_5pc = -gpd_sample_data_SPp1_5pc;
gpd_sample_data_SPp2_5pc = -gpd_sample_data_SPp2_5pc;
gpd_sample_data_SPp3_5pc = -gpd_sample_data_SPp3_5pc;
gpd_sample_data_SPp4_5pc = -gpd_sample_data_SPp4_5pc;

gpd_sample_data_PRTFd_5pc = -gpd_sample_data_PRTFd_5pc;
gpd_sample_data_PRTFw_5pc = -gpd_sample_data_PRTFw_5pc;
gpd_sample_data_PRTFm_5pc = -gpd_sample_data_PRTFm_5pc;
gpd_sample_data_PRTFp1_5pc = -gpd_sample_data_PRTFp1_5pc;
gpd_sample_data_PRTFp2_5pc = -gpd_sample_data_PRTFp2_5pc;
gpd_sample_data_PRTFp3_5pc = -gpd_sample_data_PRTFp3_5pc;
gpd_sample_data_PRTFp4_5pc = -gpd_sample_data_PRTFp4_5pc;

%fliping, turning the sample ascending 5%
gpd_sample_data_FTSEd_5pc = flip(gpd_sample_data_FTSEd_5pc);
gpd_sample_data_FTSEw_5pc = flip(gpd_sample_data_FTSEw_5pc);
gpd_sample_data_FTSEm_5pc = flip(gpd_sample_data_FTSEm_5pc);
gpd_sample_data_FTSEp1_5pc = flip(gpd_sample_data_FTSEp1_5pc);
gpd_sample_data_FTSEp2_5pc = flip(gpd_sample_data_FTSEp2_5pc);
gpd_sample_data_FTSEp3_5pc = flip(gpd_sample_data_FTSEp3_5pc);
gpd_sample_data_FTSEp4_5pc = flip(gpd_sample_data_FTSEp4_5pc);

gpd_sample_data_DAXd_5pc = flip(gpd_sample_data_DAXd_5pc);
gpd_sample_data_DAXw_5pc = flip(gpd_sample_data_DAXw_5pc);
gpd_sample_data_DAXm_5pc = flip(gpd_sample_data_DAXm_5pc);
gpd_sample_data_DAXp1_5pc = flip(gpd_sample_data_DAXp1_5pc);
gpd_sample_data_DAXp2_5pc = flip(gpd_sample_data_DAXp2_5pc);
gpd_sample_data_DAXp3_5pc = flip(gpd_sample_data_DAXp3_5pc);
gpd_sample_data_DAXp4_5pc = flip(gpd_sample_data_DAXp4_5pc);

gpd_sample_data_NIKKEId_5pc = flip(gpd_sample_data_NIKKEId_5pc);
gpd_sample_data_NIKKEIw_5pc = flip(gpd_sample_data_NIKKEIw_5pc);
gpd_sample_data_NIKKEIm_5pc = flip(gpd_sample_data_NIKKEIm_5pc);
gpd_sample_data_NIKKEIp1_5pc = flip(gpd_sample_data_NIKKEIp1_5pc);
gpd_sample_data_NIKKEIp2_5pc = flip(gpd_sample_data_NIKKEIp2_5pc);
gpd_sample_data_NIKKEIp3_5pc = flip(gpd_sample_data_NIKKEIp3_5pc);
gpd_sample_data_NIKKEIp4_5pc = flip(gpd_sample_data_NIKKEIp4_5pc);

gpd_sample_data_SPd_5pc = flip(gpd_sample_data_SPd_5pc);
gpd_sample_data_SPw_5pc = flip(gpd_sample_data_SPw_5pc);
gpd_sample_data_SPm_5pc = flip(gpd_sample_data_SPm_5pc);
gpd_sample_data_SPp1_5pc = flip(gpd_sample_data_SPp1_5pc);
gpd_sample_data_SPp2_5pc = flip(gpd_sample_data_SPp2_5pc);
gpd_sample_data_SPp3_5pc = flip(gpd_sample_data_SPp3_5pc);
gpd_sample_data_SPp4_5pc = flip(gpd_sample_data_SPp4_5pc);

gpd_sample_data_PRTFd_5pc = flip(gpd_sample_data_PRTFd_5pc);
gpd_sample_data_PRTFw_5pc = flip(gpd_sample_data_PRTFw_5pc);
gpd_sample_data_PRTFm_5pc = flip(gpd_sample_data_PRTFm_5pc);
gpd_sample_data_PRTFp1_5pc = flip(gpd_sample_data_PRTFp1_5pc);
gpd_sample_data_PRTFp2_5pc = flip(gpd_sample_data_PRTFp2_5pc);
gpd_sample_data_PRTFp3_5pc = flip(gpd_sample_data_PRTFp3_5pc);
gpd_sample_data_PRTFp4_5pc = flip(gpd_sample_data_PRTFp4_5pc);

%fitting process 5%
%{
parmhatFTSEd_5pc = gpfit(gpd_sample_data_FTSEd_5pc);
parmhatFTSEw_5pc = gpfit(gpd_sample_data_FTSEw_5pc);
parmhatFTSEm_5pc = gpfit(gpd_sample_data_FTSEm_5pc); %ML is not reliably (small amount of data)
parmhatFTSEp1_5pc = gpfit(gpd_sample_data_FTSEp1_5pc); %ML is not reliably (small amount of data)
parmhatFTSEp2_5pc = gpfit(gpd_sample_data_FTSEp2_5pc); %ML is not reliably (small amount of data)
parmhatFTSEp3_5pc = gpfit(gpd_sample_data_FTSEp3_5pc);%ML is not reliably (small amount of data)
parmhatFTSEp4_5pc = gpfit(gpd_sample_data_FTSEp4_5pc);

parmhatDAXd_5pc = gpfit(gpd_sample_data_DAXd_5pc);
parmhatDAXw_5pc = gpfit(gpd_sample_data_DAXw_5pc);
parmhatDAXm_5pc = gpfit(gpd_sample_data_DAXm_5pc); %ML is not reliably (small amount of data)
parmhatDAXp1_5pc = gpfit(gpd_sample_data_DAXp1_5pc); %ML is not reliably (small amount of data)
parmhatDAXp2_5pc = gpfit(gpd_sample_data_DAXp2_5pc); %ML is not reliably (small amount of data)
parmhatDAXp3_5pc = gpfit(gpd_sample_data_DAXp3_5pc);%ML is not reliably (small amount of data)
parmhatDAXp4_5pc = gpfit(gpd_sample_data_DAXp4_5pc);

parmhatNIKKEId_5pc = gpfit(gpd_sample_data_NIKKEId_5pc);
parmhatNIKKEIw_5pc = gpfit(gpd_sample_data_NIKKEIw_5pc);
parmhatNIKKEIm_5pc = gpfit(gpd_sample_data_NIKKEIm_5pc); %ML is not reliably (small amount of data)
parmhatNIKKEIp1_5pc = gpfit(gpd_sample_data_NIKKEIp1_5pc); %ML is not reliably (small amount of data)
parmhatNIKKEIp2_5pc = gpfit(gpd_sample_data_NIKKEIp2_5pc); %ML is not reliably (small amount of data)
parmhatNIKKEIp3_5pc = gpfit(gpd_sample_data_NIKKEIp3_5pc); %ML is not reliably (small amount of data)
parmhatNIKKEIp4_5pc = gpfit(gpd_sample_data_NIKKEIp4_5pc);

parmhatSPd_5pc = gpfit(gpd_sample_data_SPd_5pc);
parmhatSPw_5pc = gpfit(gpd_sample_data_SPw_5pc);
parmhatSPm_5pc = gpfit(gpd_sample_data_SPm_5pc); %ML is not reliably (small amount of data)
parmhatSPp1_5pc = gpfit(gpd_sample_data_SPp1_5pc); %ML is not reliably (small amount of data)
parmhatSPp2_5pc = gpfit(gpd_sample_data_SPp2_5pc); %ML is not reliably (small amount of data)
parmhatSPp3_5pc = gpfit(gpd_sample_data_SPp3_5pc); %ML is not reliably (small amount of data)
parmhatSPp4_5pc = gpfit(gpd_sample_data_SPp4_5pc);

parmhatPRTFd_5pc = gpfit(gpd_sample_data_PRTFd_5pc);
parmhatPRTFw_5pc = gpfit(gpd_sample_data_PRTFw_5pc);
parmhatPRTFm_5pc = gpfit(gpd_sample_data_PRTFm_5pc); %ML is not reliably (small amount of data)
parmhatPRTFp1_5pc = gpfit(gpd_sample_data_PRTFp1_5pc); %ML is not reliably (small amount of data)
parmhatPRTFp2_5pc = gpfit(gpd_sample_data_PRTFp2_5pc); %ML is not reliably (small amount of data)
parmhatPRTFp3_5pc = gpfit(gpd_sample_data_PRTFp3_5pc); %ML is not reliably (small amount of data)
parmhatPRTFp4_5pc = gpfit(gpd_sample_data_PRTFp4_5pc); 
%}
gpdfit_DAXd_5pc = fitdist(transpose(gpd_sample_data_DAXd_5pc),'GeneralizedPareto','Theta',2.41);
gpdfit_DAXw_5pc = fitdist(transpose(gpd_sample_data_DAXw_5pc),'GeneralizedPareto','Theta',5.1046);
gpdfit_DAXm_5pc = fitdist(transpose(gpd_sample_data_DAXm_5pc),'GeneralizedPareto','Theta',10.3166);
gpdfit_DAXp1_5pc = fitdist(transpose(gpd_sample_data_DAXp1_5pc),'GeneralizedPareto','Theta',2.9525);
gpdfit_DAXp2_5pc = fitdist(transpose(gpd_sample_data_DAXp2_5pc),'GeneralizedPareto','Theta',4.0526);%ML converges to boundary point
gpdfit_DAXp3_5pc = fitdist(transpose(gpd_sample_data_DAXp3_5pc),'GeneralizedPareto','Theta',6.4103);
gpdfit_DAXp4_5pc = fitdist(transpose(gpd_sample_data_DAXp4_5pc),'GeneralizedPareto','Theta',2.0825);

gpdfit_FTSEd_5pc = fitdist(transpose(gpd_sample_data_FTSEd_5pc),'GeneralizedPareto','Theta',1.8850);
gpdfit_FTSEw_5pc = fitdist(transpose(gpd_sample_data_FTSEw_5pc),'GeneralizedPareto','Theta',3.7655);
gpdfit_FTSEm_5pc = fitdist(transpose(gpd_sample_data_FTSEm_5pc),'GeneralizedPareto','Theta',7.5122); %ML converges to boundary point
gpdfit_FTSEp1_5pc = fitdist(transpose(gpd_sample_data_FTSEp1_5pc),'GeneralizedPareto','Theta',2.2948);
gpdfit_FTSEp2_5pc = fitdist(transpose(gpd_sample_data_FTSEp2_5pc),'GeneralizedPareto','Theta',3.3208);
gpdfit_FTSEp3_5pc = fitdist(transpose(gpd_sample_data_FTSEp3_5pc),'GeneralizedPareto','Theta',6.31);
gpdfit_FTSEp4_5pc = fitdist(transpose(gpd_sample_data_FTSEp4_5pc),'GeneralizedPareto','Theta',1.5941);

gpdfit_NIKKEId_5pc = fitdist(transpose(gpd_sample_data_NIKKEId_5pc),'GeneralizedPareto','Theta',2.3502);
gpdfit_NIKKEIw_5pc = fitdist(transpose(gpd_sample_data_NIKKEIw_5pc),'GeneralizedPareto','Theta',5.1861);
gpdfit_NIKKEIm_5pc = fitdist(transpose(gpd_sample_data_NIKKEIm_5pc),'GeneralizedPareto','Theta',10.2594);
gpdfit_NIKKEIp1_5pc = fitdist(transpose(gpd_sample_data_NIKKEIp1_5pc),'GeneralizedPareto','Theta',2.5107);
gpdfit_NIKKEIp2_5pc = fitdist(transpose(gpd_sample_data_NIKKEIp2_5pc),'GeneralizedPareto','Theta',4.5594);
gpdfit_NIKKEIp3_5pc = fitdist(transpose(gpd_sample_data_NIKKEIp3_5pc),'GeneralizedPareto','Theta',3.7555);
gpdfit_NIKKEIp4_5pc = fitdist(transpose(gpd_sample_data_NIKKEIp4_5pc),'GeneralizedPareto','Theta',2.1192);

gpdfit_SPd_5pc = fitdist(transpose(gpd_sample_data_SPd_5pc),'GeneralizedPareto','Theta',1.933);
gpdfit_SPw_5pc = fitdist(transpose(gpd_sample_data_SPw_5pc),'GeneralizedPareto','Theta',4.1067);
gpdfit_SPm_5pc = fitdist(transpose(gpd_sample_data_SPm_5pc),'GeneralizedPareto','Theta',6.8536);
gpdfit_SPp1_5pc = fitdist(transpose(gpd_sample_data_SPp1_5pc),'GeneralizedPareto','Theta',2.2994);
gpdfit_SPp2_5pc = fitdist(transpose(gpd_sample_data_SPp2_5pc),'GeneralizedPareto','Theta',4.1129);
gpdfit_SPp3_5pc = fitdist(transpose(gpd_sample_data_SPp3_5pc),'GeneralizedPareto','Theta',8.2874);
gpdfit_SPp4_5pc = fitdist(transpose(gpd_sample_data_SPp4_5pc),'GeneralizedPareto','Theta',1.5821);

gpdfit_PRTFd_5pc = fitdist(transpose(gpd_sample_data_PRTFd_5pc),'GeneralizedPareto','Theta',1.9692);
gpdfit_PRTFw_5pc = fitdist(transpose(gpd_sample_data_PRTFw_5pc),'GeneralizedPareto','Theta',4.1316);
gpdfit_PRTFm_5pc = fitdist(transpose(gpd_sample_data_PRTFm_5pc),'GeneralizedPareto','Theta',9.7183);
gpdfit_PRTFp1_5pc = fitdist(transpose(gpd_sample_data_PRTFp1_5pc),'GeneralizedPareto','Theta',2.4905);
gpdfit_PRTFp2_5pc = fitdist(transpose(gpd_sample_data_PRTFp2_5pc),'GeneralizedPareto','Theta',3.7335); %ML converges to a boundary
gpdfit_PRTFp3_5pc = fitdist(transpose(gpd_sample_data_PRTFp3_5pc),'GeneralizedPareto','Theta',6.6271);
gpdfit_PRTFp4_5pc = fitdist(transpose(gpd_sample_data_PRTFp4_5pc),'GeneralizedPareto','Theta',1.6946);

%---//////---
%20% of observations:
xFTSE100d_20pc = sort(lcFTSE100D,'ascend');
n_gpd_1_20pc = ceil(0.2*nobv1);
gpd_sample_data_FTSEd_20pc = xFTSE100d_20pc(1:n_gpd_1_20pc);

xFTSE100w_20pc = sort(lcFTSE100W,'ascend');
n_gpd_2_20pc = ceil(0.2*nobv2);
gpd_sample_data_FTSEw_20pc = xFTSE100w_20pc(1:n_gpd_2_20pc);

xFTSE100m_20pc = sort(lcFTSE100M,'ascend');
n_gpd_3_20pc = ceil(0.2*nobv3);
gpd_sample_data_FTSEm_20pc = xFTSE100m_20pc(1:n_gpd_3_20pc);

xFTSE100p1_20pc = sort(lcFTSE100P1,'ascend');
n_gpd_4_20pc = ceil(0.2*nobv4);
gpd_sample_data_FTSEp1_20pc = xFTSE100p1_20pc(1:n_gpd_4_20pc);

xFTSE100p2_20pc = sort(lcFTSE100P2,'ascend');
n_gpd_5_20pc = ceil(0.2*nobv5);
gpd_sample_data_FTSEp2_20pc = xFTSE100p2_20pc(1:n_gpd_5_20pc);

xFTSE100p3_20pc = sort(lcFTSE100P3,'ascend');
n_gpd_6_20pc = ceil(0.2*nobv6);
gpd_sample_data_FTSEp3_20pc = xFTSE100p3_20pc(1:n_gpd_6_20pc);

xFTSE100p4_20pc = sort(lcFTSE100P4,'ascend');
n_gpd_7_20pc = ceil(0.2*nobv7);
gpd_sample_data_FTSEp4_20pc = xFTSE100p4_20pc(1:n_gpd_7_20pc);

xDAX30d_20pc = sort(lcDAX30D,'ascend');
n_gpd_8_20pc = ceil(0.2*nobv8);
gpd_sample_data_DAXd_20pc = xDAX30d_20pc(1:n_gpd_8_20pc);

xDAX30w_20pc = sort(lcDAX30W,'ascend');
n_gpd_9_20pc = ceil(0.2*nobv9);
gpd_sample_data_DAXw_20pc = xDAX30w_20pc(1:n_gpd_9_20pc);

xDAX30m_20pc = sort(lcDAX30M,'ascend');
n_gpd_10_20pc = ceil(0.2*nobv10);
gpd_sample_data_DAXm_20pc = xDAX30m_20pc(1:n_gpd_10_20pc);

xDAX30p1_20pc = sort(lcDAX30P1,'ascend');
n_gpd_11_20pc = ceil(0.2*nobv11);
gpd_sample_data_DAXp1_20pc = xDAX30p1_20pc(1:n_gpd_11_20pc);

xDAX30p2_20pc = sort(lcDAX30P2,'ascend');
n_gpd_12_20pc = ceil(0.2*nobv12);
gpd_sample_data_DAXp2_20pc = xDAX30p2_20pc(1:n_gpd_12_20pc);

xDAX30p3_20pc = sort(lcDAX30P3,'ascend');
n_gpd_13_20pc = ceil(0.2*nobv13);
gpd_sample_data_DAXp3_20pc = xDAX30p3_20pc(1:n_gpd_13_20pc);

xDAX30p4_20pc = sort(lcDAX30P4,'ascend');
n_gpd_14_20pc = ceil(0.2*nobv14);
gpd_sample_data_DAXp4_20pc = xDAX30p4_20pc(1:n_gpd_14_20pc);

xNIKKEId_20pc = sort(lcNIKKEI225D,'ascend');
n_gpd_15_20pc = ceil(0.2*nobv15);
gpd_sample_data_NIKKEId_20pc = xNIKKEId_20pc(1:n_gpd_15_20pc);

xNIKKEIw_20pc = sort(lcNIKKEI225W,'ascend');
n_gpd_16_20pc = ceil(0.2*nobv16);
gpd_sample_data_NIKKEIw_20pc = xNIKKEIw_20pc(1:n_gpd_16_20pc);

xNIKKEIm_20pc = sort(lcNIKKEI225M,'ascend');
n_gpd_17_20pc = ceil(0.2*nobv17);
gpd_sample_data_NIKKEIm_20pc = xNIKKEIm_20pc(1:n_gpd_17_20pc);

xNIKKEIp1_20pc = sort(lcNIKKEI225P1,'ascend');
n_gpd_18_20pc = ceil(0.2*nobv18);
gpd_sample_data_NIKKEIp1_20pc = xNIKKEIp1_20pc(1:n_gpd_18_20pc);

xNIKKEIp2_20pc = sort(lcNIKKEI225P2,'ascend');
n_gpd_19_20pc = ceil(0.2*nobv19);
gpd_sample_data_NIKKEIp2_20pc = xNIKKEIp2_20pc(1:n_gpd_19_20pc);

xNIKKEIp3_20pc = sort(lcNIKKEI225P3,'ascend');
n_gpd_20_20pc = ceil(0.2*nobv20);
gpd_sample_data_NIKKEIp3_20pc = xNIKKEIp3_20pc(1:n_gpd_20_20pc);

xNIKKEIp4_20pc = sort(lcNIKKEI225P4,'ascend');
n_gpd_21_20pc = ceil(0.2*nobv21);
gpd_sample_data_NIKKEIp4_20pc = xNIKKEIp4_20pc(1:n_gpd_21_20pc);

xSPd_20pc = sort(lcSP500D,'ascend');
n_gpd_22_20pc = ceil(0.2*nobv22);
gpd_sample_data_SPd_20pc = xSPd_20pc(1:n_gpd_22_20pc);

xSPw_20pc = sort(lcSP500W,'ascend');
n_gpd_23_20pc = ceil(0.2*nobv23);
gpd_sample_data_SPw_20pc = xSPw_20pc(1:n_gpd_23_20pc);

xSPm_20pc = sort(lcSP500M,'ascend');
n_gpd_24_20pc = ceil(0.2*nobv24);
gpd_sample_data_SPm_20pc = xSPm_20pc(1:n_gpd_24_20pc);

xSPp1_20pc = sort(lcSP500P1,'ascend');
n_gpd_25_20pc = ceil(0.2*nobv25);
gpd_sample_data_SPp1_20pc = xSPp1_20pc(1:n_gpd_25_20pc);

xSPp2_20pc = sort(lcSP500P2,'ascend');
n_gpd_26_20pc = ceil(0.2*nobv26);
gpd_sample_data_SPp2_20pc = xSPp2_20pc(1:n_gpd_26_20pc);

xSPp3_20pc = sort(lcSP500P3,'ascend');
n_gpd_27_20pc = ceil(0.2*nobv27);
gpd_sample_data_SPp3_20pc = xSPp3_20pc(1:n_gpd_27_20pc);

xSPp4_20pc = sort(lcSP500P4,'ascend');
n_gpd_28_20pc = ceil(0.2*nobv28);
gpd_sample_data_SPp4_20pc = xSPp4_20pc(1:n_gpd_28_20pc);

xPRTFd_20pc = sort(lcPRTFD,'ascend');
n_gpd_29_20pc = ceil(0.2*nobv29);
gpd_sample_data_PRTFd_20pc = xPRTFd_20pc(1:n_gpd_29_20pc);

xPRTFw_20pc = sort(lcPRTFW,'ascend');
n_gpd_30_20pc = ceil(0.2*nobv30);
gpd_sample_data_PRTFw_20pc = xPRTFw_20pc(1:n_gpd_30_20pc);

xPRTFm_20pc = sort(lcPRTFM,'ascend');
n_gpd_31_20pc = ceil(0.2*nobv31);
gpd_sample_data_PRTFm_20pc = xPRTFm_20pc(1:n_gpd_31_20pc);

xPRTFp1_20pc = sort(lcPRTFP1,'ascend');
n_gpd_32_20pc = ceil(0.2*nobv32);
gpd_sample_data_PRTFp1_20pc = xPRTFp1_20pc(1:n_gpd_32_20pc);

xPRTFp2_20pc = sort(lcPRTFP2,'ascend');
n_gpd_33_20pc = ceil(0.2*nobv33);
gpd_sample_data_PRTFp2_20pc = xPRTFp2_20pc(1:n_gpd_33_20pc);

xPRTFp3_20pc = sort(lcPRTFP3,'ascend');
n_gpd_34_20pc = ceil(0.2*nobv34);
gpd_sample_data_PRTFp3_20pc = xPRTFp3_20pc(1:n_gpd_34_20pc);

xPRTFp4_20pc = sort(lcPRTFP4,'ascend');
n_gpd_35_20pc = ceil(0.2*nobv35);
gpd_sample_data_PRTFp4_20pc = xPRTFp4_20pc(1:n_gpd_35_20pc);

%'restart' the location, simply subtracting the mean 20%
gpd_sample_data_FTSEd_20pc = gpd_sample_data_FTSEd_20pc - media1;
gpd_sample_data_FTSEw_20pc = gpd_sample_data_FTSEw_20pc - media2;
gpd_sample_data_FTSEm_20pc = gpd_sample_data_FTSEm_20pc - media3;
gpd_sample_data_FTSEp1_20pc = gpd_sample_data_FTSEp1_20pc - media4;
gpd_sample_data_FTSEp2_20pc = gpd_sample_data_FTSEp2_20pc - media5;
gpd_sample_data_FTSEp3_20pc = gpd_sample_data_FTSEp3_20pc - media6;
gpd_sample_data_FTSEp4_20pc = gpd_sample_data_FTSEp4_20pc - media7;

gpd_sample_data_DAXd_20pc = gpd_sample_data_DAXd_20pc - media8;
gpd_sample_data_DAXw_20pc = gpd_sample_data_DAXw_20pc - media9;
gpd_sample_data_DAXm_20pc = gpd_sample_data_DAXm_20pc - media10;
gpd_sample_data_DAXp1_20pc = gpd_sample_data_DAXp1_20pc - media11;
gpd_sample_data_DAXp2_20pc = gpd_sample_data_DAXp2_20pc - media12;
gpd_sample_data_DAXp3_20pc = gpd_sample_data_DAXp3_20pc - media13;
gpd_sample_data_DAXp4_20pc = gpd_sample_data_DAXp4_20pc - media14;

gpd_sample_data_NIKKEId_20pc = gpd_sample_data_NIKKEId_20pc - media15;
gpd_sample_data_NIKKEIw_20pc = gpd_sample_data_NIKKEIw_20pc - media16;
gpd_sample_data_NIKKEIm_20pc = gpd_sample_data_NIKKEIm_20pc - media17;
gpd_sample_data_NIKKEIp1_20pc = gpd_sample_data_NIKKEIp1_20pc - media18;
gpd_sample_data_NIKKEIp2_20pc = gpd_sample_data_NIKKEIp2_20pc - media19;
gpd_sample_data_NIKKEIp3_20pc = gpd_sample_data_NIKKEIp3_20pc - media20;
gpd_sample_data_NIKKEIp4_20pc = gpd_sample_data_NIKKEIp4_20pc - media21;

gpd_sample_data_SPd_20pc = gpd_sample_data_SPd_20pc - media22;
gpd_sample_data_SPw_20pc = gpd_sample_data_SPw_20pc - media23;
gpd_sample_data_SPm_20pc = gpd_sample_data_SPm_20pc - media24;
gpd_sample_data_SPp1_20pc = gpd_sample_data_SPp1_20pc - media25;
gpd_sample_data_SPp2_20pc = gpd_sample_data_SPp2_20pc - media26;
gpd_sample_data_SPp3_20pc = gpd_sample_data_SPp3_20pc - media27;
gpd_sample_data_SPp4_20pc = gpd_sample_data_SPp4_20pc - media28;

gpd_sample_data_PRTFd_20pc = gpd_sample_data_PRTFd_20pc - media29;
gpd_sample_data_PRTFw_20pc = gpd_sample_data_PRTFw_20pc - media30;
gpd_sample_data_PRTFm_20pc = gpd_sample_data_PRTFm_20pc - media31;
gpd_sample_data_PRTFp1_20pc = gpd_sample_data_PRTFp1_20pc - media32;
gpd_sample_data_PRTFp2_20pc = gpd_sample_data_PRTFp2_20pc - media33;
gpd_sample_data_PRTFp3_20pc = gpd_sample_data_PRTFp3_20pc - media34;
gpd_sample_data_PRTFp4_20pc = gpd_sample_data_PRTFp4_20pc - media35;

%turning the data simetric 20%
gpd_sample_data_FTSEd_20pc = -gpd_sample_data_FTSEd_20pc;
gpd_sample_data_FTSEw_20pc = -gpd_sample_data_FTSEw_20pc;
gpd_sample_data_FTSEm_20pc = -gpd_sample_data_FTSEm_20pc;
gpd_sample_data_FTSEp1_20pc = -gpd_sample_data_FTSEp1_20pc;
gpd_sample_data_FTSEp2_20pc = -gpd_sample_data_FTSEp2_20pc;
gpd_sample_data_FTSEp3_20pc = -gpd_sample_data_FTSEp3_20pc;
gpd_sample_data_FTSEp4_20pc = -gpd_sample_data_FTSEp4_20pc;

gpd_sample_data_DAXd_20pc = -gpd_sample_data_DAXd_20pc;
gpd_sample_data_DAXw_20pc = -gpd_sample_data_DAXw_20pc;
gpd_sample_data_DAXm_20pc = -gpd_sample_data_DAXm_20pc;
gpd_sample_data_DAXp1_20pc = -gpd_sample_data_DAXp1_20pc;
gpd_sample_data_DAXp2_20pc = -gpd_sample_data_DAXp2_20pc;
gpd_sample_data_DAXp3_20pc = -gpd_sample_data_DAXp3_20pc;
gpd_sample_data_DAXp4_20pc = -gpd_sample_data_DAXp4_20pc;

gpd_sample_data_NIKKEId_20pc = -gpd_sample_data_NIKKEId_20pc;
gpd_sample_data_NIKKEIw_20pc = -gpd_sample_data_NIKKEIw_20pc;
gpd_sample_data_NIKKEIm_20pc = -gpd_sample_data_NIKKEIm_20pc;
gpd_sample_data_NIKKEIp1_20pc = -gpd_sample_data_NIKKEIp1_20pc;
gpd_sample_data_NIKKEIp2_20pc = -gpd_sample_data_NIKKEIp2_20pc;
gpd_sample_data_NIKKEIp3_20pc = -gpd_sample_data_NIKKEIp3_20pc;
gpd_sample_data_NIKKEIp4_20pc = -gpd_sample_data_NIKKEIp4_20pc;

gpd_sample_data_SPd_20pc = -gpd_sample_data_SPd_20pc;
gpd_sample_data_SPw_20pc = -gpd_sample_data_SPw_20pc;
gpd_sample_data_SPm_20pc = -gpd_sample_data_SPm_20pc;
gpd_sample_data_SPp1_20pc = -gpd_sample_data_SPp1_20pc;
gpd_sample_data_SPp2_20pc = -gpd_sample_data_SPp2_20pc;
gpd_sample_data_SPp3_20pc = -gpd_sample_data_SPp3_20pc;
gpd_sample_data_SPp4_20pc = -gpd_sample_data_SPp4_20pc;

gpd_sample_data_PRTFd_20pc = -gpd_sample_data_PRTFd_20pc;
gpd_sample_data_PRTFw_20pc = -gpd_sample_data_PRTFw_20pc;
gpd_sample_data_PRTFm_20pc = -gpd_sample_data_PRTFm_20pc;
gpd_sample_data_PRTFp1_20pc = -gpd_sample_data_PRTFp1_20pc;
gpd_sample_data_PRTFp2_20pc = -gpd_sample_data_PRTFp2_20pc;
gpd_sample_data_PRTFp3_20pc = -gpd_sample_data_PRTFp3_20pc;
gpd_sample_data_PRTFp4_20pc = -gpd_sample_data_PRTFp4_20pc;

%fliping, turning the sample ascending 20%
gpd_sample_data_FTSEd_20pc = flip(gpd_sample_data_FTSEd_20pc);
gpd_sample_data_FTSEw_20pc = flip(gpd_sample_data_FTSEw_20pc);
gpd_sample_data_FTSEm_20pc = flip(gpd_sample_data_FTSEm_20pc);
gpd_sample_data_FTSEp1_20pc = flip(gpd_sample_data_FTSEp1_20pc);
gpd_sample_data_FTSEp2_20pc = flip(gpd_sample_data_FTSEp2_20pc);
gpd_sample_data_FTSEp3_20pc = flip(gpd_sample_data_FTSEp3_20pc);
gpd_sample_data_FTSEp4_20pc = flip(gpd_sample_data_FTSEp4_20pc);

gpd_sample_data_DAXd_20pc = flip(gpd_sample_data_DAXd_20pc);
gpd_sample_data_DAXw_20pc = flip(gpd_sample_data_DAXw_20pc);
gpd_sample_data_DAXm_20pc = flip(gpd_sample_data_DAXm_20pc);
gpd_sample_data_DAXp1_20pc = flip(gpd_sample_data_DAXp1_20pc);
gpd_sample_data_DAXp2_20pc = flip(gpd_sample_data_DAXp2_20pc);
gpd_sample_data_DAXp3_20pc = flip(gpd_sample_data_DAXp3_20pc);
gpd_sample_data_DAXp4_20pc = flip(gpd_sample_data_DAXp4_20pc);

gpd_sample_data_NIKKEId_20pc = flip(gpd_sample_data_NIKKEId_20pc);
gpd_sample_data_NIKKEIw_20pc = flip(gpd_sample_data_NIKKEIw_20pc);
gpd_sample_data_NIKKEIm_20pc = flip(gpd_sample_data_NIKKEIm_20pc);
gpd_sample_data_NIKKEIp1_20pc = flip(gpd_sample_data_NIKKEIp1_20pc);
gpd_sample_data_NIKKEIp2_20pc = flip(gpd_sample_data_NIKKEIp2_20pc);
gpd_sample_data_NIKKEIp3_20pc = flip(gpd_sample_data_NIKKEIp3_20pc);
gpd_sample_data_NIKKEIp4_20pc = flip(gpd_sample_data_NIKKEIp4_20pc);

gpd_sample_data_SPd_20pc = flip(gpd_sample_data_SPd_20pc);
gpd_sample_data_SPw_20pc = flip(gpd_sample_data_SPw_20pc);
gpd_sample_data_SPm_20pc = flip(gpd_sample_data_SPm_20pc);
gpd_sample_data_SPp1_20pc = flip(gpd_sample_data_SPp1_20pc);
gpd_sample_data_SPp2_20pc = flip(gpd_sample_data_SPp2_20pc);
gpd_sample_data_SPp3_20pc = flip(gpd_sample_data_SPp3_20pc);
gpd_sample_data_SPp4_20pc = flip(gpd_sample_data_SPp4_20pc);

gpd_sample_data_PRTFd_20pc = flip(gpd_sample_data_PRTFd_20pc);
gpd_sample_data_PRTFw_20pc = flip(gpd_sample_data_PRTFw_20pc);
gpd_sample_data_PRTFm_20pc = flip(gpd_sample_data_PRTFm_20pc);
gpd_sample_data_PRTFp1_20pc = flip(gpd_sample_data_PRTFp1_20pc);
gpd_sample_data_PRTFp2_20pc = flip(gpd_sample_data_PRTFp2_20pc);
gpd_sample_data_PRTFp3_20pc = flip(gpd_sample_data_PRTFp3_20pc);
gpd_sample_data_PRTFp4_20pc = flip(gpd_sample_data_PRTFp4_20pc);

%fitting process 20%
%{
parmhatFTSEd_20pc = gpfit(gpd_sample_data_FTSEd_20pc);
parmhatFTSEw_20pc = gpfit(gpd_sample_data_FTSEw_20pc);
parmhatFTSEm_20pc = gpfit(gpd_sample_data_FTSEm_20pc);%ML is not reliably (small amount of data)
parmhatFTSEp1_20pc = gpfit(gpd_sample_data_FTSEp1_20pc);
parmhatFTSEp2_20pc = gpfit(gpd_sample_data_FTSEp2_20pc);
parmhatFTSEp3_20pc = gpfit(gpd_sample_data_FTSEp3_20pc);%ML is not reliably (small amount of data)
parmhatFTSEp4_20pc = gpfit(gpd_sample_data_FTSEp4_20pc);

parmhatDAXd_20pc = gpfit(gpd_sample_data_DAXd_20pc);
parmhatDAXw_20pc = gpfit(gpd_sample_data_DAXw_20pc);
parmhatDAXm_20pc = gpfit(gpd_sample_data_DAXm_20pc);
parmhatDAXp1_20pc = gpfit(gpd_sample_data_DAXp1_20pc);
parmhatDAXp2_20pc = gpfit(gpd_sample_data_DAXp2_20pc);%ML is not reliably (small amount of data)
parmhatDAXp3_20pc = gpfit(gpd_sample_data_DAXp3_20pc);%ML is not reliably (small amount of data)
parmhatDAXp4_20pc = gpfit(gpd_sample_data_DAXp4_20pc);

parmhatNIKKEId_20pc = gpfit(gpd_sample_data_NIKKEId_20pc);
parmhatNIKKEIw_20pc = gpfit(gpd_sample_data_NIKKEIw_20pc);
parmhatNIKKEIm_20pc = gpfit(gpd_sample_data_NIKKEIm_20pc);
parmhatNIKKEIp1_20pc = gpfit(gpd_sample_data_NIKKEIp1_20pc);
parmhatNIKKEIp2_20pc = gpfit(gpd_sample_data_NIKKEIp2_20pc);
parmhatNIKKEIp3_20pc = gpfit(gpd_sample_data_NIKKEIp3_20pc); %ML is not reliably (small amount of data)
parmhatNIKKEIp4_20pc = gpfit(gpd_sample_data_NIKKEIp4_20pc);

parmhatSPd_20pc = gpfit(gpd_sample_data_SPd_20pc);
parmhatSPw_20pc = gpfit(gpd_sample_data_SPw_20pc);
parmhatSPm_20pc = gpfit(gpd_sample_data_SPm_20pc); %ML is not reliably (small amount of data)
parmhatSPp1_20pc = gpfit(gpd_sample_data_SPp1_20pc);
parmhatSPp2_20pc = gpfit(gpd_sample_data_SPp2_20pc);
parmhatSPp3_20pc = gpfit(gpd_sample_data_SPp3_20pc); %ML is not reliably (small amount of data)
parmhatSPp4_20pc = gpfit(gpd_sample_data_SPp4_20pc);

parmhatPRTFd_20pc = gpfit(gpd_sample_data_PRTFd_20pc);
parmhatPRTFw_20pc = gpfit(gpd_sample_data_PRTFw_20pc);
parmhatPRTFm_20pc = gpfit(gpd_sample_data_PRTFm_20pc);
parmhatPRTFp1_20pc = gpfit(gpd_sample_data_PRTFp1_20pc); %ML is not reliably (small amount of data)
parmhatPRTFp2_20pc = gpfit(gpd_sample_data_PRTFp2_20pc); %ML is not reliably (small amount of data)
parmhatPRTFp3_20pc = gpfit(gpd_sample_data_PRTFp3_20pc); %ML is not reliably (small amount of data)
parmhatPRTFp4_20pc = gpfit(gpd_sample_data_PRTFp4_20pc); 
%}
gpdfit_DAXd_20pc = fitdist(transpose(gpd_sample_data_DAXd_20pc),'GeneralizedPareto','Theta',0.929);
gpdfit_DAXw_20pc = fitdist(transpose(gpd_sample_data_DAXw_20pc),'GeneralizedPareto','Theta',2.2336);
gpdfit_DAXm_20pc = fitdist(transpose(gpd_sample_data_DAXm_20pc),'GeneralizedPareto','Theta',3.9584);
gpdfit_DAXp1_20pc = fitdist(transpose(gpd_sample_data_DAXp1_20pc),'GeneralizedPareto','Theta',1.3962);
gpdfit_DAXp2_20pc = fitdist(transpose(gpd_sample_data_DAXp2_20pc),'GeneralizedPareto','Theta',1.2614);
gpdfit_DAXp3_20pc = fitdist(transpose(gpd_sample_data_DAXp3_20pc),'GeneralizedPareto','Theta',2.2225);
gpdfit_DAXp4_20pc = fitdist(transpose(gpd_sample_data_DAXp4_20pc),'GeneralizedPareto','Theta',0.7660);

gpdfit_FTSEd_20pc = fitdist(transpose(gpd_sample_data_FTSEd_20pc),'GeneralizedPareto','Theta',0.7057);
gpdfit_FTSEw_20pc = fitdist(transpose(gpd_sample_data_FTSEw_20pc),'GeneralizedPareto','Theta',1.5968);
gpdfit_FTSEm_20pc = fitdist(transpose(gpd_sample_data_FTSEm_20pc),'GeneralizedPareto','Theta',2.9016);
gpdfit_FTSEp1_20pc = fitdist(transpose(gpd_sample_data_FTSEp1_20pc),'GeneralizedPareto','Theta',0.9680);
gpdfit_FTSEp2_20pc = fitdist(transpose(gpd_sample_data_FTSEp2_20pc),'GeneralizedPareto','Theta',1.2507);
gpdfit_FTSEp3_20pc = fitdist(transpose(gpd_sample_data_FTSEp3_20pc),'GeneralizedPareto','Theta',2.2383);
gpdfit_FTSEp4_20pc = fitdist(transpose(gpd_sample_data_FTSEp4_20pc),'GeneralizedPareto','Theta',0.6210);

gpdfit_NIKKEId_20pc = fitdist(transpose(gpd_sample_data_NIKKEId_20pc),'GeneralizedPareto','Theta',0.9581);
gpdfit_NIKKEIw_20pc = fitdist(transpose(gpd_sample_data_NIKKEIw_20pc),'GeneralizedPareto','Theta',2.1532);
gpdfit_NIKKEIm_20pc = fitdist(transpose(gpd_sample_data_NIKKEIm_20pc),'GeneralizedPareto','Theta',4.5821);
gpdfit_NIKKEIp1_20pc = fitdist(transpose(gpd_sample_data_NIKKEIp1_20pc),'GeneralizedPareto','Theta',1.4192);
gpdfit_NIKKEIp2_20pc = fitdist(transpose(gpd_sample_data_NIKKEIp2_20pc),'GeneralizedPareto','Theta',1.69);
gpdfit_NIKKEIp3_20pc = fitdist(transpose(gpd_sample_data_NIKKEIp3_20pc),'GeneralizedPareto','Theta',1.9556);
gpdfit_NIKKEIp4_20pc = fitdist(transpose(gpd_sample_data_NIKKEIp4_20pc),'GeneralizedPareto','Theta',0.8164);

gpdfit_SPd_20pc = fitdist(transpose(gpd_sample_data_SPd_20pc),'GeneralizedPareto','Theta',0.6855);
gpdfit_SPw_20pc = fitdist(transpose(gpd_sample_data_SPw_20pc),'GeneralizedPareto','Theta',1.5012);
gpdfit_SPm_20pc = fitdist(transpose(gpd_sample_data_SPm_20pc),'GeneralizedPareto','Theta',3.1220);
gpdfit_SPp1_20pc = fitdist(transpose(gpd_sample_data_SPp1_20pc),'GeneralizedPareto','Theta',1.1337);
gpdfit_SPp2_20pc = fitdist(transpose(gpd_sample_data_SPp2_20pc),'GeneralizedPareto','Theta',1.3665);
gpdfit_SPp3_20pc = fitdist(transpose(gpd_sample_data_SPp3_20pc),'GeneralizedPareto','Theta',3.3032);
gpdfit_SPp4_20pc = fitdist(transpose(gpd_sample_data_SPp4_20pc),'GeneralizedPareto','Theta',0.5592);

gpdfit_PRTFd_20pc = fitdist(transpose(gpd_sample_data_PRTFd_20pc),'GeneralizedPareto','Theta',0.7707);
gpdfit_PRTFw_20pc = fitdist(transpose(gpd_sample_data_PRTFw_20pc),'GeneralizedPareto','Theta',1.9531);
gpdfit_PRTFm_20pc = fitdist(transpose(gpd_sample_data_PRTFm_20pc),'GeneralizedPareto','Theta',2.8492);
gpdfit_PRTFp1_20pc = fitdist(transpose(gpd_sample_data_PRTFp1_20pc),'GeneralizedPareto','Theta',1.0142);
gpdfit_PRTFp2_20pc = fitdist(transpose(gpd_sample_data_PRTFp2_20pc),'GeneralizedPareto','Theta',1.2692);
gpdfit_PRTFp3_20pc = fitdist(transpose(gpd_sample_data_PRTFp3_20pc),'GeneralizedPareto','Theta',2.1321);
gpdfit_PRTFp4_20pc = fitdist(transpose(gpd_sample_data_PRTFp4_20pc),'GeneralizedPareto','Theta',0.6549);

%distribution fitter estimated paramaters
%parmhatFTSEd_5pc = gpdfit_FTSEd_5pc.ParameterValues;




%evaluated gpd representation
evaluategpd_DAXd_20pc_struct = load('evaluategpd_DAXd_20pc.mat');
evaluategpd_DAXd_20pc = evaluategpd_DAXd_20pc_struct.evaluategpd_DAXd_20pc;
evaluategpd_DAXd_5pc_struct = load('evaluategpd_DAXd_5pc.mat');
evaluategpd_DAXd_5pc = evaluategpd_DAXd_5pc_struct.evaluategpd_DAXd_5pc;
evaluategpd_DAXm_20pc_struct = load('evaluategpd_DAXm_20pc.mat');
evaluategpd_DAXm_20pc = evaluategpd_DAXm_20pc_struct.evaluategpd_DAXm_20pc;
evaluategpd_DAXm_5pc_struct = load('evaluategpd_DAXm_5pc.mat');
evaluategpd_DAXm_5pc = evaluategpd_DAXm_5pc_struct.evaluategpd_DAXm_5pc;
evaluategpd_DAXw_20pc_struct = load('evaluategpd_DAXw_20pc.mat');
evaluategpd_DAXw_20pc = evaluategpd_DAXw_20pc_struct.evaluategpd_DAXw_20pc;
evaluategpd_DAXw_5pc_struct = load('evaluategpd_DAXw_5pc.mat');
evaluategpd_DAXw_5pc = evaluategpd_DAXw_5pc_struct.evaluategpd_DAXw_5pc;
evaluategpd_DAXp1_20pc_struct = load('evaluategpd_DAXp1_20pc.mat');
evaluategpd_DAXp1_20pc = evaluategpd_DAXp1_20pc_struct.evaluategpd_DAXp1_20pc;
evaluategpd_DAXp1_5pc_struct = load('evaluategpd_DAXp1_5pc.mat');
evaluategpd_DAXp1_5pc = evaluategpd_DAXp1_5pc_struct.evaluategpd_DAXp1_5pc;
evaluategpd_DAXp2_20pc_struct = load('evaluategpd_DAXp2_20pc.mat');
evaluategpd_DAXp2_20pc = evaluategpd_DAXp2_20pc_struct.evaluategpd_DAXp2_20pc;
evaluategpd_DAXp2_5pc_struct = load('evaluategpd_DAXp2_5pc.mat');
evaluategpd_DAXp2_5pc = evaluategpd_DAXp2_5pc_struct.evaluategpd_DAXp2_5pc;
evaluategpd_DAXp3_20pc_struct = load('evaluategpd_DAXp3_20pc.mat');
evaluategpd_DAXp3_20pc = evaluategpd_DAXp3_20pc_struct.evaluategpd_DAXp3_20pc;
evaluategpd_DAXp3_5pc_struct = load('evaluategpd_DAXp3_5pc.mat');
evaluategpd_DAXp3_5pc = evaluategpd_DAXp3_5pc_struct.evaluategpd_DAXp3_5pc;
evaluategpd_DAXp4_20pc_struct = load('evaluategpd_DAXp4_20pc.mat');
evaluategpd_DAXp4_20pc = evaluategpd_DAXp4_20pc_struct.evaluategpd_DAXp4_20pc;
evaluategpd_DAXp4_5pc_struct = load('evaluategpd_DAXp4_5pc.mat');
evaluategpd_DAXp4_5pc = evaluategpd_DAXp4_5pc_struct.evaluategpd_DAXp4_5pc;
evaluategpd_FTSEd_20pc_struct = load('evaluategpd_FTSEd_20pc.mat');
evaluategpd_FTSEd_20pc = evaluategpd_FTSEd_20pc_struct.evaluategpd_FTSEd_20pc;
evaluategpd_FTSEd_5pc_struct = load('evaluategpd_FTSEd_5pc.mat');
evaluategpd_FTSEd_5pc = evaluategpd_FTSEd_5pc_struct.evaluategpd_FTSEd_5pc;
evaluategpd_FTSEm_20pc_struct = load('evaluategpd_FTSEm_20pc.mat');
evaluategpd_FTSEm_20pc = evaluategpd_FTSEm_20pc_struct.evaluategpd_FTSEm_20pc;
evaluategpd_FTSEm_5pc_struct = load('evaluategpd_FTSEm_5pc.mat');
evaluategpd_FTSEm_5pc = evaluategpd_FTSEm_5pc_struct.evaluategpd_FTSEm_5pc;
evaluategpd_FTSEw_20pc_struct = load('evaluategpd_FTSEw_20pc.mat');
evaluategpd_FTSEw_20pc = evaluategpd_FTSEw_20pc_struct.evaluategpd_FTSEw_20pc;
evaluategpd_FTSEw_5pc_struct = load('evaluategpd_FTSEw_5pc.mat');
evaluategpd_FTSEw_5pc = evaluategpd_FTSEw_5pc_struct.evaluategpd_FTSEw_5pc;
evaluategpd_FTSEp1_20pc_struct = load('evaluategpd_FTSEp1_20pc.mat');
evaluategpd_FTSEp1_20pc = evaluategpd_FTSEp1_20pc_struct.evaluategpd_FTSEp1_20pc;
evaluategpd_FTSEp1_5pc_struct = load('evaluategpd_FTSEp1_5pc.mat');
evaluategpd_FTSEp1_5pc = evaluategpd_FTSEp1_5pc_struct.evaluategpd_FTSEp1_5pc;
evaluategpd_FTSEp2_20pc_struct = load('evaluategpd_FTSEp2_20pc.mat');
evaluategpd_FTSEp2_20pc = evaluategpd_FTSEp2_20pc_struct.evaluategpd_FTSEp2_20pc;
evaluategpd_FTSEp2_5pc_struct = load('evaluategpd_FTSEp2_5pc.mat');
evaluategpd_FTSEp2_5pc = evaluategpd_FTSEp2_5pc_struct.evaluategpd_FTSEp2_5pc;
evaluategpd_FTSEp3_20pc_struct = load('evaluategpd_FTSEp3_20pc.mat');
evaluategpd_FTSEp3_20pc = evaluategpd_FTSEp3_20pc_struct.evaluategpd_FTSEp3_20pc;
evaluategpd_FTSEp3_5pc_struct = load('evaluategpd_FTSEp3_5pc.mat');
evaluategpd_FTSEp3_5pc = evaluategpd_FTSEp3_5pc_struct.evaluategpd_FTSEp3_5pc;
evaluategpd_FTSEp4_20pc_struct = load('evaluategpd_FTSEp4_20pc.mat');
evaluategpd_FTSEp4_20pc = evaluategpd_FTSEp4_20pc_struct.evaluategpd_FTSEp4_20pc;
evaluategpd_FTSEp4_5pc_struct = load('evaluategpd_FTSEp4_5pc.mat');
evaluategpd_FTSEp4_5pc = evaluategpd_FTSEp4_5pc_struct.evaluategpd_FTSEp4_5pc;
evaluategpd_NIKKEId_20pc_struct = load('evaluategpd_NIKKEId_20pc.mat');
evaluategpd_NIKKEId_20pc = evaluategpd_NIKKEId_20pc_struct.evaluategpd_NIKKEId_20pc;
evaluategpd_NIKKEId_5pc_struct = load('evaluategpd_NIKKEId_5pc.mat');
evaluategpd_NIKKEId_5pc = evaluategpd_NIKKEId_5pc_struct.evaluategpd_NIKKEId_5pc;
evaluategpd_NIKKEIm_20pc_struct = load('evaluategpd_NIKKEIm_20pc.mat');
evaluategpd_NIKKEIm_20pc = evaluategpd_NIKKEIm_20pc_struct.evaluategpd_NIKKEIm_20pc;
evaluategpd_NIKKEIm_5pc_struct = load('evaluategpd_NIKKEIm_5pc.mat');
evaluategpd_NIKKEIm_5pc = evaluategpd_NIKKEIm_5pc_struct.evaluategpd_NIKKEIm_5pc;
evaluategpd_NIKKEIw_20pc_struct = load('evaluategpd_NIKKEIw_20pc.mat');
evaluategpd_NIKKEIw_20pc = evaluategpd_NIKKEIw_20pc_struct.evaluategpd_NIKKEIw_20pc;
evaluategpd_NIKKEIw_5pc_struct = load('evaluategpd_NIKKEIw_5pc.mat');
evaluategpd_NIKKEIw_5pc = evaluategpd_NIKKEIw_5pc_struct.evaluategpd_NIKKEIw_5pc;
evaluategpd_NIKKEIp1_20pc_struct = load('evaluategpd_NIKKEIp1_20pc.mat');
evaluategpd_NIKKEIp1_20pc = evaluategpd_NIKKEIp1_20pc_struct.evaluategpd_NIKKEIp1_20pc;
evaluategpd_NIKKEIp1_5pc_struct = load('evaluategpd_NIKKEIp1_5pc.mat');
evaluategpd_NIKKEIp1_5pc = evaluategpd_NIKKEIp1_5pc_struct.evaluategpd_NIKKEIp1_5pc;
evaluategpd_NIKKEIp2_20pc_struct = load('evaluategpd_NIKKEIp2_20pc.mat');
evaluategpd_NIKKEIp2_20pc = evaluategpd_NIKKEIp2_20pc_struct.evaluategpd_NIKKEIp2_20pc;
evaluategpd_NIKKEIp2_5pc_struct = load('evaluategpd_NIKKEIp2_5pc.mat');
evaluategpd_NIKKEIp2_5pc = evaluategpd_NIKKEIp2_5pc_struct.evaluategpd_NIKKEIp2_5pc;
evaluategpd_NIKKEIp3_20pc_struct = load('evaluategpd_NIKKEIp3_20pc.mat');
evaluategpd_NIKKEIp3_20pc = evaluategpd_NIKKEIp3_20pc_struct.evaluategpd_NIKKEIp3_20pc;
evaluategpd_NIKKEIp3_5pc_struct = load('evaluategpd_NIKKEIp3_5pc.mat');
evaluategpd_NIKKEIp3_5pc = evaluategpd_NIKKEIp3_5pc_struct.evaluategpd_NIKKEIp3_5pc;
evaluategpd_NIKKEIp4_20pc_struct = load('evaluategpd_NIKKEIp4_20pc.mat');
evaluategpd_NIKKEIp4_20pc = evaluategpd_NIKKEIp4_20pc_struct.evaluategpd_NIKKEIp4_20pc;
evaluategpd_NIKKEIp4_5pc_struct = load('evaluategpd_NIKKEIp4_5pc.mat');
evaluategpd_NIKKEIp4_5pc = evaluategpd_NIKKEIp4_5pc_struct.evaluategpd_NIKKEIp4_5pc;
evaluategpd_SPd_20pc_struct = load('evaluategpd_SPd_20pc.mat');
evaluategpd_SPd_20pc = evaluategpd_SPd_20pc_struct.evaluategpd_SPd_20pc;
evaluategpd_SPd_5pc_struct = load('evaluategpd_SPd_5pc.mat');
evaluategpd_SPd_5pc = evaluategpd_SPd_5pc_struct.evaluategpd_SPd_5pc;
evaluategpd_SPm_20pc_struct = load('evaluategpd_SPm_20pc.mat');
evaluategpd_SPm_20pc = evaluategpd_SPm_20pc_struct.evaluategpd_SPm_20pc;
evaluategpd_SPm_5pc_struct = load('evaluategpd_SPm_5pc.mat');
evaluategpd_SPm_5pc = evaluategpd_SPm_5pc_struct.evaluategpd_SPm_5pc;
evaluategpd_SPw_20pc_struct = load('evaluategpd_SPw_20pc.mat');
evaluategpd_SPw_20pc = evaluategpd_SPw_20pc_struct.evaluategpd_SPw_20pc;
evaluategpd_SPw_5pc_struct = load('evaluategpd_SPw_5pc.mat');
evaluategpd_SPw_5pc = evaluategpd_SPw_5pc_struct.evaluategpd_SPw_5pc;
evaluategpd_SPp1_20pc_struct = load('evaluategpd_SPp1_20pc.mat');
evaluategpd_SPp1_20pc = evaluategpd_SPp1_20pc_struct.evaluategpd_SPp1_20pc;
evaluategpd_SPp1_5pc_struct = load('evaluategpd_SPp1_5pc.mat');
evaluategpd_SPp1_5pc = evaluategpd_SPp1_5pc_struct.evaluategpd_SPp1_5pc;
evaluategpd_SPp2_20pc_struct = load('evaluategpd_SPp2_20pc.mat');
evaluategpd_SPp2_20pc = evaluategpd_SPp2_20pc_struct.evaluategpd_SPp2_20pc;
evaluategpd_SPp2_5pc_struct = load('evaluategpd_SPp2_5pc.mat');
evaluategpd_SPp2_5pc = evaluategpd_SPp2_5pc_struct.evaluategpd_SPp2_5pc;
evaluategpd_SPp3_20pc_struct = load('evaluategpd_SPp3_20pc.mat');
evaluategpd_SPp3_20pc = evaluategpd_SPp3_20pc_struct.evaluategpd_SPp3_20pc;
evaluategpd_SPp3_5pc_struct = load('evaluategpd_SPp3_5pc.mat');
evaluategpd_SPp3_5pc = evaluategpd_SPp3_5pc_struct.evaluategpd_SPp3_5pc;
evaluategpd_SPp4_20pc_struct = load('evaluategpd_SPp4_20pc.mat');
evaluategpd_SPp4_20pc = evaluategpd_SPp4_20pc_struct.evaluategpd_SPp4_20pc;
evaluategpd_SPp4_5pc_struct = load('evaluategpd_SPp4_5pc.mat');
evaluategpd_SPp4_5pc = evaluategpd_SPp4_5pc_struct.evaluategpd_SPp4_5pc;
evaluategpd_PRTFd_20pc_struct = load('evaluategpd_PRTFd_20pc.mat');
evaluategpd_PRTFd_20pc = evaluategpd_PRTFd_20pc_struct.evaluategpd_PRTFd_20pc;
evaluategpd_PRTFd_5pc_struct = load('evaluategpd_PRTFd_5pc.mat');
evaluategpd_PRTFd_5pc = evaluategpd_PRTFd_5pc_struct.evaluategpd_PRTFd_5pc;
evaluategpd_PRTFm_20pc_struct = load('evaluategpd_PRTFm_20pc.mat');
evaluategpd_PRTFm_20pc = evaluategpd_PRTFm_20pc_struct.evaluategpd_PRTFm_20pc;
evaluategpd_PRTFm_5pc_struct = load('evaluategpd_PRTFm_5pc.mat');
evaluategpd_PRTFm_5pc = evaluategpd_PRTFm_5pc_struct.evaluategpd_PRTFm_5pc;
evaluategpd_PRTFw_20pc_struct = load('evaluategpd_PRTFw_20pc.mat');
evaluategpd_PRTFw_20pc = evaluategpd_PRTFw_20pc_struct.evaluategpd_PRTFw_20pc;
evaluategpd_PRTFw_5pc_struct = load('evaluategpd_PRTFw_5pc.mat');
evaluategpd_PRTFw_5pc = evaluategpd_PRTFw_5pc_struct.evaluategpd_PRTFw_5pc;
evaluategpd_PRTFp1_20pc_struct = load('evaluategpd_PRTFp1_20pc.mat');
evaluategpd_PRTFp1_20pc = evaluategpd_PRTFp1_20pc_struct.evaluategpd_PRTFp1_20pc;
evaluategpd_PRTFp1_5pc_struct = load('evaluategpd_PRTFp1_5pc.mat');
evaluategpd_PRTFp1_5pc = evaluategpd_PRTFp1_5pc_struct.evaluategpd_PRTFp1_5pc;
evaluategpd_PRTFp2_20pc_struct = load('evaluategpd_PRTFp2_20pc.mat');
evaluategpd_PRTFp2_20pc = evaluategpd_PRTFp2_20pc_struct.evaluategpd_PRTFp2_20pc;
evaluategpd_PRTFp2_5pc_struct = load('evaluategpd_PRTFp2_5pc.mat');
evaluategpd_PRTFp2_5pc = evaluategpd_PRTFp2_5pc_struct.evaluategpd_PRTFp2_5pc;
evaluategpd_PRTFp3_20pc_struct = load('evaluategpd_PRTFp3_20pc.mat');
evaluategpd_PRTFp3_20pc = evaluategpd_PRTFp3_20pc_struct.evaluategpd_PRTFp3_20pc;
evaluategpd_PRTFp3_5pc_struct = load('evaluategpd_PRTFp3_5pc.mat');
evaluategpd_PRTFp3_5pc = evaluategpd_PRTFp3_5pc_struct.evaluategpd_PRTFp3_5pc;
evaluategpd_PRTFp4_20pc_struct = load('evaluategpd_PRTFp4_20pc.mat');
evaluategpd_PRTFp4_20pc = evaluategpd_PRTFp4_20pc_struct.evaluategpd_PRTFp4_20pc;
evaluategpd_PRTFp4_5pc_struct = load('evaluategpd_PRTFp4_5pc.mat');
evaluategpd_PRTFp4_5pc = evaluategpd_PRTFp4_5pc_struct.evaluategpd_PRTFp4_5pc;

%evaluate the skewness and kurtosis for each gpd sample
%kurtosis
skewFTSEd_5pc = GPDskewness(gpdfit_FTSEd_5pc.ParameterValues);
skewFTSEw_5pc = GPDskewness(gpdfit_FTSEw_5pc.ParameterValues);
skewFTSEm_5pc = GPDskewness(gpdfit_FTSEm_5pc.ParameterValues);
skewFTSEp1_5pc = GPDskewness(gpdfit_FTSEp1_5pc.ParameterValues);
skewFTSEp2_5pc = GPDskewness(gpdfit_FTSEp2_5pc.ParameterValues);
skewFTSEp3_5pc = GPDskewness(gpdfit_FTSEp3_5pc.ParameterValues);
skewFTSEp4_5pc = GPDskewness(gpdfit_FTSEp4_5pc.ParameterValues);
skewDAXd_5pc = GPDskewness(gpdfit_DAXd_5pc.ParameterValues);
skewDAXw_5pc = GPDskewness(gpdfit_DAXw_5pc.ParameterValues);
skewDAXm_5pc = GPDskewness(gpdfit_DAXm_5pc.ParameterValues);
skewDAXp1_5pc = GPDskewness(gpdfit_DAXp1_5pc.ParameterValues);
skewDAXp2_5pc = GPDskewness(gpdfit_DAXp2_5pc.ParameterValues);
skewDAXp3_5pc = GPDskewness(gpdfit_DAXp3_5pc.ParameterValues);
skewDAXp4_5pc = GPDskewness(gpdfit_DAXp4_5pc.ParameterValues);
skewNIKKEId_5pc = GPDskewness(gpdfit_NIKKEId_5pc.ParameterValues);
skewNIKKEIw_5pc = GPDskewness(gpdfit_NIKKEIw_5pc.ParameterValues);
skewNIKKEIm_5pc = GPDskewness(gpdfit_NIKKEIm_5pc.ParameterValues);
skewNIKKEIp1_5pc = GPDskewness(gpdfit_NIKKEIp1_5pc.ParameterValues);
skewNIKKEIp2_5pc = GPDskewness(gpdfit_NIKKEIp2_5pc.ParameterValues);
skewNIKKEIp3_5pc = GPDskewness(gpdfit_NIKKEIp3_5pc.ParameterValues);
skewNIKKEIp4_5pc = GPDskewness(gpdfit_NIKKEIp4_5pc.ParameterValues);
skewSPd_5pc = GPDskewness(gpdfit_SPd_5pc.ParameterValues);
skewSPw_5pc = GPDskewness(gpdfit_SPw_5pc.ParameterValues);
skewSPm_5pc = GPDskewness(gpdfit_SPm_5pc.ParameterValues); 
skewSPp1_5pc = GPDskewness(gpdfit_SPp1_5pc.ParameterValues);
skewSPp2_5pc = GPDskewness(gpdfit_SPp2_5pc.ParameterValues);
skewSPp3_5pc = GPDskewness(gpdfit_SPp3_5pc.ParameterValues); 
skewSPp4_5pc = GPDskewness(gpdfit_SPp4_5pc.ParameterValues);
skewPRTFd_5pc = GPDskewness(gpdfit_PRTFd_5pc.ParameterValues);
skewPRTFw_5pc = GPDskewness(gpdfit_PRTFw_5pc.ParameterValues);
skewPRTFm_5pc = GPDskewness(gpdfit_PRTFm_5pc.ParameterValues);
skewPRTFp1_5pc = GPDskewness(gpdfit_PRTFp1_5pc.ParameterValues);
skewPRTFp2_5pc = GPDskewness(gpdfit_PRTFp2_5pc.ParameterValues);
skewPRTFp3_5pc = GPDskewness(gpdfit_PRTFp3_5pc.ParameterValues);
skewPRTFp4_5pc = GPDskewness(gpdfit_PRTFp4_5pc.ParameterValues); 
skewFTSEd_20pc = GPDskewness(gpdfit_FTSEd_20pc.ParameterValues);
skewFTSEw_20pc = GPDskewness(gpdfit_FTSEw_20pc.ParameterValues);
skewFTSEm_20pc = GPDskewness(gpdfit_FTSEm_20pc.ParameterValues);
skewFTSEp1_20pc = GPDskewness(gpdfit_FTSEp1_20pc.ParameterValues);
skewFTSEp2_20pc = GPDskewness(gpdfit_FTSEp2_20pc.ParameterValues);
skewFTSEp3_20pc = GPDskewness(gpdfit_FTSEp3_20pc.ParameterValues);
skewFTSEp4_20pc = GPDskewness(gpdfit_FTSEp4_20pc.ParameterValues);
skewDAXd_20pc = GPDskewness(gpdfit_DAXd_20pc.ParameterValues);
skewDAXw_20pc = GPDskewness(gpdfit_DAXw_20pc.ParameterValues);
skewDAXm_20pc = GPDskewness(gpdfit_DAXm_20pc.ParameterValues);
skewDAXp1_20pc = GPDskewness(gpdfit_DAXp1_20pc.ParameterValues);
skewDAXp2_20pc = GPDskewness(gpdfit_DAXp2_20pc.ParameterValues);
skewDAXp3_20pc = GPDskewness(gpdfit_DAXp3_20pc.ParameterValues);
skewDAXp4_20pc = GPDskewness(gpdfit_DAXp4_20pc.ParameterValues);
skewNIKKEId_20pc = GPDskewness(gpdfit_NIKKEId_20pc.ParameterValues);
skewNIKKEIw_20pc = GPDskewness(gpdfit_NIKKEIw_20pc.ParameterValues);
skewNIKKEIm_20pc = GPDskewness(gpdfit_NIKKEIm_20pc.ParameterValues);
skewNIKKEIp1_20pc = GPDskewness(gpdfit_NIKKEIp1_20pc.ParameterValues);
skewNIKKEIp2_20pc = GPDskewness(gpdfit_NIKKEIp2_20pc.ParameterValues);
skewNIKKEIp3_20pc = GPDskewness(gpdfit_NIKKEIp3_20pc.ParameterValues);
skewNIKKEIp4_20pc = GPDskewness(gpdfit_NIKKEIp4_20pc.ParameterValues);
skewSPd_20pc = GPDskewness(gpdfit_SPd_20pc.ParameterValues);
skewSPw_20pc = GPDskewness(gpdfit_SPw_20pc.ParameterValues);
skewSPm_20pc = GPDskewness(gpdfit_SPm_20pc.ParameterValues); 
skewSPp1_20pc = GPDskewness(gpdfit_SPp1_20pc.ParameterValues);
skewSPp2_20pc = GPDskewness(gpdfit_SPp2_20pc.ParameterValues);
skewSPp3_20pc = GPDskewness(gpdfit_SPp3_20pc.ParameterValues); 
skewSPp4_20pc = GPDskewness(gpdfit_SPp4_20pc.ParameterValues);
skewPRTFd_20pc = GPDskewness(gpdfit_PRTFd_20pc.ParameterValues);
skewPRTFw_20pc = GPDskewness(gpdfit_PRTFw_20pc.ParameterValues);
skewPRTFm_20pc = GPDskewness(gpdfit_PRTFm_20pc.ParameterValues);
skewPRTFp1_20pc = GPDskewness(gpdfit_PRTFp1_20pc.ParameterValues);
skewPRTFp2_20pc = GPDskewness(gpdfit_PRTFp2_20pc.ParameterValues);
skewPRTFp3_20pc = GPDskewness(gpdfit_PRTFp3_20pc.ParameterValues);
skewPRTFp4_20pc = GPDskewness(gpdfit_PRTFp4_20pc.ParameterValues);

%kurtosis
kurtFTSEd_5pc = GPDkurtosis(gpdfit_FTSEd_5pc.ParameterValues);
kurtFTSEw_5pc = GPDkurtosis(gpdfit_FTSEw_5pc.ParameterValues);
kurtFTSEm_5pc = GPDkurtosis(gpdfit_FTSEm_5pc.ParameterValues);
kurtFTSEp1_5pc = GPDkurtosis(gpdfit_FTSEp1_5pc.ParameterValues);
kurtFTSEp2_5pc = GPDkurtosis(gpdfit_FTSEp2_5pc.ParameterValues);
kurtFTSEp3_5pc = GPDkurtosis(gpdfit_FTSEp3_5pc.ParameterValues);
kurtFTSEp4_5pc = GPDkurtosis(gpdfit_FTSEp4_5pc.ParameterValues);
kurtDAXd_5pc = GPDkurtosis(gpdfit_DAXd_5pc.ParameterValues);
kurtDAXw_5pc = GPDkurtosis(gpdfit_DAXw_5pc.ParameterValues);
kurtDAXm_5pc = GPDkurtosis(gpdfit_DAXm_5pc.ParameterValues);
kurtDAXp1_5pc = GPDkurtosis(gpdfit_DAXp1_5pc.ParameterValues);
kurtDAXp2_5pc = GPDkurtosis(gpdfit_DAXp2_5pc.ParameterValues);
kurtDAXp3_5pc = GPDkurtosis(gpdfit_DAXp3_5pc.ParameterValues);
kurtDAXp4_5pc = GPDkurtosis(gpdfit_DAXp4_5pc.ParameterValues);
kurtNIKKEId_5pc = GPDkurtosis(gpdfit_NIKKEId_5pc.ParameterValues);
kurtNIKKEIw_5pc = GPDkurtosis(gpdfit_NIKKEIw_5pc.ParameterValues);
kurtNIKKEIm_5pc = GPDkurtosis(gpdfit_NIKKEIm_5pc.ParameterValues);
kurtNIKKEIp1_5pc = GPDkurtosis(gpdfit_NIKKEIp1_5pc.ParameterValues);
kurtNIKKEIp2_5pc = GPDkurtosis(gpdfit_NIKKEIp2_5pc.ParameterValues);
kurtNIKKEIp3_5pc = GPDkurtosis(gpdfit_NIKKEIp3_5pc.ParameterValues);
kurtNIKKEIp4_5pc = GPDkurtosis(gpdfit_NIKKEIp4_5pc.ParameterValues);
kurtSPd_5pc = GPDkurtosis(gpdfit_SPd_5pc.ParameterValues);
kurtSPw_5pc = GPDkurtosis(gpdfit_SPw_5pc.ParameterValues);
kurtSPm_5pc = GPDkurtosis(gpdfit_SPm_5pc.ParameterValues); 
kurtSPp1_5pc = GPDkurtosis(gpdfit_SPp1_5pc.ParameterValues);
kurtSPp2_5pc = GPDkurtosis(gpdfit_SPp2_5pc.ParameterValues);
kurtSPp3_5pc = GPDkurtosis(gpdfit_SPp3_5pc.ParameterValues); 
kurtSPp4_5pc = GPDkurtosis(gpdfit_SPp4_5pc.ParameterValues);
kurtPRTFd_5pc = GPDkurtosis(gpdfit_PRTFd_5pc.ParameterValues);
kurtPRTFw_5pc = GPDkurtosis(gpdfit_PRTFw_5pc.ParameterValues);
kurtPRTFm_5pc = GPDkurtosis(gpdfit_PRTFm_5pc.ParameterValues);
kurtPRTFp1_5pc = GPDkurtosis(gpdfit_PRTFp1_5pc.ParameterValues);
kurtPRTFp2_5pc = GPDkurtosis(gpdfit_PRTFp2_5pc.ParameterValues);
kurtPRTFp3_5pc = GPDkurtosis(gpdfit_PRTFp3_5pc.ParameterValues);
kurtPRTFp4_5pc = GPDkurtosis(gpdfit_PRTFp4_5pc.ParameterValues); 
kurtFTSEd_20pc = GPDkurtosis(gpdfit_FTSEd_20pc.ParameterValues);
kurtFTSEw_20pc = GPDkurtosis(gpdfit_FTSEw_20pc.ParameterValues);
kurtFTSEm_20pc = GPDkurtosis(gpdfit_FTSEm_20pc.ParameterValues);
kurtFTSEp1_20pc = GPDkurtosis(gpdfit_FTSEp1_20pc.ParameterValues);
kurtFTSEp2_20pc = GPDkurtosis(gpdfit_FTSEp2_20pc.ParameterValues);
kurtFTSEp3_20pc = GPDkurtosis(gpdfit_FTSEp3_20pc.ParameterValues);
kurtFTSEp4_20pc = GPDkurtosis(gpdfit_FTSEp4_20pc.ParameterValues);
kurtDAXd_20pc = GPDkurtosis(gpdfit_DAXd_20pc.ParameterValues);
kurtDAXw_20pc = GPDkurtosis(gpdfit_DAXw_20pc.ParameterValues);
kurtDAXm_20pc = GPDkurtosis(gpdfit_DAXm_20pc.ParameterValues);
kurtDAXp1_20pc = GPDkurtosis(gpdfit_DAXp1_20pc.ParameterValues);
kurtDAXp2_20pc = GPDkurtosis(gpdfit_DAXp2_20pc.ParameterValues);
kurtDAXp3_20pc = GPDkurtosis(gpdfit_DAXp3_20pc.ParameterValues);
kurtDAXp4_20pc = GPDkurtosis(gpdfit_DAXp4_20pc.ParameterValues);
kurtNIKKEId_20pc = GPDkurtosis(gpdfit_NIKKEId_20pc.ParameterValues);
kurtNIKKEIw_20pc = GPDkurtosis(gpdfit_NIKKEIw_20pc.ParameterValues);
kurtNIKKEIm_20pc = GPDkurtosis(gpdfit_NIKKEIm_20pc.ParameterValues);
kurtNIKKEIp1_20pc = GPDkurtosis(gpdfit_NIKKEIp1_20pc.ParameterValues);
kurtNIKKEIp2_20pc = GPDkurtosis(gpdfit_NIKKEIp2_20pc.ParameterValues);
kurtNIKKEIp3_20pc = GPDkurtosis(gpdfit_NIKKEIp3_20pc.ParameterValues);
kurtNIKKEIp4_20pc = GPDkurtosis(gpdfit_NIKKEIp4_20pc.ParameterValues);
kurtSPd_20pc = GPDkurtosis(gpdfit_SPd_20pc.ParameterValues);
kurtSPw_20pc = GPDkurtosis(gpdfit_SPw_20pc.ParameterValues);
kurtSPm_20pc = GPDkurtosis(gpdfit_SPm_20pc.ParameterValues); 
kurtSPp1_20pc = GPDkurtosis(gpdfit_SPp1_20pc.ParameterValues);
kurtSPp2_20pc = GPDkurtosis(gpdfit_SPp2_20pc.ParameterValues);
kurtSPp3_20pc = GPDkurtosis(gpdfit_SPp3_20pc.ParameterValues); 
kurtSPp4_20pc = GPDkurtosis(gpdfit_SPp4_20pc.ParameterValues);
kurtPRTFd_20pc = GPDkurtosis(gpdfit_PRTFd_20pc.ParameterValues);
kurtPRTFw_20pc = GPDkurtosis(gpdfit_PRTFw_20pc.ParameterValues);
kurtPRTFm_20pc = GPDkurtosis(gpdfit_PRTFm_20pc.ParameterValues);
kurtPRTFp1_20pc = GPDkurtosis(gpdfit_PRTFp1_20pc.ParameterValues);
kurtPRTFp2_20pc = GPDkurtosis(gpdfit_PRTFp2_20pc.ParameterValues);
kurtPRTFp3_20pc = GPDkurtosis(gpdfit_PRTFp3_20pc.ParameterValues);
kurtPRTFp4_20pc = GPDkurtosis(gpdfit_PRTFp4_20pc.ParameterValues);

%plot fitted distribution to data
t1='FTSE100';
%FTSE100daily
fit_representation(t1,lcFTSE100D,parmhatFTSE100D,gpd_sample_data_FTSEd_5pc,...
    evaluategpd_FTSEd_5pc,gpd_sample_data_FTSEd_20pc,evaluategpd_FTSEd_20pc)
%FTSE100weekly
fit_representation(t1,lcFTSE100W,parmhatFTSE100W,gpd_sample_data_FTSEw_5pc,...
    evaluategpd_FTSEw_5pc,gpd_sample_data_FTSEw_20pc,evaluategpd_FTSEw_20pc)
%FTSE100monthly
fit_representation(t1,lcFTSE100M,parmhatFTSE100M,gpd_sample_data_FTSEm_5pc,...
    evaluategpd_FTSEm_5pc,gpd_sample_data_FTSEm_20pc,evaluategpd_FTSEm_20pc)
%FTSE100p1
fit_representation(t1,lcFTSE100P1,parmhatFTSE100P1,gpd_sample_data_FTSEp1_5pc,...
    evaluategpd_FTSEp1_5pc,gpd_sample_data_FTSEp1_20pc,evaluategpd_FTSEp1_20pc)
%FTSE100p2
fit_representation(t1,lcFTSE100P2,parmhatFTSE100P2,gpd_sample_data_FTSEp2_5pc,...
    evaluategpd_FTSEp2_5pc,gpd_sample_data_FTSEp2_20pc,evaluategpd_FTSEp2_20pc)
%FTSE100p3
fit_representation(t1,lcFTSE100P3,parmhatFTSE100P3,gpd_sample_data_FTSEp3_5pc,...
    evaluategpd_FTSEp3_5pc,gpd_sample_data_FTSEp3_20pc,evaluategpd_FTSEp3_20pc)
%FTSE100p4
fit_representation(t1,lcFTSE100P4,parmhatFTSE100P4,gpd_sample_data_FTSEp4_5pc,...
    evaluategpd_FTSEp4_5pc,gpd_sample_data_FTSEp4_20pc,evaluategpd_FTSEp4_20pc)

t2='DAX30';
%DAX30daily
fit_representation(t2,lcDAX30D,parmhatDAX30D,gpd_sample_data_DAXd_5pc,...
    evaluategpd_DAXd_5pc,gpd_sample_data_DAXd_20pc,evaluategpd_DAXd_20pc)
%DAX30weekly
fit_representation(t2,lcDAX30W,parmhatDAX30W,gpd_sample_data_DAXw_5pc,...
    evaluategpd_DAXw_5pc,gpd_sample_data_DAXw_20pc,evaluategpd_DAXw_20pc)
%DAX30monthly
fit_representation(t2,lcDAX30M,parmhatDAX30M,gpd_sample_data_DAXm_5pc,...
    evaluategpd_DAXm_5pc,gpd_sample_data_DAXm_20pc,evaluategpd_DAXm_20pc)
%DAX30p1
fit_representation(t2,lcDAX30P1,parmhatDAX30P1,gpd_sample_data_DAXp1_5pc,...
    evaluategpd_DAXp1_5pc,gpd_sample_data_DAXp1_20pc,evaluategpd_DAXp1_20pc)
%DAX30p2
fit_representation(t2,lcDAX30P2,parmhatDAX30P2,gpd_sample_data_DAXp2_5pc,...
    evaluategpd_DAXp2_5pc,gpd_sample_data_DAXp2_20pc,evaluategpd_DAXp2_20pc)
%DAX30p3
fit_representation(t2,lcDAX30P3,parmhatDAX30P3,gpd_sample_data_DAXp3_5pc,...
    evaluategpd_DAXp3_5pc,gpd_sample_data_DAXp3_20pc,evaluategpd_DAXp3_20pc)
%DAX30p4
fit_representation(t2,lcDAX30P4,parmhatDAX30P4,gpd_sample_data_DAXp4_5pc,...
    evaluategpd_DAXp4_5pc,gpd_sample_data_DAXp4_20pc,evaluategpd_DAXp4_20pc)

%NIKKEI225daily
fit_representation('NIKKEI225',lcNIKKEI225D,parmhatNIKKEI225D,gpd_sample_data_NIKKEId_5pc,...
    evaluategpd_NIKKEId_5pc,gpd_sample_data_NIKKEId_20pc,evaluategpd_NIKKEId_20pc)
%NIKKEI225weekly
fit_representation('NIKKEI225',lcNIKKEI225W,parmhatNIKKEI225W,gpd_sample_data_NIKKEIw_5pc,...
    evaluategpd_NIKKEIw_5pc,gpd_sample_data_NIKKEIw_20pc,evaluategpd_NIKKEIw_20pc)
%NIKKEI225monthly
fit_representation('NIKKEI225',lcNIKKEI225M,parmhatNIKKEI225M,gpd_sample_data_NIKKEIm_5pc,...
    evaluategpd_NIKKEIm_5pc,gpd_sample_data_NIKKEIm_20pc,evaluategpd_NIKKEIm_20pc)
%NIKKEI225p1
fit_representation('NIKKEI225',lcNIKKEI225P1,parmhatNIKKEI225P1,gpd_sample_data_NIKKEIp1_5pc,...
    evaluategpd_NIKKEIp1_5pc,gpd_sample_data_NIKKEIp1_20pc,evaluategpd_NIKKEIp1_20pc)
%NIKKEI225p2
fit_representation('NIKKEI225',lcNIKKEI225P2,parmhatNIKKEI225P2,gpd_sample_data_NIKKEIp2_5pc,...
    evaluategpd_NIKKEIp2_5pc,gpd_sample_data_NIKKEIp2_20pc,evaluategpd_NIKKEIp2_20pc)
%NIKKEI225p3
fit_representation('NIKKEI225',lcNIKKEI225P3,parmhatNIKKEI225P3,gpd_sample_data_NIKKEIp3_5pc,...
    evaluategpd_NIKKEIp3_5pc,gpd_sample_data_NIKKEIp3_20pc,evaluategpd_NIKKEIp3_20pc)
%NIKKEI225p4
fit_representation('NIKKEI225',lcNIKKEI225P4,parmhatNIKKEI225P4,gpd_sample_data_NIKKEIp4_5pc,...
    evaluategpd_NIKKEIp4_5pc,gpd_sample_data_NIKKEIp4_20pc,evaluategpd_NIKKEIp4_20pc)

%SP500daily
fit_representation('SP500',lcSP500D,parmhatSP500D,gpd_sample_data_SPd_5pc,...
    evaluategpd_SPd_5pc,gpd_sample_data_SPd_20pc,evaluategpd_SPd_20pc)
%SP500weekly
fit_representation('SP500',lcSP500W,parmhatSP500W,gpd_sample_data_SPw_5pc,...
    evaluategpd_SPw_5pc,gpd_sample_data_SPw_20pc,evaluategpd_SPw_20pc)
%SP500monthly
fit_representation('SP500',lcSP500M,parmhatSP500M,gpd_sample_data_SPm_5pc,...
    evaluategpd_SPm_5pc,gpd_sample_data_SPm_20pc,evaluategpd_SPm_20pc)
%SP500p1
fit_representation('SP500',lcSP500P1,parmhatSP500P1,gpd_sample_data_SPp1_5pc,...
    evaluategpd_SPp1_5pc,gpd_sample_data_SPp1_20pc,evaluategpd_SPp1_20pc)
%SP500p2
fit_representation('SP500',lcSP500P2,parmhatSP500P2,gpd_sample_data_SPp2_5pc,...
    evaluategpd_SPp2_5pc,gpd_sample_data_SPp2_20pc,evaluategpd_SPp2_20pc)
%SP500p3
fit_representation('SP500',lcSP500P3,parmhatSP500P3,gpd_sample_data_SPp3_5pc,...
    evaluategpd_SPp3_5pc,gpd_sample_data_SPp3_20pc,evaluategpd_SPp3_20pc)
%SP500p4
fit_representation('SP500',lcSP500P4,parmhatSP500P4,gpd_sample_data_SPp4_5pc,...
    evaluategpd_SPp4_5pc,gpd_sample_data_SPp4_20pc,evaluategpd_SPp4_20pc)

%PRTFdaily
fit_representation('Portfolio',lcPRTFD,parmhatPRTFD,gpd_sample_data_PRTFd_5pc,...
    evaluategpd_PRTFd_5pc,gpd_sample_data_PRTFd_20pc,evaluategpd_PRTFd_20pc)
%PRTFweekly
fit_representation('Portfolio',lcPRTFW,parmhatPRTFW,gpd_sample_data_PRTFw_5pc,...
    evaluategpd_PRTFw_5pc,gpd_sample_data_PRTFw_20pc,evaluategpd_PRTFw_20pc)
%PRTFmonthly
fit_representation('Portfolio',lcPRTFM,parmhatPRTFM,gpd_sample_data_PRTFm_5pc,...
    evaluategpd_PRTFm_5pc,gpd_sample_data_PRTFm_20pc,evaluategpd_PRTFm_20pc)
%PRTFp1
fit_representation('Portfolio',lcPRTFP1,parmhatPRTFP1,gpd_sample_data_PRTFp1_5pc,...
    evaluategpd_PRTFp1_5pc,gpd_sample_data_PRTFp1_20pc,evaluategpd_PRTFp1_20pc)
%PRTFp2
fit_representation('Portfolio',lcPRTFP2,parmhatPRTFP2,gpd_sample_data_PRTFp2_5pc,...
    evaluategpd_PRTFp2_5pc,gpd_sample_data_PRTFp2_20pc,evaluategpd_PRTFp2_20pc)
%PRTFp3
fit_representation('Portfolio',lcPRTFP3,parmhatPRTFP3,gpd_sample_data_PRTFp3_5pc,...
    evaluategpd_PRTFp3_5pc,gpd_sample_data_PRTFp3_20pc,evaluategpd_PRTFp3_20pc)
%PRTFp4
fit_representation('Portfolio',lcPRTFP4,parmhatPRTFP4,gpd_sample_data_PRTFp4_5pc,...
    evaluategpd_PRTFp4_5pc,gpd_sample_data_PRTFp4_20pc,evaluategpd_PRTFp4_20pc)


%fitting tables
%DAX 
rownames = {'SGT';'k';'kse';'n';'nse';'\lambda';'\lambda se';'\mu';'\mu se';'\sigma';'\sigma se';'skewness';'kurtosis';...
    'GPD 5pc';'\csi 5pc';'\csi 5pc se';'\sigma 5pc';'\sigma 5pc se';'\mu 5pc';'\mu 5pc se';'skewness 5pc';'kurtosis 5pc';...
    'GPD 20pc';'\csi 20pc';'\csi 20pc se';'\sigma 20pc';'\sigma 20pc se';'\mu 20pc';'\mu 20pc se';'skewness 20pc';'kurtosis 20pc'};
Daily = [NaN;parmhatDAX30D(1);seDAX30D(1);parmhatDAX30D(2);seDAX30D(2);...
    parmhatDAX30D(3);seDAX30D(3);parmhatDAX30D(4);seDAX30D(4);parmhatDAX30D(5);...
    seDAX30D(5);outputDAX30D.Skewness;outputDAX30D.Kurtosis;...
    NaN;gpdfit_DAXd_5pc.k;gpse(gpdfit_DAXd_5pc,'k');gpdfit_DAXd_5pc.sigma;...
    gpse(gpdfit_DAXd_5pc,'sigma');gpdfit_DAXd_5pc.theta;0;skewDAXd_5pc;kurtDAXd_5pc;...
    NaN;gpdfit_DAXd_20pc.k;gpse(gpdfit_DAXd_20pc,'k');gpdfit_DAXd_20pc.sigma;...
    gpse(gpdfit_DAXd_20pc,'sigma');gpdfit_DAXd_20pc.theta;0;skewDAXd_20pc;kurtDAXd_20pc]; 
Weekly = [NaN;parmhatDAX30W(1);seDAX30W(1);parmhatDAX30W(2);seDAX30W(2);...
    parmhatDAX30W(3);seDAX30W(3);parmhatDAX30W(4);seDAX30W(4);parmhatDAX30W(5);...
    seDAX30W(5);outputDAX30W.Skewness;outputDAX30W.Kurtosis;...
    NaN;gpdfit_DAXw_5pc.k;gpse(gpdfit_DAXw_5pc,'k');gpdfit_DAXw_5pc.sigma;...
    gpse(gpdfit_DAXw_5pc,'sigma');gpdfit_DAXw_5pc.theta;0;skewDAXw_5pc;kurtDAXw_5pc;...
    NaN;gpdfit_DAXw_20pc.k;gpse(gpdfit_DAXw_20pc,'k');gpdfit_DAXw_20pc.sigma;...
    gpse(gpdfit_DAXw_20pc,'sigma');gpdfit_DAXw_20pc.theta;0;skewDAXw_20pc;kurtDAXw_20pc];
Monthly = [NaN;parmhatDAX30M(1);seDAX30M(1);parmhatDAX30M(2);seDAX30M(2);...
    parmhatDAX30M(3);seDAX30M(3);parmhatDAX30M(4);seDAX30M(4);parmhatDAX30M(5);...
    seDAX30M(5);outputDAX30M.Skewness;outputDAX30M.Kurtosis;...
    NaN;gpdfit_DAXm_5pc.k;gpse(gpdfit_DAXm_5pc,'k');gpdfit_DAXm_5pc.sigma;...
    gpse(gpdfit_DAXm_5pc,'sigma');gpdfit_DAXm_5pc.theta;0;skewDAXm_5pc;kurtDAXm_5pc;...
    NaN;gpdfit_DAXm_20pc.k;gpse(gpdfit_DAXm_20pc,'k');gpdfit_DAXm_20pc.sigma;...
    gpse(gpdfit_DAXm_20pc,'sigma');gpdfit_DAXm_20pc.theta;0;skewDAXm_20pc;kurtDAXm_20pc];
P1 = [NaN;parmhatDAX30P1(1);seDAX30P1(1);parmhatDAX30P1(2);seDAX30P1(2);...
    parmhatDAX30P1(3);seDAX30P1(3);parmhatDAX30P1(4);seDAX30P1(4);parmhatDAX30P1(5);...
    seDAX30P1(5);outputDAX30P1.Skewness;outputDAX30P1.Kurtosis;...
    NaN;gpdfit_DAXp1_5pc.k;gpse(gpdfit_DAXp1_5pc,'k');gpdfit_DAXp1_5pc.sigma;...
    gpse(gpdfit_DAXp1_5pc,'sigma');gpdfit_DAXp1_5pc.theta;0;skewDAXp1_5pc;kurtDAXp1_5pc;...
    NaN;gpdfit_DAXp1_20pc.k;gpse(gpdfit_DAXp1_20pc,'k');gpdfit_DAXp1_20pc.sigma;...
    gpse(gpdfit_DAXp1_20pc,'sigma');gpdfit_DAXp1_20pc.theta;0;skewDAXp1_20pc;kurtDAXp1_20pc];
P2 = [NaN;parmhatDAX30P2(1);seDAX30P2(1);parmhatDAX30P2(2);seDAX30P2(2);...
    parmhatDAX30P2(3);seDAX30P2(3);parmhatDAX30P2(4);seDAX30P2(4);parmhatDAX30P2(5);...
    seDAX30P2(5);outputDAX30P2.Skewness;outputDAX30P2.Kurtosis;...
    NaN;gpdfit_DAXp2_5pc.k;gpse(gpdfit_DAXp2_5pc,'k');gpdfit_DAXp2_5pc.sigma;...
    gpse(gpdfit_DAXp2_5pc,'sigma');gpdfit_DAXp2_5pc.theta;0;skewDAXp2_5pc;kurtDAXp2_5pc;...
    NaN;gpdfit_DAXp2_20pc.k;gpse(gpdfit_DAXp2_20pc,'k');gpdfit_DAXp2_20pc.sigma;...
    gpse(gpdfit_DAXp2_20pc,'sigma');gpdfit_DAXp2_20pc.theta;0;skewDAXp2_20pc;kurtDAXp2_20pc];
P3 = [NaN;parmhatDAX30P3(1);seDAX30P3(1);parmhatDAX30P3(2);seDAX30P3(2);...
    parmhatDAX30P3(3);seDAX30P3(3);parmhatDAX30P3(4);seDAX30P3(4);parmhatDAX30P3(5);...
    seDAX30P3(5);outputDAX30P3.Skewness;outputDAX30P3.Kurtosis;...
    NaN;gpdfit_DAXp3_5pc.k;gpse(gpdfit_DAXp3_5pc,'k');gpdfit_DAXp3_5pc.sigma;...
    gpse(gpdfit_DAXp3_5pc,'sigma');gpdfit_DAXp3_5pc.theta;0;skewDAXp3_5pc;kurtDAXp3_5pc;...
    NaN;gpdfit_DAXp3_20pc.k;gpse(gpdfit_DAXp3_20pc,'k');gpdfit_DAXp3_20pc.sigma;...
    gpse(gpdfit_DAXp3_20pc,'sigma');gpdfit_DAXp3_20pc.theta;0;skewDAXp3_20pc;kurtDAXp3_20pc];
P4 = [NaN;parmhatDAX30P4(1);seDAX30P4(1);parmhatDAX30P4(2);seDAX30P4(2);...
    parmhatDAX30P4(3);seDAX30P4(3);parmhatDAX30P4(4);seDAX30P4(4);parmhatDAX30P4(5);...
    seDAX30P4(5);outputDAX30P4.Skewness;outputDAX30P4.Kurtosis;...
    NaN;gpdfit_DAXp4_5pc.k;gpse(gpdfit_DAXp4_5pc,'k');gpdfit_DAXp4_5pc.sigma;...
    gpse(gpdfit_DAXp4_5pc,'sigma');gpdfit_DAXp4_5pc.theta;0;skewDAXp4_5pc;kurtDAXp4_5pc;...
    NaN;gpdfit_DAXp4_20pc.k;gpse(gpdfit_DAXp4_20pc,'k');gpdfit_DAXp4_20pc.sigma;...
    gpse(gpdfit_DAXp4_20pc,'sigma');gpdfit_DAXp4_20pc.theta;0;skewDAXp4_20pc;kurtDAXp4_20pc];
DAXftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(DAXftable,'DAXfitTABLE.xlsx');

%FTSE 
rownames = {'SGT';'k';'kse';'n';'nse';'\lambda';'\lambda se';'\mu';'\mu se';'\sigma';'\sigma se';'skewness';'kurtosis';...
    'GPD 5pc';'\csi 5pc';'\csi 5pc se';'\sigma 5pc';'\sigma 5pc se';'\mu 5pc';'\mu 5pc se';'skewness 5pc';'kurtosis 5pc';...
    'GPD 20pc';'\csi 20pc';'\csi 20pc se';'\sigma 20pc';'\sigma 20pc se';'\mu 20pc';'\mu 20pc se';'skewness 20pc';'kurtosis 20pc'};
Daily = [NaN;parmhatFTSE100D(1);seFTSE100D(1);parmhatFTSE100D(2);seFTSE100D(2);...
    parmhatFTSE100D(3);seFTSE100D(3);parmhatFTSE100D(4);seFTSE100D(4);parmhatFTSE100D(5);...
    seFTSE100D(5);outputFTSE100D.Skewness;outputFTSE100D.Kurtosis;...
    NaN;gpdfit_FTSEd_5pc.k;gpse(gpdfit_FTSEd_5pc,'k');gpdfit_FTSEd_5pc.sigma;...
    gpse(gpdfit_FTSEd_5pc,'sigma');gpdfit_FTSEd_5pc.theta;0;skewFTSEd_5pc;kurtFTSEd_5pc;...
    NaN;gpdfit_FTSEd_20pc.k;gpse(gpdfit_FTSEd_20pc,'k');gpdfit_FTSEd_20pc.sigma;...
    gpse(gpdfit_FTSEd_20pc,'sigma');gpdfit_FTSEd_20pc.theta;0;skewFTSEd_20pc;kurtFTSEd_20pc]; 
Weekly = [NaN;parmhatFTSE100W(1);seFTSE100W(1);parmhatFTSE100W(2);seFTSE100W(2);...
    parmhatFTSE100W(3);seFTSE100W(3);parmhatFTSE100W(4);seFTSE100W(4);parmhatFTSE100W(5);...
    seFTSE100W(5);outputFTSE100W.Skewness;outputFTSE100W.Kurtosis;...
    NaN;gpdfit_FTSEw_5pc.k;gpse(gpdfit_FTSEw_5pc,'k');gpdfit_FTSEw_5pc.sigma;...
    gpse(gpdfit_FTSEw_5pc,'sigma');gpdfit_FTSEw_5pc.theta;0;skewFTSEw_5pc;kurtFTSEw_5pc;...
    NaN;gpdfit_FTSEw_20pc.k;gpse(gpdfit_FTSEw_20pc,'k');gpdfit_FTSEw_20pc.sigma;...
    gpse(gpdfit_FTSEw_20pc,'sigma');gpdfit_FTSEw_20pc.theta;0;skewFTSEw_20pc;kurtFTSEw_20pc];
Monthly = [NaN;parmhatFTSE100M(1);seFTSE100M(1);parmhatFTSE100M(2);seFTSE100M(2);...
    parmhatFTSE100M(3);seFTSE100M(3);parmhatFTSE100M(4);seFTSE100M(4);parmhatFTSE100M(5);...
    seFTSE100M(5);outputFTSE100M.Skewness;outputFTSE100M.Kurtosis;...
    NaN;gpdfit_FTSEm_5pc.k;gpse(gpdfit_FTSEm_5pc,'k');gpdfit_FTSEm_5pc.sigma;...
    gpse(gpdfit_FTSEm_5pc,'sigma');gpdfit_FTSEm_5pc.theta;0;skewFTSEm_5pc;kurtFTSEm_5pc;...
    NaN;gpdfit_FTSEm_20pc.k;gpse(gpdfit_FTSEm_20pc,'k');gpdfit_FTSEm_20pc.sigma;...
    gpse(gpdfit_FTSEm_20pc,'sigma');gpdfit_FTSEm_20pc.theta;0;skewFTSEm_20pc;kurtFTSEm_20pc];
P1 = [NaN;parmhatFTSE100P1(1);seFTSE100P1(1);parmhatFTSE100P1(2);seFTSE100P1(2);...
    parmhatFTSE100P1(3);seFTSE100P1(3);parmhatFTSE100P1(4);seFTSE100P1(4);parmhatFTSE100P1(5);...
    seFTSE100P1(5);outputFTSE100P1.Skewness;outputFTSE100P1.Kurtosis;...
    NaN;gpdfit_FTSEp1_5pc.k;gpse(gpdfit_FTSEp1_5pc,'k');gpdfit_FTSEp1_5pc.sigma;...
    gpse(gpdfit_FTSEp1_5pc,'sigma');gpdfit_FTSEp1_5pc.theta;0;skewFTSEp1_5pc;kurtFTSEp1_5pc;...
    NaN;gpdfit_FTSEp1_20pc.k;gpse(gpdfit_FTSEp1_20pc,'k');gpdfit_FTSEp1_20pc.sigma;...
    gpse(gpdfit_FTSEp1_20pc,'sigma');gpdfit_FTSEp1_20pc.theta;0;skewFTSEp1_20pc;kurtFTSEp1_20pc];
P2 = [NaN;parmhatFTSE100P2(1);seFTSE100P2(1);parmhatFTSE100P2(2);seFTSE100P2(2);...
    parmhatFTSE100P2(3);seFTSE100P2(3);parmhatFTSE100P2(4);seFTSE100P2(4);parmhatFTSE100P2(5);...
    seFTSE100P2(5);outputFTSE100P2.Skewness;outputFTSE100P2.Kurtosis;...
    NaN;gpdfit_FTSEp2_5pc.k;gpse(gpdfit_FTSEp2_5pc,'k');gpdfit_FTSEp2_5pc.sigma;...
    gpse(gpdfit_FTSEp2_5pc,'sigma');gpdfit_FTSEp2_5pc.theta;0;skewFTSEp2_5pc;kurtFTSEp2_5pc;...
    NaN;gpdfit_FTSEp2_20pc.k;gpse(gpdfit_FTSEp2_20pc,'k');gpdfit_FTSEp2_20pc.sigma;...
    gpse(gpdfit_FTSEp2_20pc,'sigma');gpdfit_FTSEp2_20pc.theta;0;skewFTSEp2_20pc;kurtFTSEp2_20pc];
P3 = [NaN;parmhatFTSE100P3(1);seFTSE100P3(1);parmhatFTSE100P3(2);seFTSE100P3(2);...
    parmhatFTSE100P3(3);seFTSE100P3(3);parmhatFTSE100P3(4);seFTSE100P3(4);parmhatFTSE100P3(5);...
    seFTSE100P3(5);outputFTSE100P3.Skewness;outputFTSE100P3.Kurtosis;...
    NaN;gpdfit_FTSEp3_5pc.k;gpse(gpdfit_FTSEp3_5pc,'k');gpdfit_FTSEp3_5pc.sigma;...
    gpse(gpdfit_FTSEp3_5pc,'sigma');gpdfit_FTSEp3_5pc.theta;0;skewFTSEp3_5pc;kurtFTSEp3_5pc;...
    NaN;gpdfit_FTSEp3_20pc.k;gpse(gpdfit_FTSEp3_20pc,'k');gpdfit_FTSEp3_20pc.sigma;...
    gpse(gpdfit_FTSEp3_20pc,'sigma');gpdfit_FTSEp3_20pc.theta;0;skewFTSEp3_20pc;kurtFTSEp3_20pc];
P4 = [NaN;parmhatFTSE100P4(1);seFTSE100P4(1);parmhatFTSE100P4(2);seFTSE100P4(2);...
    parmhatFTSE100P4(3);seFTSE100P4(3);parmhatFTSE100P4(4);seFTSE100P4(4);parmhatFTSE100P4(5);...
    seFTSE100P4(5);outputFTSE100P4.Skewness;outputFTSE100P4.Kurtosis;...
    NaN;gpdfit_FTSEp4_5pc.k;gpse(gpdfit_FTSEp4_5pc,'k');gpdfit_FTSEp4_5pc.sigma;...
    gpse(gpdfit_FTSEp4_5pc,'sigma');gpdfit_FTSEp4_5pc.theta;0;skewFTSEp4_5pc;kurtFTSEp4_5pc;...
    NaN;gpdfit_FTSEp4_20pc.k;gpse(gpdfit_FTSEp4_20pc,'k');gpdfit_FTSEp4_20pc.sigma;...
    gpse(gpdfit_FTSEp4_20pc,'sigma');gpdfit_FTSEp4_20pc.theta;0;skewFTSEp4_20pc;kurtFTSEp4_20pc];
FTSEftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(FTSEftable,'FTSEfitTABLE.xlsx');

%SP 
rownames = {'SGT';'k';'kse';'n';'nse';'\lambda';'\lambda se';'\mu';'\mu se';'\sigma';'\sigma se';'skewness';'kurtosis';...
    'GPD 5pc';'\csi 5pc';'\csi 5pc se';'\sigma 5pc';'\sigma 5pc se';'\mu 5pc';'\mu 5pc se';'skewness 5pc';'kurtosis 5pc';...
    'GPD 20pc';'\csi 20pc';'\csi 20pc se';'\sigma 20pc';'\sigma 20pc se';'\mu 20pc';'\mu 20pc se';'skewness 20pc';'kurtosis 20pc'};
Daily = [NaN;parmhatSP500D(1);seSP500D(1);parmhatSP500D(2);seSP500D(2);...
    parmhatSP500D(3);seSP500D(3);parmhatSP500D(4);seSP500D(4);parmhatSP500D(5);...
    seSP500D(5);outputSP500D.Skewness;outputSP500D.Kurtosis;...
    NaN;gpdfit_SPd_5pc.k;gpse(gpdfit_SPd_5pc,'k');gpdfit_SPd_5pc.sigma;...
    gpse(gpdfit_SPd_5pc,'sigma');gpdfit_SPd_5pc.theta;0;skewSPd_5pc;kurtSPd_5pc;...
    NaN;gpdfit_SPd_20pc.k;gpse(gpdfit_SPd_20pc,'k');gpdfit_SPd_20pc.sigma;...
    gpse(gpdfit_SPd_20pc,'sigma');gpdfit_SPd_20pc.theta;0;skewSPd_20pc;kurtSPd_20pc]; 
Weekly = [NaN;parmhatSP500W(1);seSP500W(1);parmhatSP500W(2);seSP500W(2);...
    parmhatSP500W(3);seSP500W(3);parmhatSP500W(4);seSP500W(4);parmhatSP500W(5);...
    seSP500W(5);outputSP500W.Skewness;outputSP500W.Kurtosis;...
    NaN;gpdfit_SPw_5pc.k;gpse(gpdfit_SPw_5pc,'k');gpdfit_SPw_5pc.sigma;...
    gpse(gpdfit_SPw_5pc,'sigma');gpdfit_SPw_5pc.theta;0;skewSPw_5pc;kurtSPw_5pc;...
    NaN;gpdfit_SPw_20pc.k;gpse(gpdfit_SPw_20pc,'k');gpdfit_SPw_20pc.sigma;...
    gpse(gpdfit_SPw_20pc,'sigma');gpdfit_SPw_20pc.theta;0;skewSPw_20pc;kurtSPw_20pc];
Monthly = [NaN;parmhatSP500M(1);seSP500M(1);parmhatSP500M(2);seSP500M(2);...
    parmhatSP500M(3);seSP500M(3);parmhatSP500M(4);seSP500M(4);parmhatSP500M(5);...
    seSP500M(5);outputSP500M.Skewness;outputSP500M.Kurtosis;...
    NaN;gpdfit_SPm_5pc.k;gpse(gpdfit_SPm_5pc,'k');gpdfit_SPm_5pc.sigma;...
    gpse(gpdfit_SPm_5pc,'sigma');gpdfit_SPm_5pc.theta;0;skewSPm_5pc;kurtSPm_5pc;...
    NaN;gpdfit_SPm_20pc.k;gpse(gpdfit_SPm_20pc,'k');gpdfit_SPm_20pc.sigma;...
    gpse(gpdfit_SPm_20pc,'sigma');gpdfit_SPm_20pc.theta;0;skewSPm_20pc;kurtSPm_20pc];
P1 = [NaN;parmhatSP500P1(1);seSP500P1(1);parmhatSP500P1(2);seSP500P1(2);...
    parmhatSP500P1(3);seSP500P1(3);parmhatSP500P1(4);seSP500P1(4);parmhatSP500P1(5);...
    seSP500P1(5);outputSP500P1.Skewness;outputSP500P1.Kurtosis;...
    NaN;gpdfit_SPp1_5pc.k;gpse(gpdfit_SPp1_5pc,'k');gpdfit_SPp1_5pc.sigma;...
    gpse(gpdfit_SPp1_5pc,'sigma');gpdfit_SPp1_5pc.theta;0;skewSPp1_5pc;kurtSPp1_5pc;...
    NaN;gpdfit_SPp1_20pc.k;gpse(gpdfit_SPp1_20pc,'k');gpdfit_SPp1_20pc.sigma;...
    gpse(gpdfit_SPp1_20pc,'sigma');gpdfit_SPp1_20pc.theta;0;skewSPp1_20pc;kurtSPp1_20pc];
P2 = [NaN;parmhatSP500P2(1);seSP500P2(1);parmhatSP500P2(2);seSP500P2(2);...
    parmhatSP500P2(3);seSP500P2(3);parmhatSP500P2(4);seSP500P2(4);parmhatSP500P2(5);...
    seSP500P2(5);outputSP500P2.Skewness;outputSP500P2.Kurtosis;...
    NaN;gpdfit_SPp2_5pc.k;gpse(gpdfit_SPp2_5pc,'k');gpdfit_SPp2_5pc.sigma;...
    gpse(gpdfit_SPp2_5pc,'sigma');gpdfit_SPp2_5pc.theta;0;skewSPp2_5pc;kurtSPp2_5pc;...
    NaN;gpdfit_SPp2_20pc.k;gpse(gpdfit_SPp2_20pc,'k');gpdfit_SPp2_20pc.sigma;...
    gpse(gpdfit_SPp2_20pc,'sigma');gpdfit_SPp2_20pc.theta;0;skewSPp2_20pc;kurtSPp2_20pc];
P3 = [NaN;parmhatSP500P3(1);seSP500P3(1);parmhatSP500P3(2);seSP500P3(2);...
    parmhatSP500P3(3);seSP500P3(3);parmhatSP500P3(4);seSP500P3(4);parmhatSP500P3(5);...
    seSP500P3(5);outputSP500P3.Skewness;outputSP500P3.Kurtosis;...
    NaN;gpdfit_SPp3_5pc.k;gpse(gpdfit_SPp3_5pc,'k');gpdfit_SPp3_5pc.sigma;...
    gpse(gpdfit_SPp3_5pc,'sigma');gpdfit_SPp3_5pc.theta;0;skewSPp3_5pc;kurtSPp3_5pc;...
    NaN;gpdfit_SPp3_20pc.k;gpse(gpdfit_SPp3_20pc,'k');gpdfit_SPp3_20pc.sigma;...
    gpse(gpdfit_SPp3_20pc,'sigma');gpdfit_SPp3_20pc.theta;0;skewSPp3_20pc;kurtSPp3_20pc];
P4 = [NaN;parmhatSP500P4(1);seSP500P4(1);parmhatSP500P4(2);seSP500P4(2);...
    parmhatSP500P4(3);seSP500P4(3);parmhatSP500P4(4);seSP500P4(4);parmhatSP500P4(5);...
    seSP500P4(5);outputSP500P4.Skewness;outputSP500P4.Kurtosis;...
    NaN;gpdfit_SPp4_5pc.k;gpse(gpdfit_SPp4_5pc,'k');gpdfit_SPp4_5pc.sigma;...
    gpse(gpdfit_SPp4_5pc,'sigma');gpdfit_SPp4_5pc.theta;0;skewSPp4_5pc;kurtSPp4_5pc;...
    NaN;gpdfit_SPp4_20pc.k;gpse(gpdfit_SPp4_20pc,'k');gpdfit_SPp4_20pc.sigma;...
    gpse(gpdfit_SPp4_20pc,'sigma');gpdfit_SPp4_20pc.theta;0;skewSPp4_20pc;kurtSPp4_20pc];
SPftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(SPftable,'SPfitTABLE.xlsx');

%NIKKEI 
rownames = {'SGT';'k';'kse';'n';'nse';'\lambda';'\lambda se';'\mu';'\mu se';'\sigma';'\sigma se';'skewness';'kurtosis';...
    'GPD 5pc';'\csi 5pc';'\csi 5pc se';'\sigma 5pc';'\sigma 5pc se';'\mu 5pc';'\mu 5pc se';'skewness 5pc';'kurtosis 5pc';...
    'GPD 20pc';'\csi 20pc';'\csi 20pc se';'\sigma 20pc';'\sigma 20pc se';'\mu 20pc';'\mu 20pc se';'skewness 20pc';'kurtosis 20pc'};
Daily = [NaN;parmhatNIKKEI225D(1);seNIKKEI225D(1);parmhatNIKKEI225D(2);seNIKKEI225D(2);...
    parmhatNIKKEI225D(3);seNIKKEI225D(3);parmhatNIKKEI225D(4);seNIKKEI225D(4);parmhatNIKKEI225D(5);...
    seNIKKEI225D(5);outputNIKKEI225D.Skewness;outputNIKKEI225D.Kurtosis;...
    NaN;gpdfit_NIKKEId_5pc.k;gpse(gpdfit_NIKKEId_5pc,'k');gpdfit_NIKKEId_5pc.sigma;...
    gpse(gpdfit_NIKKEId_5pc,'sigma');gpdfit_NIKKEId_5pc.theta;0;skewNIKKEId_5pc;kurtNIKKEId_5pc;...
    NaN;gpdfit_NIKKEId_20pc.k;gpse(gpdfit_NIKKEId_20pc,'k');gpdfit_NIKKEId_20pc.sigma;...
    gpse(gpdfit_NIKKEId_20pc,'sigma');gpdfit_NIKKEId_20pc.theta;0;skewNIKKEId_20pc;kurtNIKKEId_20pc]; 
Weekly = [NaN;parmhatNIKKEI225W(1);seNIKKEI225W(1);parmhatNIKKEI225W(2);seNIKKEI225W(2);...
    parmhatNIKKEI225W(3);seNIKKEI225W(3);parmhatNIKKEI225W(4);seNIKKEI225W(4);parmhatNIKKEI225W(5);...
    seNIKKEI225W(5);outputNIKKEI225W.Skewness;outputNIKKEI225W.Kurtosis;...
    NaN;gpdfit_NIKKEIw_5pc.k;gpse(gpdfit_NIKKEIw_5pc,'k');gpdfit_NIKKEIw_5pc.sigma;...
    gpse(gpdfit_NIKKEIw_5pc,'sigma');gpdfit_NIKKEIw_5pc.theta;0;skewNIKKEIw_5pc;kurtNIKKEIw_5pc;...
    NaN;gpdfit_NIKKEIw_20pc.k;gpse(gpdfit_NIKKEIw_20pc,'k');gpdfit_NIKKEIw_20pc.sigma;...
    gpse(gpdfit_NIKKEIw_20pc,'sigma');gpdfit_NIKKEIw_20pc.theta;0;skewNIKKEIw_20pc;kurtNIKKEIw_20pc];
Monthly = [NaN;parmhatNIKKEI225M(1);seNIKKEI225M(1);parmhatNIKKEI225M(2);seNIKKEI225M(2);...
    parmhatNIKKEI225M(3);seNIKKEI225M(3);parmhatNIKKEI225M(4);seNIKKEI225M(4);parmhatNIKKEI225M(5);...
    seNIKKEI225M(5);outputNIKKEI225M.Skewness;outputNIKKEI225M.Kurtosis;...
    NaN;gpdfit_NIKKEIm_5pc.k;gpse(gpdfit_NIKKEIm_5pc,'k');gpdfit_NIKKEIm_5pc.sigma;...
    gpse(gpdfit_NIKKEIm_5pc,'sigma');gpdfit_NIKKEIm_5pc.theta;0;skewNIKKEIm_5pc;kurtNIKKEIm_5pc;...
    NaN;gpdfit_NIKKEIm_20pc.k;gpse(gpdfit_NIKKEIm_20pc,'k');gpdfit_NIKKEIm_20pc.sigma;...
    gpse(gpdfit_NIKKEIm_20pc,'sigma');gpdfit_NIKKEIm_20pc.theta;0;skewNIKKEIm_20pc;kurtNIKKEIm_20pc];
P1 = [NaN;parmhatNIKKEI225P1(1);seNIKKEI225P1(1);parmhatNIKKEI225P1(2);seNIKKEI225P1(2);...
    parmhatNIKKEI225P1(3);seNIKKEI225P1(3);parmhatNIKKEI225P1(4);seNIKKEI225P1(4);parmhatNIKKEI225P1(5);...
    seNIKKEI225P1(5);outputNIKKEI225P1.Skewness;outputNIKKEI225P1.Kurtosis;...
    NaN;gpdfit_NIKKEIp1_5pc.k;gpse(gpdfit_NIKKEIp1_5pc,'k');gpdfit_NIKKEIp1_5pc.sigma;...
    gpse(gpdfit_NIKKEIp1_5pc,'sigma');gpdfit_NIKKEIp1_5pc.theta;0;skewNIKKEIp1_5pc;kurtNIKKEIp1_5pc;...
    NaN;gpdfit_NIKKEIp1_20pc.k;gpse(gpdfit_NIKKEIp1_20pc,'k');gpdfit_NIKKEIp1_20pc.sigma;...
    gpse(gpdfit_NIKKEIp1_20pc,'sigma');gpdfit_NIKKEIp1_20pc.theta;0;skewNIKKEIp1_20pc;kurtNIKKEIp1_20pc];
P2 = [NaN;parmhatNIKKEI225P2(1);seNIKKEI225P2(1);parmhatNIKKEI225P2(2);seNIKKEI225P2(2);...
    parmhatNIKKEI225P2(3);seNIKKEI225P2(3);parmhatNIKKEI225P2(4);seNIKKEI225P2(4);parmhatNIKKEI225P2(5);...
    seNIKKEI225P2(5);outputNIKKEI225P2.Skewness;outputNIKKEI225P2.Kurtosis;...
    NaN;gpdfit_NIKKEIp2_5pc.k;gpse(gpdfit_NIKKEIp2_5pc,'k');gpdfit_NIKKEIp2_5pc.sigma;...
    gpse(gpdfit_NIKKEIp2_5pc,'sigma');gpdfit_NIKKEIp2_5pc.theta;0;skewNIKKEIp2_5pc;kurtNIKKEIp2_5pc;...
    NaN;gpdfit_NIKKEIp2_20pc.k;gpse(gpdfit_NIKKEIp2_20pc,'k');gpdfit_NIKKEIp2_20pc.sigma;...
    gpse(gpdfit_NIKKEIp2_20pc,'sigma');gpdfit_NIKKEIp2_20pc.theta;0;skewNIKKEIp2_20pc;kurtNIKKEIp2_20pc];
P3 = [NaN;parmhatNIKKEI225P3(1);seNIKKEI225P3(1);parmhatNIKKEI225P3(2);seNIKKEI225P3(2);...
    parmhatNIKKEI225P3(3);seNIKKEI225P3(3);parmhatNIKKEI225P3(4);seNIKKEI225P3(4);parmhatNIKKEI225P3(5);...
    seNIKKEI225P3(5);outputNIKKEI225P3.Skewness;outputNIKKEI225P3.Kurtosis;...
    NaN;gpdfit_NIKKEIp3_5pc.k;gpse(gpdfit_NIKKEIp3_5pc,'k');gpdfit_NIKKEIp3_5pc.sigma;...
    gpse(gpdfit_NIKKEIp3_5pc,'sigma');gpdfit_NIKKEIp3_5pc.theta;0;skewNIKKEIp3_5pc;kurtNIKKEIp3_5pc;...
    NaN;gpdfit_NIKKEIp3_20pc.k;gpse(gpdfit_NIKKEIp3_20pc,'k');gpdfit_NIKKEIp3_20pc.sigma;...
    gpse(gpdfit_NIKKEIp3_20pc,'sigma');gpdfit_NIKKEIp3_20pc.theta;0;skewNIKKEIp3_20pc;kurtNIKKEIp3_20pc];
P4 = [NaN;parmhatNIKKEI225P4(1);seNIKKEI225P4(1);parmhatNIKKEI225P4(2);seNIKKEI225P4(2);...
    parmhatNIKKEI225P4(3);seNIKKEI225P4(3);parmhatNIKKEI225P4(4);seNIKKEI225P4(4);parmhatNIKKEI225P4(5);...
    seNIKKEI225P4(5);outputNIKKEI225P4.Skewness;outputNIKKEI225P4.Kurtosis;...
    NaN;gpdfit_NIKKEIp4_5pc.k;gpse(gpdfit_NIKKEIp4_5pc,'k');gpdfit_NIKKEIp4_5pc.sigma;...
    gpse(gpdfit_NIKKEIp4_5pc,'sigma');gpdfit_NIKKEIp4_5pc.theta;0;skewNIKKEIp4_5pc;kurtNIKKEIp4_5pc;...
    NaN;gpdfit_NIKKEIp4_20pc.k;gpse(gpdfit_NIKKEIp4_20pc,'k');gpdfit_NIKKEIp4_20pc.sigma;...
    gpse(gpdfit_NIKKEIp4_20pc,'sigma');gpdfit_NIKKEIp4_20pc.theta;0;skewNIKKEIp4_20pc;kurtNIKKEIp4_20pc];
NIKKEIftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(NIKKEIftable,'NIKKEIfitTABLE.xlsx');

%PRTF 
rownames = {'SGT';'k';'kse';'n';'nse';'\lambda';'\lambda se';'\mu';'\mu se';'\sigma';'\sigma se';'skewness';'kurtosis';...
    'GPD 5pc';'\csi 5pc';'\csi 5pc se';'\sigma 5pc';'\sigma 5pc se';'\mu 5pc';'\mu 5pc se';'skewness 5pc';'kurtosis 5pc';...
    'GPD 20pc';'\csi 20pc';'\csi 20pc se';'\sigma 20pc';'\sigma 20pc se';'\mu 20pc';'\mu 20pc se';'skewness 20pc';'kurtosis 20pc'};
Daily = [NaN;parmhatPRTFD(1);sePRTFD(1);parmhatPRTFD(2);sePRTFD(2);...
    parmhatPRTFD(3);sePRTFD(3);parmhatPRTFD(4);sePRTFD(4);parmhatPRTFD(5);...
    sePRTFD(5);outputPRTFD.Skewness;outputPRTFD.Kurtosis;...
    NaN;gpdfit_PRTFd_5pc.k;gpse(gpdfit_PRTFd_5pc,'k');gpdfit_PRTFd_5pc.sigma;...
    gpse(gpdfit_PRTFd_5pc,'sigma');gpdfit_PRTFd_5pc.theta;0;skewPRTFd_5pc;kurtPRTFd_5pc;...
    NaN;gpdfit_PRTFd_20pc.k;gpse(gpdfit_PRTFd_20pc,'k');gpdfit_PRTFd_20pc.sigma;...
    gpse(gpdfit_PRTFd_20pc,'sigma');gpdfit_PRTFd_20pc.theta;0;skewPRTFd_20pc;kurtPRTFd_20pc]; 
Weekly = [NaN;parmhatPRTFW(1);sePRTFW(1);parmhatPRTFW(2);sePRTFW(2);...
    parmhatPRTFW(3);sePRTFW(3);parmhatPRTFW(4);sePRTFW(4);parmhatPRTFW(5);...
    sePRTFW(5);outputPRTFW.Skewness;outputPRTFW.Kurtosis;...
    NaN;gpdfit_PRTFw_5pc.k;gpse(gpdfit_PRTFw_5pc,'k');gpdfit_PRTFw_5pc.sigma;...
    gpse(gpdfit_PRTFw_5pc,'sigma');gpdfit_PRTFw_5pc.theta;0;skewPRTFw_5pc;kurtPRTFw_5pc;...
    NaN;gpdfit_PRTFw_20pc.k;gpse(gpdfit_PRTFw_20pc,'k');gpdfit_PRTFw_20pc.sigma;...
    gpse(gpdfit_PRTFw_20pc,'sigma');gpdfit_PRTFw_20pc.theta;0;skewPRTFw_20pc;kurtPRTFw_20pc];
Monthly = [NaN;parmhatPRTFM(1);sePRTFM(1);parmhatPRTFM(2);sePRTFM(2);...
    parmhatPRTFM(3);sePRTFM(3);parmhatPRTFM(4);sePRTFM(4);parmhatPRTFM(5);...
    sePRTFM(5);outputPRTFM.Skewness;outputPRTFM.Kurtosis;...
    NaN;gpdfit_PRTFm_5pc.k;gpse(gpdfit_PRTFm_5pc,'k');gpdfit_PRTFm_5pc.sigma;...
    gpse(gpdfit_PRTFm_5pc,'sigma');gpdfit_PRTFm_5pc.theta;0;skewPRTFm_5pc;kurtPRTFm_5pc;...
    NaN;gpdfit_PRTFm_20pc.k;gpse(gpdfit_PRTFm_20pc,'k');gpdfit_PRTFm_20pc.sigma;...
    gpse(gpdfit_PRTFm_20pc,'sigma');gpdfit_PRTFm_20pc.theta;0;skewPRTFm_20pc;kurtPRTFm_20pc];
P1 = [NaN;parmhatPRTFP1(1);sePRTFP1(1);parmhatPRTFP1(2);sePRTFP1(2);...
    parmhatPRTFP1(3);sePRTFP1(3);parmhatPRTFP1(4);sePRTFP1(4);parmhatPRTFP1(5);...
    sePRTFP1(5);outputPRTFP1.Skewness;outputPRTFP1.Kurtosis;...
    NaN;gpdfit_PRTFp1_5pc.k;gpse(gpdfit_PRTFp1_5pc,'k');gpdfit_PRTFp1_5pc.sigma;...
    gpse(gpdfit_PRTFp1_5pc,'sigma');gpdfit_PRTFp1_5pc.theta;0;skewPRTFp1_5pc;kurtPRTFp1_5pc;...
    NaN;gpdfit_PRTFp1_20pc.k;gpse(gpdfit_PRTFp1_20pc,'k');gpdfit_PRTFp1_20pc.sigma;...
    gpse(gpdfit_PRTFp1_20pc,'sigma');gpdfit_PRTFp1_20pc.theta;0;skewPRTFp1_20pc;kurtPRTFp1_20pc];
P2 = [NaN;parmhatPRTFP2(1);sePRTFP2(1);parmhatPRTFP2(2);sePRTFP2(2);...
    parmhatPRTFP2(3);sePRTFP2(3);parmhatPRTFP2(4);sePRTFP2(4);parmhatPRTFP2(5);...
    sePRTFP2(5);outputPRTFP2.Skewness;outputPRTFP2.Kurtosis;...
    NaN;gpdfit_PRTFp2_5pc.k;gpse(gpdfit_PRTFp2_5pc,'k');gpdfit_PRTFp2_5pc.sigma;...
    gpse(gpdfit_PRTFp2_5pc,'sigma');gpdfit_PRTFp2_5pc.theta;0;skewPRTFp2_5pc;kurtPRTFp2_5pc;...
    NaN;gpdfit_PRTFp2_20pc.k;gpse(gpdfit_PRTFp2_20pc,'k');gpdfit_PRTFp2_20pc.sigma;...
    gpse(gpdfit_PRTFp2_20pc,'sigma');gpdfit_PRTFp2_20pc.theta;0;skewPRTFp2_20pc;kurtPRTFp2_20pc];
P3 = [NaN;parmhatPRTFP3(1);sePRTFP3(1);parmhatPRTFP3(2);sePRTFP3(2);...
    parmhatPRTFP3(3);sePRTFP3(3);parmhatPRTFP3(4);sePRTFP3(4);parmhatPRTFP3(5);...
    sePRTFP3(5);outputPRTFP3.Skewness;outputPRTFP3.Kurtosis;...
    NaN;gpdfit_PRTFp3_5pc.k;gpse(gpdfit_PRTFp3_5pc,'k');gpdfit_PRTFp3_5pc.sigma;...
    gpse(gpdfit_PRTFp3_5pc,'sigma');gpdfit_PRTFp3_5pc.theta;0;skewPRTFp3_5pc;kurtPRTFp3_5pc;...
    NaN;gpdfit_PRTFp3_20pc.k;gpse(gpdfit_PRTFp3_20pc,'k');gpdfit_PRTFp3_20pc.sigma;...
    gpse(gpdfit_PRTFp3_20pc,'sigma');gpdfit_PRTFp3_20pc.theta;0;skewPRTFp3_20pc;kurtPRTFp3_20pc];
P4 = [NaN;parmhatPRTFP4(1);sePRTFP4(1);parmhatPRTFP4(2);sePRTFP4(2);...
    parmhatPRTFP4(3);sePRTFP4(3);parmhatPRTFP4(4);sePRTFP4(4);parmhatPRTFP4(5);...
    sePRTFP4(5);outputPRTFP4.Skewness;outputPRTFP4.Kurtosis;...
    NaN;gpdfit_PRTFp4_5pc.k;gpse(gpdfit_PRTFp4_5pc,'k');gpdfit_PRTFp4_5pc.sigma;...
    gpse(gpdfit_PRTFp4_5pc,'sigma');gpdfit_PRTFp4_5pc.theta;0;skewPRTFp4_5pc;kurtPRTFp4_5pc;...
    NaN;gpdfit_PRTFp4_20pc.k;gpse(gpdfit_PRTFp4_20pc,'k');gpdfit_PRTFp4_20pc.sigma;...
    gpse(gpdfit_PRTFp4_20pc,'sigma');gpdfit_PRTFp4_20pc.theta;0;skewPRTFp4_20pc;kurtPRTFp4_20pc];
PRTFftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(PRTFftable,'PRTFfitTABLE.xlsx');

%goodness-of-fit tests
%----for the sgt the sgtcdf function from bensaïda is used
%----for the gpd the gpcdf function is used with cdf function

%KS test
%normal
[hKSnormal_DAXd,pKSnormal_DAXd,statKSnormal_DAXd,cvKSnormal_DAXd] = kstestenormal(lcDAX30D,muDAX30D,sigmaDAX30D);
[hKSnormal_DAXw,pKSnormal_DAXw,statKSnormal_DAXw,cvKSnormal_DAXw] = kstestenormal(lcDAX30W,muDAX30W,sigmaDAX30W);
[hKSnormal_DAXm,pKSnormal_DAXm,statKSnormal_DAXm,cvKSnormal_DAXm] = kstestenormal(lcDAX30M,muDAX30M,sigmaDAX30M);
[hKSnormal_DAXp1,pKSnormal_DAXp1,statKSnormal_DAXp1,cvKSnormal_DAXp1] = kstestenormal(lcDAX30P1,muDAX30P1,sigmaDAX30P1);
[hKSnormal_DAXp2,pKSnormal_DAXp2,statKSnormal_DAXp2,cvKSnormal_DAXp2] = kstestenormal(lcDAX30P2,muDAX30P2,sigmaDAX30P2);
[hKSnormal_DAXp3,pKSnormal_DAXp3,statKSnormal_DAXp3,cvKSnormal_DAXp3] = kstestenormal(lcDAX30P3,muDAX30P3,sigmaDAX30P3);
[hKSnormal_DAXp4,pKSnormal_DAXp4,statKSnormal_DAXp4,cvKSnormal_DAXp4] = kstestenormal(lcDAX30P4,muDAX30P4,sigmaDAX30P4);
[hKSnormal_FTSEd,pKSnormal_FTSEd,statKSnormal_FTSEd,cvKSnormal_FTSEd] = kstestenormal(lcFTSE100D,muFTSE100D,sigmaFTSE100D);
[hKSnormal_FTSEw,pKSnormal_FTSEw,statKSnormal_FTSEw,cvKSnormal_FTSEw] = kstestenormal(lcFTSE100W,muFTSE100W,sigmaFTSE100W);
[hKSnormal_FTSEm,pKSnormal_FTSEm,statKSnormal_FTSEm,cvKSnormal_FTSEm] = kstestenormal(lcFTSE100M,muFTSE100M,sigmaFTSE100M);
[hKSnormal_FTSEp1,pKSnormal_FTSEp1,statKSnormal_FTSEp1,cvKSnormal_FTSEp1] = kstestenormal(lcFTSE100P1,muFTSE100P1,sigmaFTSE100P1);
[hKSnormal_FTSEp2,pKSnormal_FTSEp2,statKSnormal_FTSEp2,cvKSnormal_FTSEp2] = kstestenormal(lcFTSE100P2,muFTSE100P2,sigmaFTSE100P2);
[hKSnormal_FTSEp3,pKSnormal_FTSEp3,statKSnormal_FTSEp3,cvKSnormal_FTSEp3] = kstestenormal(lcFTSE100P3,muFTSE100P3,sigmaFTSE100P3);
[hKSnormal_FTSEp4,pKSnormal_FTSEp4,statKSnormal_FTSEp4,cvKSnormal_FTSEp4] = kstestenormal(lcFTSE100P4,muFTSE100P4,sigmaFTSE100P4);
[hKSnormal_NIKKEId,pKSnormal_NIKKEId,statKSnormal_NIKKEId,cvKSnormal_NIKKEId] = kstestenormal(lcNIKKEI225D,muNIKKEI225D,sigmaNIKKEI225D);
[hKSnormal_NIKKEIw,pKSnormal_NIKKEIw,statKSnormal_NIKKEIw,cvKSnormal_NIKKEIw] = kstestenormal(lcNIKKEI225W,muNIKKEI225W,sigmaNIKKEI225W);
[hKSnormal_NIKKEIm,pKSnormal_NIKKEIm,statKSnormal_NIKKEIm,cvKSnormal_NIKKEIm] = kstestenormal(lcNIKKEI225M,muNIKKEI225M,sigmaNIKKEI225M);
[hKSnormal_NIKKEIp1,pKSnormal_NIKKEIp1,statKSnormal_NIKKEIp1,cvKSnormal_NIKKEIp1] = kstestenormal(lcNIKKEI225P1,muNIKKEI225P1,sigmaNIKKEI225P1);
[hKSnormal_NIKKEIp2,pKSnormal_NIKKEIp2,statKSnormal_NIKKEIp2,cvKSnormal_NIKKEIp2] = kstestenormal(lcNIKKEI225P2,muNIKKEI225P2,sigmaNIKKEI225P2);
[hKSnormal_NIKKEIp3,pKSnormal_NIKKEIp3,statKSnormal_NIKKEIp3,cvKSnormal_NIKKEIp3] = kstestenormal(lcNIKKEI225P3,muNIKKEI225P3,sigmaNIKKEI225P3);
[hKSnormal_NIKKEIp4,pKSnormal_NIKKEIp4,statKSnormal_NIKKEIp4,cvKSnormal_NIKKEIp4] = kstestenormal(lcNIKKEI225P4,muNIKKEI225P4,sigmaNIKKEI225P4);
[hKSnormal_SPd,pKSnormal_SPd,statKSnormal_SPd,cvKSnormal_SPd] = kstestenormal(lcSP500D,muSP500D,sigmaSP500D);
[hKSnormal_SPw,pKSnormal_SPw,statKSnormal_SPw,cvKSnormal_SPw] = kstestenormal(lcSP500W,muSP500W,sigmaSP500W);
[hKSnormal_SPm,pKSnormal_SPm,statKSnormal_SPm,cvKSnormal_SPm] = kstestenormal(lcSP500M,muSP500M,sigmaSP500M);
[hKSnormal_SPp1,pKSnormal_SPp1,statKSnormal_SPp1,cvKSnormal_SPp1] = kstestenormal(lcSP500P1,muSP500P1,sigmaSP500P1);
[hKSnormal_SPp2,pKSnormal_SPp2,statKSnormal_SPp2,cvKSnormal_SPp2] = kstestenormal(lcSP500P2,muSP500P2,sigmaSP500P2);
[hKSnormal_SPp3,pKSnormal_SPp3,statKSnormal_SPp3,cvKSnormal_SPp3] = kstestenormal(lcSP500P3,muSP500P3,sigmaSP500P3);
[hKSnormal_SPp4,pKSnormal_SPp4,statKSnormal_SPp4,cvKSnormal_SPp4] = kstestenormal(lcSP500P4,muSP500P4,sigmaSP500P4);
[hKSnormal_PRTFd,pKSnormal_PRTFd,statKSnormal_PRTFd,cvKSnormal_PRTFd] = kstestenormal(lcPRTFD,muPRTFD,sigmaPRTFD);
[hKSnormal_PRTFw,pKSnormal_PRTFw,statKSnormal_PRTFw,cvKSnormal_PRTFw] = kstestenormal(lcPRTFW,muPRTFW,sigmaPRTFW);
[hKSnormal_PRTFm,pKSnormal_PRTFm,statKSnormal_PRTFm,cvKSnormal_PRTFm] = kstestenormal(lcPRTFM,muPRTFM,sigmaPRTFM);
[hKSnormal_PRTFp1,pKSnormal_PRTFp1,statKSnormal_PRTFp1,cvKSnormal_PRTFp1] = kstestenormal(lcPRTFP1,muPRTFP1,sigmaPRTFP1);
[hKSnormal_PRTFp2,pKSnormal_PRTFp2,statKSnormal_PRTFp2,cvKSnormal_PRTFp2] = kstestenormal(lcPRTFP2,muPRTFP2,sigmaPRTFP2);
[hKSnormal_PRTFp3,pKSnormal_PRTFp3,statKSnormal_PRTFp3,cvKSnormal_PRTFp3] = kstestenormal(lcPRTFP3,muPRTFP3,sigmaPRTFP3);
[hKSnormal_PRTFp4,pKSnormal_PRTFp4,statKSnormal_PRTFp4,cvKSnormal_PRTFp4] = kstestenormal(lcPRTFP4,muPRTFP4,sigmaPRTFP4);

%sgt
[hKSsgt_DAXd,pKSsgt_DAXd,statKSsgt_DAXd,cvKSsgt_DAXd] = kstestesgt(lcDAX30D,parmhatDAX30D);
[hKSsgt_DAXm,pKSsgt_DAXm,statKSsgt_DAXm,cvKSsgt_DAXm] = kstestesgt(lcDAX30M,parmhatDAX30M);
[hKSsgt_DAXw,pKSsgt_DAXw,statKSsgt_DAXw,cvKSsgt_DAXw] = kstestesgt(lcDAX30W,parmhatDAX30W);
[hKSsgt_DAXp1,pKSsgt_DAXp1,statKSsgt_DAXp1,cvKSsgt_DAXp1] = kstestesgt(lcDAX30P1,parmhatDAX30P1);
[hKSsgt_DAXp2,pKSsgt_DAXp2,statKSsgt_DAXp2,cvKSsgt_DAXp2] = kstestesgt(lcDAX30P2,parmhatDAX30P2);
[hKSsgt_DAXp3,pKSsgt_DAXp3,statKSsgt_DAXp3,cvKSsgt_DAXp3] = kstestesgt(lcDAX30P3,parmhatDAX30P3);
[hKSsgt_DAXp4,pKSsgt_DAXp4,statKSsgt_DAXp4,cvKSsgt_DAXp4] = kstestesgt(lcDAX30P4,parmhatDAX30P4);
[hKSsgt_FTSEd,pKSsgt_FTSEd,statKSsgt_FTSEd,cvKSsgt_FTSEd] = kstestesgt(lcFTSE100D,parmhatFTSE100D);
[hKSsgt_FTSEm,pKSsgt_FTSEm,statKSsgt_FTSEm,cvKSsgt_FTSEm] = kstestesgt(lcFTSE100M,parmhatFTSE100M);
[hKSsgt_FTSEw,pKSsgt_FTSEw,statKSsgt_FTSEw,cvKSsgt_FTSEw] = kstestesgt(lcFTSE100W,parmhatFTSE100W);
[hKSsgt_FTSEp1,pKSsgt_FTSEp1,statKSsgt_FTSEp1,cvKSsgt_FTSEp1] = kstestesgt(lcFTSE100P1,parmhatFTSE100P1);
[hKSsgt_FTSEp2,pKSsgt_FTSEp2,statKSsgt_FTSEp2,cvKSsgt_FTSEp2] = kstestesgt(lcFTSE100P2,parmhatFTSE100P2);
[hKSsgt_FTSEp3,pKSsgt_FTSEp3,statKSsgt_FTSEp3,cvKSsgt_FTSEp3] = kstestesgt(lcFTSE100P3,parmhatFTSE100P3);
[hKSsgt_FTSEp4,pKSsgt_FTSEp4,statKSsgt_FTSEp4,cvKSsgt_FTSEp4] = kstestesgt(lcFTSE100P4,parmhatFTSE100P4);
[hKSsgt_SPd,pKSsgt_SPd,statKSsgt_SPd,cvKSsgt_SPd] = kstestesgt(lcSP500D,parmhatSP500D);
[hKSsgt_SPm,pKSsgt_SPm,statKSsgt_SPm,cvKSsgt_SPm] = kstestesgt(lcSP500M,parmhatSP500M);
[hKSsgt_SPw,pKSsgt_SPw,statKSsgt_SPw,cvKSsgt_SPw] = kstestesgt(lcSP500W,parmhatSP500W);
[hKSsgt_SPp1,pKSsgt_SPp1,statKSsgt_SPp1,cvKSsgt_SPp1] = kstestesgt(lcSP500P1,parmhatSP500P1);
[hKSsgt_SPp2,pKSsgt_SPp2,statKSsgt_SPp2,cvKSsgt_SPp2] = kstestesgt(lcSP500P2,parmhatSP500P2);
[hKSsgt_SPp3,pKSsgt_SPp3,statKSsgt_SPp3,cvKSsgt_SPp3] = kstestesgt(lcSP500P3,parmhatSP500P3);
[hKSsgt_SPp4,pKSsgt_SPp4,statKSsgt_SPp4,cvKSsgt_SPp4] = kstestesgt(lcSP500P4,parmhatSP500P4);
[hKSsgt_NIKKEId,pKSsgt_NIKKEId,statKSsgt_NIKKEId,cvKSsgt_NIKKEId] = kstestesgt(lcNIKKEI225D,parmhatNIKKEI225D);
[hKSsgt_NIKKEIm,pKSsgt_NIKKEIm,statKSsgt_NIKKEIm,cvKSsgt_NIKKEIm] = kstestesgt(lcNIKKEI225M,parmhatNIKKEI225M);
[hKSsgt_NIKKEIw,pKSsgt_NIKKEIw,statKSsgt_NIKKEIw,cvKSsgt_NIKKEIw] = kstestesgt(lcNIKKEI225W,parmhatNIKKEI225W);
[hKSsgt_NIKKEIp1,pKSsgt_NIKKEIp1,statKSsgt_NIKKEIp1,cvKSsgt_NIKKEIp1] = kstestesgt(lcNIKKEI225P1,parmhatNIKKEI225P1);
[hKSsgt_NIKKEIp2,pKSsgt_NIKKEIp2,statKSsgt_NIKKEIp2,cvKSsgt_NIKKEIp2] = kstestesgt(lcNIKKEI225P2,parmhatNIKKEI225P2);
[hKSsgt_NIKKEIp3,pKSsgt_NIKKEIp3,statKSsgt_NIKKEIp3,cvKSsgt_NIKKEIp3] = kstestesgt(lcNIKKEI225P3,parmhatNIKKEI225P3);
[hKSsgt_NIKKEIp4,pKSsgt_NIKKEIp4,statKSsgt_NIKKEIp4,cvKSsgt_NIKKEIp4] = kstestesgt(lcNIKKEI225P4,parmhatNIKKEI225P4);
[hKSsgt_PRTFd,pKSsgt_PRTFd,statKSsgt_PRTFd,cvKSsgt_PRTFd] = kstestesgt(lcPRTFD,parmhatPRTFD);
[hKSsgt_PRTFm,pKSsgt_PRTFm,statKSsgt_PRTFm,cvKSsgt_PRTFm] = kstestesgt(lcPRTFM,parmhatPRTFM);
[hKSsgt_PRTFw,pKSsgt_PRTFw,statKSsgt_PRTFw,cvKSsgt_PRTFw] = kstestesgt(lcPRTFW,parmhatPRTFW);
[hKSsgt_PRTFp1,pKSsgt_PRTFp1,statKSsgt_PRTFp1,cvKSsgt_PRTFp1] = kstestesgt(lcPRTFP1,parmhatPRTFP1);
[hKSsgt_PRTFp2,pKSsgt_PRTFp2,statKSsgt_PRTFp2,cvKSsgt_PRTFp2] = kstestesgt(lcPRTFP2,parmhatPRTFP2);
[hKSsgt_PRTFp3,pKSsgt_PRTFp3,statKSsgt_PRTFp3,cvKSsgt_PRTFp3] = kstestesgt(lcPRTFP3,parmhatPRTFP3);
[hKSsgt_PRTFp4,pKSsgt_PRTFp4,statKSsgt_PRTFp4,cvKSsgt_PRTFp4] = kstestesgt(lcPRTFP4,parmhatPRTFP4);

%gpd
%5pc
[hKSgpd_DAXd_5pc,pKSgpd_DAXd_5pc,statKSgpd_DAXd_5pc,cvKSgpd_DAXd_5pc] = ...
    kstestegpd(gpd_sample_data_DAXd_5pc,gpdfit_DAXd_5pc);
[hKSgpd_DAXm_5pc,pKSgpd_DAXm_5pc,statKSgpd_DAXm_5pc,cvKSgpd_DAXm_5pc] = ...
    kstestegpd(gpd_sample_data_DAXm_5pc,gpdfit_DAXm_5pc);
[hKSgpd_DAXw_5pc,pKSgpd_DAXw_5pc,statKSgpd_DAXw_5pc,cvKSgpd_DAXw_5pc] = ...
    kstestegpd(gpd_sample_data_DAXw_5pc,gpdfit_DAXw_5pc);
[hKSgpd_DAXp1_5pc,pKSgpd_DAXp1_5pc,statKSgpd_DAXp1_5pc,cvKSgpd_DAXp1_5pc] = ...
    kstestegpd(gpd_sample_data_DAXp1_5pc,gpdfit_DAXp1_5pc);
[hKSgpd_DAXp2_5pc,pKSgpd_DAXp2_5pc,statKSgpd_DAXp2_5pc,cvKSgpd_DAXp2_5pc] = ...
    kstestegpd(gpd_sample_data_DAXp2_5pc,gpdfit_DAXp2_5pc);
[hKSgpd_DAXp3_5pc,pKSgpd_DAXp3_5pc,statKSgpd_DAXp3_5pc,cvKSgpd_DAXp3_5pc] = ...
    kstestegpd(gpd_sample_data_DAXp3_5pc,gpdfit_DAXp3_5pc);
[hKSgpd_DAXp4_5pc,pKSgpd_DAXp4_5pc,statKSgpd_DAXp4_5pc,cvKSgpd_DAXp4_5pc] = ...
    kstestegpd(gpd_sample_data_DAXp4_5pc,gpdfit_DAXp4_5pc);
[hKSgpd_FTSEd_5pc,pKSgpd_FTSEd_5pc,statKSgpd_FTSEd_5pc,cvKSgpd_FTSEd_5pc] = ...
    kstestegpd(gpd_sample_data_FTSEd_5pc,gpdfit_FTSEd_5pc);
[hKSgpd_FTSEm_5pc,pKSgpd_FTSEm_5pc,statKSgpd_FTSEm_5pc,cvKSgpd_FTSEm_5pc] = ...
    kstestegpd(gpd_sample_data_FTSEm_5pc,gpdfit_FTSEm_5pc);
[hKSgpd_FTSEw_5pc,pKSgpd_FTSEw_5pc,statKSgpd_FTSEw_5pc,cvKSgpd_FTSEw_5pc] = ...
    kstestegpd(gpd_sample_data_FTSEw_5pc,gpdfit_FTSEw_5pc);
[hKSgpd_FTSEp1_5pc,pKSgpd_FTSEp1_5pc,statKSgpd_FTSEp1_5pc,cvKSgpd_FTSEp1_5pc] = ...
    kstestegpd(gpd_sample_data_FTSEp1_5pc,gpdfit_FTSEp1_5pc);
[hKSgpd_FTSEp2_5pc,pKSgpd_FTSEp2_5pc,statKSgpd_FTSEp2_5pc,cvKSgpd_FTSEp2_5pc] = ...
    kstestegpd(gpd_sample_data_FTSEp2_5pc,gpdfit_FTSEp2_5pc);
[hKSgpd_FTSEp3_5pc,pKSgpd_FTSEp3_5pc,statKSgpd_FTSEp3_5pc,cvKSgpd_FTSEp3_5pc] = ...
    kstestegpd(gpd_sample_data_FTSEp3_5pc,gpdfit_FTSEp3_5pc);
[hKSgpd_FTSEp4_5pc,pKSgpd_FTSEp4_5pc,statKSgpd_FTSEp4_5pc,cvKSgpd_FTSEp4_5pc] = ...
    kstestegpd(gpd_sample_data_FTSEp4_5pc,gpdfit_FTSEp4_5pc);
[hKSgpd_SPd_5pc,pKSgpd_SPd_5pc,statKSgpd_SPd_5pc,cvKSgpd_SPd_5pc] = ...
    kstestegpd(gpd_sample_data_SPd_5pc,gpdfit_SPd_5pc);
[hKSgpd_SPm_5pc,pKSgpd_SPm_5pc,statKSgpd_SPm_5pc,cvKSgpd_SPm_5pc] = ...
    kstestegpd(gpd_sample_data_SPm_5pc,gpdfit_SPm_5pc);
[hKSgpd_SPw_5pc,pKSgpd_SPw_5pc,statKSgpd_SPw_5pc,cvKSgpd_SPw_5pc] = ...
    kstestegpd(gpd_sample_data_SPw_5pc,gpdfit_SPw_5pc);
[hKSgpd_SPp1_5pc,pKSgpd_SPp1_5pc,statKSgpd_SPp1_5pc,cvKSgpd_SPp1_5pc] = ...
    kstestegpd(gpd_sample_data_SPp1_5pc,gpdfit_SPp1_5pc);
[hKSgpd_SPp2_5pc,pKSgpd_SPp2_5pc,statKSgpd_SPp2_5pc,cvKSgpd_SPp2_5pc] = ...
    kstestegpd(gpd_sample_data_SPp2_5pc,gpdfit_SPp2_5pc);
[hKSgpd_SPp3_5pc,pKSgpd_SPp3_5pc,statKSgpd_SPp3_5pc,cvKSgpd_SPp3_5pc] = ...
    kstestegpd(gpd_sample_data_SPp3_5pc,gpdfit_SPp3_5pc);
[hKSgpd_SPp4_5pc,pKSgpd_SPp4_5pc,statKSgpd_SPp4_5pc,cvKSgpd_SPp4_5pc] = ...
    kstestegpd(gpd_sample_data_SPp4_5pc,gpdfit_SPp4_5pc);
[hKSgpd_NIKKEId_5pc,pKSgpd_NIKKEId_5pc,statKSgpd_NIKKEId_5pc,cvKSgpd_NIKKEId_5pc] = ...
    kstestegpd(gpd_sample_data_NIKKEId_5pc,gpdfit_NIKKEId_5pc);
[hKSgpd_NIKKEIm_5pc,pKSgpd_NIKKEIm_5pc,statKSgpd_NIKKEIm_5pc,cvKSgpd_NIKKEIm_5pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIm_5pc,gpdfit_NIKKEIm_5pc);
[hKSgpd_NIKKEIw_5pc,pKSgpd_NIKKEIw_5pc,statKSgpd_NIKKEIw_5pc,cvKSgpd_NIKKEIw_5pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIw_5pc,gpdfit_NIKKEIw_5pc);
[hKSgpd_NIKKEIp1_5pc,pKSgpd_NIKKEIp1_5pc,statKSgpd_NIKKEIp1_5pc,cvKSgpd_NIKKEIp1_5pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIp1_5pc,gpdfit_NIKKEIp1_5pc);
[hKSgpd_NIKKEIp2_5pc,pKSgpd_NIKKEIp2_5pc,statKSgpd_NIKKEIp2_5pc,cvKSgpd_NIKKEIp2_5pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIp2_5pc,gpdfit_NIKKEIp2_5pc);
[hKSgpd_NIKKEIp3_5pc,pKSgpd_NIKKEIp3_5pc,statKSgpd_NIKKEIp3_5pc,cvKSgpd_NIKKEIp3_5pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIp3_5pc,gpdfit_NIKKEIp3_5pc);
[hKSgpd_NIKKEIp4_5pc,pKSgpd_NIKKEIp4_5pc,statKSgpd_NIKKEIp4_5pc,cvKSgpd_NIKKEIp4_5pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIp4_5pc,gpdfit_NIKKEIp4_5pc);
[hKSgpd_PRTFd_5pc,pKSgpd_PRTFd_5pc,statKSgpd_PRTFd_5pc,cvKSgpd_PRTFd_5pc] = ...
    kstestegpd(gpd_sample_data_PRTFd_5pc,gpdfit_PRTFd_5pc);
[hKSgpd_PRTFm_5pc,pKSgpd_PRTFm_5pc,statKSgpd_PRTFm_5pc,cvKSgpd_PRTFm_5pc] = ...
    kstestegpd(gpd_sample_data_PRTFm_5pc,gpdfit_PRTFm_5pc);
[hKSgpd_PRTFw_5pc,pKSgpd_PRTFw_5pc,statKSgpd_PRTFw_5pc,cvKSgpd_PRTFw_5pc] = ...
    kstestegpd(gpd_sample_data_PRTFw_5pc,gpdfit_PRTFw_5pc);
[hKSgpd_PRTFp1_5pc,pKSgpd_PRTFp1_5pc,statKSgpd_PRTFp1_5pc,cvKSgpd_PRTFp1_5pc] = ...
    kstestegpd(gpd_sample_data_PRTFp1_5pc,gpdfit_PRTFp1_5pc);
[hKSgpd_PRTFp2_5pc,pKSgpd_PRTFp2_5pc,statKSgpd_PRTFp2_5pc,cvKSgpd_PRTFp2_5pc] = ...
    kstestegpd(gpd_sample_data_PRTFp2_5pc,gpdfit_PRTFp2_5pc);
[hKSgpd_PRTFp3_5pc,pKSgpd_PRTFp3_5pc,statKSgpd_PRTFp3_5pc,cvKSgpd_PRTFp3_5pc] = ...
    kstestegpd(gpd_sample_data_PRTFp3_5pc,gpdfit_PRTFp3_5pc);
[hKSgpd_PRTFp4_5pc,pKSgpd_PRTFp4_5pc,statKSgpd_PRTFp4_5pc,cvKSgpd_PRTFp4_5pc] = ...
    kstestegpd(gpd_sample_data_PRTFp4_5pc,gpdfit_PRTFp4_5pc);
%20pc
[hKSgpd_DAXd_20pc,pKSgpd_DAXd_20pc,statKSgpd_DAXd_20pc,cvKSgpd_DAXd_20pc] = ...
    kstestegpd(gpd_sample_data_DAXd_20pc,gpdfit_DAXd_20pc);
[hKSgpd_DAXm_20pc,pKSgpd_DAXm_20pc,statKSgpd_DAXm_20pc,cvKSgpd_DAXm_20pc] = ...
    kstestegpd(gpd_sample_data_DAXm_20pc,gpdfit_DAXm_20pc);
[hKSgpd_DAXw_20pc,pKSgpd_DAXw_20pc,statKSgpd_DAXw_20pc,cvKSgpd_DAXw_20pc] = ...
    kstestegpd(gpd_sample_data_DAXw_20pc,gpdfit_DAXw_20pc);
[hKSgpd_DAXp1_20pc,pKSgpd_DAXp1_20pc,statKSgpd_DAXp1_20pc,cvKSgpd_DAXp1_20pc] = ...
    kstestegpd(gpd_sample_data_DAXp1_20pc,gpdfit_DAXp1_20pc);
[hKSgpd_DAXp2_20pc,pKSgpd_DAXp2_20pc,statKSgpd_DAXp2_20pc,cvKSgpd_DAXp2_20pc] = ...
    kstestegpd(gpd_sample_data_DAXp2_20pc,gpdfit_DAXp2_20pc);
[hKSgpd_DAXp3_20pc,pKSgpd_DAXp3_20pc,statKSgpd_DAXp3_20pc,cvKSgpd_DAXp3_20pc] = ...
    kstestegpd(gpd_sample_data_DAXp3_20pc,gpdfit_DAXp3_20pc);
[hKSgpd_DAXp4_20pc,pKSgpd_DAXp4_20pc,statKSgpd_DAXp4_20pc,cvKSgpd_DAXp4_20pc] = ...
    kstestegpd(gpd_sample_data_DAXp4_20pc,gpdfit_DAXp4_20pc);
[hKSgpd_FTSEd_20pc,pKSgpd_FTSEd_20pc,statKSgpd_FTSEd_20pc,cvKSgpd_FTSEd_20pc] = ...
    kstestegpd(gpd_sample_data_FTSEd_20pc,gpdfit_FTSEd_20pc);
[hKSgpd_FTSEm_20pc,pKSgpd_FTSEm_20pc,statKSgpd_FTSEm_20pc,cvKSgpd_FTSEm_20pc] = ...
    kstestegpd(gpd_sample_data_FTSEm_20pc,gpdfit_FTSEm_20pc);
[hKSgpd_FTSEw_20pc,pKSgpd_FTSEw_20pc,statKSgpd_FTSEw_20pc,cvKSgpd_FTSEw_20pc] = ...
    kstestegpd(gpd_sample_data_FTSEw_20pc,gpdfit_FTSEw_20pc);
[hKSgpd_FTSEp1_20pc,pKSgpd_FTSEp1_20pc,statKSgpd_FTSEp1_20pc,cvKSgpd_FTSEp1_20pc] = ...
    kstestegpd(gpd_sample_data_FTSEp1_20pc,gpdfit_FTSEp1_20pc);
[hKSgpd_FTSEp2_20pc,pKSgpd_FTSEp2_20pc,statKSgpd_FTSEp2_20pc,cvKSgpd_FTSEp2_20pc] = ...
    kstestegpd(gpd_sample_data_FTSEp2_20pc,gpdfit_FTSEp2_20pc);
[hKSgpd_FTSEp3_20pc,pKSgpd_FTSEp3_20pc,statKSgpd_FTSEp3_20pc,cvKSgpd_FTSEp3_20pc] = ...
    kstestegpd(gpd_sample_data_FTSEp3_20pc,gpdfit_FTSEp3_20pc);
[hKSgpd_FTSEp4_20pc,pKSgpd_FTSEp4_20pc,statKSgpd_FTSEp4_20pc,cvKSgpd_FTSEp4_20pc] = ...
    kstestegpd(gpd_sample_data_FTSEp4_20pc,gpdfit_FTSEp4_20pc);
[hKSgpd_SPd_20pc,pKSgpd_SPd_20pc,statKSgpd_SPd_20pc,cvKSgpd_SPd_20pc] = ...
    kstestegpd(gpd_sample_data_SPd_20pc,gpdfit_SPd_20pc);
[hKSgpd_SPm_20pc,pKSgpd_SPm_20pc,statKSgpd_SPm_20pc,cvKSgpd_SPm_20pc] = ...
    kstestegpd(gpd_sample_data_SPm_20pc,gpdfit_SPm_20pc);
[hKSgpd_SPw_20pc,pKSgpd_SPw_20pc,statKSgpd_SPw_20pc,cvKSgpd_SPw_20pc] = ...
    kstestegpd(gpd_sample_data_SPw_20pc,gpdfit_SPw_20pc);
[hKSgpd_SPp1_20pc,pKSgpd_SPp1_20pc,statKSgpd_SPp1_20pc,cvKSgpd_SPp1_20pc] = ...
    kstestegpd(gpd_sample_data_SPp1_20pc,gpdfit_SPp1_20pc);
[hKSgpd_SPp2_20pc,pKSgpd_SPp2_20pc,statKSgpd_SPp2_20pc,cvKSgpd_SPp2_20pc] = ...
    kstestegpd(gpd_sample_data_SPp2_20pc,gpdfit_SPp2_20pc);
[hKSgpd_SPp3_20pc,pKSgpd_SPp3_20pc,statKSgpd_SPp3_20pc,cvKSgpd_SPp3_20pc] = ...
    kstestegpd(gpd_sample_data_SPp3_20pc,gpdfit_SPp3_20pc);
[hKSgpd_SPp4_20pc,pKSgpd_SPp4_20pc,statKSgpd_SPp4_20pc,cvKSgpd_SPp4_20pc] = ...
    kstestegpd(gpd_sample_data_SPp4_20pc,gpdfit_SPp4_20pc);
[hKSgpd_NIKKEId_20pc,pKSgpd_NIKKEId_20pc,statKSgpd_NIKKEId_20pc,cvKSgpd_NIKKEId_20pc] = ...
    kstestegpd(gpd_sample_data_NIKKEId_20pc,gpdfit_NIKKEId_20pc);
[hKSgpd_NIKKEIm_20pc,pKSgpd_NIKKEIm_20pc,statKSgpd_NIKKEIm_20pc,cvKSgpd_NIKKEIm_20pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIm_20pc,gpdfit_NIKKEIm_20pc);
[hKSgpd_NIKKEIw_20pc,pKSgpd_NIKKEIw_20pc,statKSgpd_NIKKEIw_20pc,cvKSgpd_NIKKEIw_20pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIw_20pc,gpdfit_NIKKEIw_20pc);
[hKSgpd_NIKKEIp1_20pc,pKSgpd_NIKKEIp1_20pc,statKSgpd_NIKKEIp1_20pc,cvKSgpd_NIKKEIp1_20pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIp1_20pc,gpdfit_NIKKEIp1_20pc);
[hKSgpd_NIKKEIp2_20pc,pKSgpd_NIKKEIp2_20pc,statKSgpd_NIKKEIp2_20pc,cvKSgpd_NIKKEIp2_20pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIp2_20pc,gpdfit_NIKKEIp2_20pc);
[hKSgpd_NIKKEIp3_20pc,pKSgpd_NIKKEIp3_20pc,statKSgpd_NIKKEIp3_20pc,cvKSgpd_NIKKEIp3_20pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIp3_20pc,gpdfit_NIKKEIp3_20pc);
[hKSgpd_NIKKEIp4_20pc,pKSgpd_NIKKEIp4_20pc,statKSgpd_NIKKEIp4_20pc,cvKSgpd_NIKKEIp4_20pc] = ...
    kstestegpd(gpd_sample_data_NIKKEIp4_20pc,gpdfit_NIKKEIp4_20pc);
[hKSgpd_PRTFd_20pc,pKSgpd_PRTFd_20pc,statKSgpd_PRTFd_20pc,cvKSgpd_PRTFd_20pc] = ...
    kstestegpd(gpd_sample_data_PRTFd_20pc,gpdfit_PRTFd_20pc);
[hKSgpd_PRTFm_20pc,pKSgpd_PRTFm_20pc,statKSgpd_PRTFm_20pc,cvKSgpd_PRTFm_20pc] = ...
    kstestegpd(gpd_sample_data_PRTFm_20pc,gpdfit_PRTFm_20pc);
[hKSgpd_PRTFw_20pc,pKSgpd_PRTFw_20pc,statKSgpd_PRTFw_20pc,cvKSgpd_PRTFw_20pc] = ...
    kstestegpd(gpd_sample_data_PRTFw_20pc,gpdfit_PRTFw_20pc);
[hKSgpd_PRTFp1_20pc,pKSgpd_PRTFp1_20pc,statKSgpd_PRTFp1_20pc,cvKSgpd_PRTFp1_20pc] = ...
    kstestegpd(gpd_sample_data_PRTFp1_20pc,gpdfit_PRTFp1_20pc);
[hKSgpd_PRTFp2_20pc,pKSgpd_PRTFp2_20pc,statKSgpd_PRTFp2_20pc,cvKSgpd_PRTFp2_20pc] = ...
    kstestegpd(gpd_sample_data_PRTFp2_20pc,gpdfit_PRTFp2_20pc);
[hKSgpd_PRTFp3_20pc,pKSgpd_PRTFp3_20pc,statKSgpd_PRTFp3_20pc,cvKSgpd_PRTFp3_20pc] = ...
    kstestegpd(gpd_sample_data_PRTFp3_20pc,gpdfit_PRTFp3_20pc);
[hKSgpd_PRTFp4_20pc,pKSgpd_PRTFp4_20pc,statKSgpd_PRTFp4_20pc,cvKSgpd_PRTFp4_20pc] = ...
    kstestegpd(gpd_sample_data_PRTFp4_20pc,gpdfit_PRTFp4_20pc);

%AD test
%normal
[hADnormal_DAXd,pADnormal_DAXd,statADnormal_DAXd, cvADnormal_DAXd] = adtestenormal(lcDAX30D,muDAX30D,sigmaDAX30D);
[hADnormal_DAXw,pADnormal_DAXw,statADnormal_DAXw, cvADnormal_DAXw] = adtestenormal(lcDAX30W,muDAX30W,sigmaDAX30W);
[hADnormal_DAXm,pADnormal_DAXm,statADnormal_DAXm, cvADnormal_DAXm] = adtestenormal(lcDAX30M,muDAX30M,sigmaDAX30M);
[hADnormal_DAXp1,pADnormal_DAXp1,statADnormal_DAXp1, cvADnormal_DAXp1] = adtestenormal(lcDAX30P1,muDAX30P1,sigmaDAX30P1);
[hADnormal_DAXp2,pADnormal_DAXp2,statADnormal_DAXp2, cvADnormal_DAXp2] = adtestenormal(lcDAX30P2,muDAX30P2,sigmaDAX30P2);
[hADnormal_DAXp3,pADnormal_DAXp3,statADnormal_DAXp3, cvADnormal_DAXp3] = adtestenormal(lcDAX30P3,muDAX30P3,sigmaDAX30P3);
[hADnormal_DAXp4,pADnormal_DAXp4,statADnormal_DAXp4, cvADnormal_DAXp4] = adtestenormal(lcDAX30P4,muDAX30P4,sigmaDAX30P4);
[hADnormal_FTSEd,pADnormal_FTSEd,statADnormal_FTSEd, cvADnormal_FTSEd] = adtestenormal(lcFTSE100D,muFTSE100D,sigmaFTSE100D);
[hADnormal_FTSEw,pADnormal_FTSEw,statADnormal_FTSEw, cvADnormal_FTSEw] = adtestenormal(lcFTSE100W,muFTSE100W,sigmaFTSE100W);
[hADnormal_FTSEm,pADnormal_FTSEm,statADnormal_FTSEm, cvADnormal_FTSEm] = adtestenormal(lcFTSE100M,muFTSE100M,sigmaFTSE100M);
[hADnormal_FTSEp1,pADnormal_FTSEp1,statADnormal_FTSEp1, cvADnormal_FTSEp1] = adtestenormal(lcFTSE100P1,muFTSE100P1,sigmaFTSE100P1);
[hADnormal_FTSEp2,pADnormal_FTSEp2,statADnormal_FTSEp2, cvADnormal_FTSEp2] = adtestenormal(lcFTSE100P2,muFTSE100P2,sigmaFTSE100P2);
[hADnormal_FTSEp3,pADnormal_FTSEp3,statADnormal_FTSEp3, cvADnormal_FTSEp3] = adtestenormal(lcFTSE100P3,muFTSE100P3,sigmaFTSE100P3);
[hADnormal_FTSEp4,pADnormal_FTSEp4,statADnormal_FTSEp4, cvADnormal_FTSEp4] = adtestenormal(lcFTSE100P4,muFTSE100P4,sigmaFTSE100P4);
[hADnormal_NIKKEId,pADnormal_NIKKEId,statADnormal_NIKKEId, cvADnormal_NIKKEId] = adtestenormal(lcNIKKEI225D,muNIKKEI225D,sigmaNIKKEI225D);
[hADnormal_NIKKEIw,pADnormal_NIKKEIw,statADnormal_NIKKEIw, cvADnormal_NIKKEIw] = adtestenormal(lcNIKKEI225W,muNIKKEI225W,sigmaNIKKEI225W);
[hADnormal_NIKKEIm,pADnormal_NIKKEIm,statADnormal_NIKKEIm, cvADnormal_NIKKEIm] = adtestenormal(lcNIKKEI225M,muNIKKEI225M,sigmaNIKKEI225M);
[hADnormal_NIKKEIp1,pADnormal_NIKKEIp1,statADnormal_NIKKEIp1, cvADnormal_NIKKEIp1] = adtestenormal(lcNIKKEI225P1,muNIKKEI225P1,sigmaNIKKEI225P1);
[hADnormal_NIKKEIp2,pADnormal_NIKKEIp2,statADnormal_NIKKEIp2, cvADnormal_NIKKEIp2] = adtestenormal(lcNIKKEI225P2,muNIKKEI225P2,sigmaNIKKEI225P2);
[hADnormal_NIKKEIp3,pADnormal_NIKKEIp3,statADnormal_NIKKEIp3, cvADnormal_NIKKEIp3] = adtestenormal(lcNIKKEI225P3,muNIKKEI225P3,sigmaNIKKEI225P3);
[hADnormal_NIKKEIp4,pADnormal_NIKKEIp4,statADnormal_NIKKEIp4, cvADnormal_NIKKEIp4] = adtestenormal(lcNIKKEI225P4,muNIKKEI225P4,sigmaNIKKEI225P4);
[hADnormal_SPd,pADnormal_SPd,statADnormal_SPd, cvADnormal_SPd] = adtestenormal(lcSP500D,muSP500D,sigmaSP500D);
[hADnormal_SPw,pADnormal_SPw,statADnormal_SPw, cvADnormal_SPw] = adtestenormal(lcSP500W,muSP500W,sigmaSP500W);
[hADnormal_SPm,pADnormal_SPm,statADnormal_SPm, cvADnormal_SPm] = adtestenormal(lcSP500M,muSP500M,sigmaSP500M);
[hADnormal_SPp1,pADnormal_SPp1,statADnormal_SPp1, cvADnormal_SPp1] = adtestenormal(lcSP500P1,muSP500P1,sigmaSP500P1);
[hADnormal_SPp2,pADnormal_SPp2,statADnormal_SPp2, cvADnormal_SPp2] = adtestenormal(lcSP500P2,muSP500P2,sigmaSP500P2);
[hADnormal_SPp3,pADnormal_SPp3,statADnormal_SPp3, cvADnormal_SPp3] = adtestenormal(lcSP500P3,muSP500P3,sigmaSP500P3);
[hADnormal_SPp4,pADnormal_SPp4,statADnormal_SPp4, cvADnormal_SPp4] = adtestenormal(lcSP500P4,muSP500P4,sigmaSP500P4);
[hADnormal_PRTFd,pADnormal_PRTFd,statADnormal_PRTFd, cvADnormal_PRTFd] = adtestenormal(lcPRTFD,muPRTFD,sigmaPRTFD);
[hADnormal_PRTFw,pADnormal_PRTFw,statADnormal_PRTFw, cvADnormal_PRTFw] = adtestenormal(lcPRTFW,muPRTFW,sigmaPRTFW);
[hADnormal_PRTFm,pADnormal_PRTFm,statADnormal_PRTFm, cvADnormal_PRTFm] = adtestenormal(lcPRTFM,muPRTFM,sigmaPRTFM);
[hADnormal_PRTFp1,pADnormal_PRTFp1,statADnormal_PRTFp1, cvADnormal_PRTFp1] = adtestenormal(lcPRTFP1,muPRTFP1,sigmaPRTFP1);
[hADnormal_PRTFp2,pADnormal_PRTFp2,statADnormal_PRTFp2, cvADnormal_PRTFp2] = adtestenormal(lcPRTFP2,muPRTFP2,sigmaPRTFP2);
[hADnormal_PRTFp3,pADnormal_PRTFp3,statADnormal_PRTFp3, cvADnormal_PRTFp3] = adtestenormal(lcPRTFP3,muPRTFP3,sigmaPRTFP3);
[hADnormal_PRTFp4,pADnormal_PRTFp4,statADnormal_PRTFp4, cvADnormal_PRTFp4] = adtestenormal(lcPRTFP4,muPRTFP4,sigmaPRTFP4);

%sgt
[hADsgt_DAXd,pADsgt_DAXd,statADsgt_DAXd, cvADsgt_DAXd] = ...
    adtestsgt(lcDAX30D,'Distribution','sgt','Parmhat',parmhatDAX30D);
[hADsgt_DAXm,pADsgt_DAXm,statADsgt_DAXm, cvADsgt_DAXm] = ...
    adtestsgt(lcDAX30M,'Distribution','sgt','Parmhat',parmhatDAX30M);
[hADsgt_DAXw,pADsgt_DAXw,statADsgt_DAXw, cvADsgt_DAXw] = ...
    adtestsgt(lcDAX30W,'Distribution','sgt','Parmhat',parmhatDAX30W);
[hADsgt_DAXp1,pADsgt_DAXp1,statADsgt_DAXp1, cvADsgt_DAXp1] = ...
    adtestsgt(lcDAX30P1,'Distribution','sgt','Parmhat',parmhatDAX30P1);
[hADsgt_DAXp2,pADsgt_DAXp2,statADsgt_DAXp2, cvADsgt_DAXp2] = ...
    adtestsgt(lcDAX30P2,'Distribution','sgt','Parmhat',parmhatDAX30P2);
[hADsgt_DAXp3,pADsgt_DAXp3,statADsgt_DAXp3, cvADsgt_DAXp3] = ...
    adtestsgt(lcDAX30P3,'Distribution','sgt','Parmhat',parmhatDAX30P3);
[hADsgt_DAXp4,pADsgt_DAXp4,statADsgt_DAXp4, cvADsgt_DAXp4] = ...
    adtestsgt(lcDAX30P4,'Distribution','sgt','Parmhat',parmhatDAX30P4);
[hADsgt_FTSEd,pADsgt_FTSEd,statADsgt_FTSEd, cvADsgt_FTSEd] = ...
    adtestsgt(lcFTSE100D,'Distribution','sgt','Parmhat',parmhatFTSE100D);
[hADsgt_FTSEm,pADsgt_FTSEm,statADsgt_FTSEm, cvADsgt_FTSEm] = ...
    adtestsgt(lcFTSE100M,'Distribution','sgt','Parmhat',parmhatFTSE100M);
[hADsgt_FTSEw,pADsgt_FTSEw,statADsgt_FTSEw, cvADsgt_FTSEw] = ...
    adtestsgt(lcFTSE100W,'Distribution','sgt','Parmhat',parmhatFTSE100W);
[hADsgt_FTSEp1,pADsgt_FTSEp1,statADsgt_FTSEp1, cvADsgt_FTSEp1] = ...
    adtestsgt(lcFTSE100P1,'Distribution','sgt','Parmhat',parmhatFTSE100P1);
[hADsgt_FTSEp2,pADsgt_FTSEp2,statADsgt_FTSEp2, cvADsgt_FTSEp2] = ...
    adtestsgt(lcFTSE100P2,'Distribution','sgt','Parmhat',parmhatFTSE100P2);
[hADsgt_FTSEp3,pADsgt_FTSEp3,statADsgt_FTSEp3, cvADsgt_FTSEp3] = ...
    adtestsgt(lcFTSE100P3,'Distribution','sgt','Parmhat',parmhatFTSE100P3);
[hADsgt_FTSEp4,pADsgt_FTSEp4,statADsgt_FTSEp4, cvADsgt_FTSEp4] = ...
    adtestsgt(lcFTSE100P4,'Distribution','sgt','Parmhat',parmhatFTSE100P4);
[hADsgt_SPd,pADsgt_SPd,statADsgt_SPd, cvADsgt_SPd] = ...
    adtestsgt(lcSP500D,'Distribution','sgt','Parmhat',parmhatSP500D);
[hADsgt_SPm,pADsgt_SPm,statADsgt_SPm, cvADsgt_SPm] = ...
    adtestsgt(lcSP500M,'Distribution','sgt','Parmhat',parmhatSP500M);
[hADsgt_SPw,pADsgt_SPw,statADsgt_SPw, cvADsgt_SPw] = ...
    adtestsgt(lcSP500W,'Distribution','sgt','Parmhat',parmhatSP500W);
[hADsgt_SPp1,pADsgt_SPp1,statADsgt_SPp1, cvADsgt_SPp1] = ...
    adtestsgt(lcSP500P1,'Distribution','sgt','Parmhat',parmhatSP500P1);
[hADsgt_SPp2,pADsgt_SPp2,statADsgt_SPp2, cvADsgt_SPp2] = ...
    adtestsgt(lcSP500P2,'Distribution','sgt','Parmhat',parmhatSP500P2);
[hADsgt_SPp3,pADsgt_SPp3,statADsgt_SPp3, cvADsgt_SPp3] = ...
    adtestsgt(lcSP500P3,'Distribution','sgt','Parmhat',parmhatSP500P3);
[hADsgt_SPp4,pADsgt_SPp4,statADsgt_SPp4, cvADsgt_SPp4] = ...
    adtestsgt(lcSP500P4,'Distribution','sgt','Parmhat',parmhatSP500P4);
[hADsgt_NIKKEId,pADsgt_NIKKEId,statADsgt_NIKKEId, cvADsgt_NIKKEId] = ...
    adtestsgt(lcNIKKEI225D,'Distribution','sgt','Parmhat',parmhatNIKKEI225D);
[hADsgt_NIKKEIm,pADsgt_NIKKEIm,statADsgt_NIKKEIm, cvADsgt_NIKKEIm] = ...
    adtestsgt(lcNIKKEI225M,'Distribution','sgt','Parmhat',parmhatNIKKEI225M);
[hADsgt_NIKKEIw,pADsgt_NIKKEIw,statADsgt_NIKKEIw, cvADsgt_NIKKEIw] = ...
    adtestsgt(lcNIKKEI225W,'Distribution','sgt','Parmhat',parmhatNIKKEI225W);
[hADsgt_NIKKEIp1,pADsgt_NIKKEIp1,statADsgt_NIKKEIp1, cvADsgt_NIKKEIp1] = ...
    adtestsgt(lcNIKKEI225P1,'Distribution','sgt','Parmhat',parmhatNIKKEI225P1);
[hADsgt_NIKKEIp2,pADsgt_NIKKEIp2,statADsgt_NIKKEIp2, cvADsgt_NIKKEIp2] = ...
    adtestsgt(lcNIKKEI225P2,'Distribution','sgt','Parmhat',parmhatNIKKEI225P2);
[hADsgt_NIKKEIp3,pADsgt_NIKKEIp3,statADsgt_NIKKEIp3, cvADsgt_NIKKEIp3] = ...
    adtestsgt(lcNIKKEI225P3,'Distribution','sgt','Parmhat',parmhatNIKKEI225P3);
[hADsgt_NIKKEIp4,pADsgt_NIKKEIp4,statADsgt_NIKKEIp4, cvADsgt_NIKKEIp4] = ...
    adtestsgt(lcNIKKEI225P4,'Distribution','sgt','Parmhat',parmhatNIKKEI225P4);
[hADsgt_PRTFd,pADsgt_PRTFd,statADsgt_PRTFd, cvADsgt_PRTFd] = ...
    adtestsgt(lcPRTFD,'Distribution','sgt','Parmhat',parmhatPRTFD);
[hADsgt_PRTFm,pADsgt_PRTFm,statADsgt_PRTFm, cvADsgt_PRTFm] = ...
    adtestsgt(lcPRTFM,'Distribution','sgt','Parmhat',parmhatPRTFM);
[hADsgt_PRTFw,pADsgt_PRTFw,statADsgt_PRTFw, cvADsgt_PRTFw] = ...
    adtestsgt(lcPRTFW,'Distribution','sgt','Parmhat',parmhatPRTFW);
[hADsgt_PRTFp1,pADsgt_PRTFp1,statADsgt_PRTFp1, cvADsgt_PRTFp1] = ...
adtestsgt(lcPRTFP1,'Distribution','sgt','Parmhat',parmhatPRTFP1);
[hADsgt_PRTFp2,pADsgt_PRTFp2,statADsgt_PRTFp2, cvADsgt_PRTFp2] = ...
    adtestsgt(lcPRTFP2,'Distribution','sgt','Parmhat',parmhatPRTFP2);
[hADsgt_PRTFp3,pADsgt_PRTFp3,statADsgt_PRTFp3, cvADsgt_PRTFp3] = ...
    adtestsgt(lcPRTFP3,'Distribution','sgt','Parmhat',parmhatPRTFP3);
[hADsgt_PRTFp4,pADsgt_PRTFp4,statADsgt_PRTFp4, cvADsgt_PRTFp4] = ...
    adtestsgt(lcPRTFP4,'Distribution','sgt','Parmhat',parmhatPRTFP4);

%gpd
%5pc
[hADgpd_DAXd_5pc,pADgpd_DAXd_5pc,statADgpd_DAXd_5pc,cvADgpd_DAXd_5pc] = ...
    adtestegpd(gpd_sample_data_DAXd_5pc,gpdfit_DAXd_5pc);
[hADgpd_DAXm_5pc,pADgpd_DAXm_5pc,statADgpd_DAXm_5pc,cvADgpd_DAXm_5pc] = ...
    adtestegpd(gpd_sample_data_DAXm_5pc,gpdfit_DAXm_5pc);
[hADgpd_DAXw_5pc,pADgpd_DAXw_5pc,statADgpd_DAXw_5pc,cvADgpd_DAXw_5pc] = ...
    adtestegpd(gpd_sample_data_DAXw_5pc,gpdfit_DAXw_5pc);
[hADgpd_DAXp1_5pc,pADgpd_DAXp1_5pc,statADgpd_DAXp1_5pc,cvADgpd_DAXp1_5pc] = ...
    adtestegpd(gpd_sample_data_DAXp1_5pc,gpdfit_DAXp1_5pc);
[hADgpd_DAXp2_5pc,pADgpd_DAXp2_5pc,statADgpd_DAXp2_5pc,cvADgpd_DAXp2_5pc] = ...
    adtestegpd(gpd_sample_data_DAXp2_5pc,gpdfit_DAXp2_5pc);
[hADgpd_DAXp3_5pc,pADgpd_DAXp3_5pc,statADgpd_DAXp3_5pc,cvADgpd_DAXp3_5pc] = ...
    adtestegpd(gpd_sample_data_DAXp3_5pc,gpdfit_DAXp3_5pc);
[hADgpd_DAXp4_5pc,pADgpd_DAXp4_5pc,statADgpd_DAXp4_5pc,cvADgpd_DAXp4_5pc] = ...
    adtestegpd(gpd_sample_data_DAXp4_5pc,gpdfit_DAXp4_5pc);
[hADgpd_FTSEd_5pc,pADgpd_FTSEd_5pc,statADgpd_FTSEd_5pc,cvADgpd_FTSEd_5pc] = ...
    adtestegpd(gpd_sample_data_FTSEd_5pc,gpdfit_FTSEd_5pc);
[hADgpd_FTSEm_5pc,pADgpd_FTSEm_5pc,statADgpd_FTSEm_5pc,cvADgpd_FTSEm_5pc] = ...
    adtestegpd(gpd_sample_data_FTSEm_5pc,gpdfit_FTSEm_5pc);
[hADgpd_FTSEw_5pc,pADgpd_FTSEw_5pc,statADgpd_FTSEw_5pc,cvADgpd_FTSEw_5pc] = ...
    adtestegpd(gpd_sample_data_FTSEw_5pc,gpdfit_FTSEw_5pc);
[hADgpd_FTSEp1_5pc,pADgpd_FTSEp1_5pc,statADgpd_FTSEp1_5pc,cvADgpd_FTSEp1_5pc] = ...
    adtestegpd(gpd_sample_data_FTSEp1_5pc,gpdfit_FTSEp1_5pc);
[hADgpd_FTSEp2_5pc,pADgpd_FTSEp2_5pc,statADgpd_FTSEp2_5pc,cvADgpd_FTSEp2_5pc] = ...
    adtestegpd(gpd_sample_data_FTSEp2_5pc,gpdfit_FTSEp2_5pc);
[hADgpd_FTSEp3_5pc,pADgpd_FTSEp3_5pc,statADgpd_FTSEp3_5pc,cvADgpd_FTSEp3_5pc] = ...
    adtestegpd(gpd_sample_data_FTSEp3_5pc,gpdfit_FTSEp3_5pc);
[hADgpd_FTSEp4_5pc,pADgpd_FTSEp4_5pc,statADgpd_FTSEp4_5pc,cvADgpd_FTSEp4_5pc] = ...
    adtestegpd(gpd_sample_data_FTSEp4_5pc,gpdfit_FTSEp4_5pc);
[hADgpd_SPd_5pc,pADgpd_SPd_5pc,statADgpd_SPd_5pc,cvADgpd_SPd_5pc] = ...
    adtestegpd(gpd_sample_data_SPd_5pc,gpdfit_SPd_5pc);
[hADgpd_SPm_5pc,pADgpd_SPm_5pc,statADgpd_SPm_5pc,cvADgpd_SPm_5pc] = ...
    adtestegpd(gpd_sample_data_SPm_5pc,gpdfit_SPm_5pc);
[hADgpd_SPw_5pc,pADgpd_SPw_5pc,statADgpd_SPw_5pc,cvADgpd_SPw_5pc] = ...
    adtestegpd(gpd_sample_data_SPw_5pc,gpdfit_SPw_5pc);
[hADgpd_SPp1_5pc,pADgpd_SPp1_5pc,statADgpd_SPp1_5pc,cvADgpd_SPp1_5pc] = ...
    adtestegpd(gpd_sample_data_SPp1_5pc,gpdfit_SPp1_5pc);
[hADgpd_SPp2_5pc,pADgpd_SPp2_5pc,statADgpd_SPp2_5pc,cvADgpd_SPp2_5pc] = ...
    adtestegpd(gpd_sample_data_SPp2_5pc,gpdfit_SPp2_5pc);
[hADgpd_SPp3_5pc,pADgpd_SPp3_5pc,statADgpd_SPp3_5pc,cvADgpd_SPp3_5pc] = ...
    adtestegpd(gpd_sample_data_SPp3_5pc,gpdfit_SPp3_5pc);
[hADgpd_SPp4_5pc,pADgpd_SPp4_5pc,statADgpd_SPp4_5pc,cvADgpd_SPp4_5pc] = ...
    adtestegpd(gpd_sample_data_SPp4_5pc,gpdfit_SPp4_5pc);
[hADgpd_NIKKEId_5pc,pADgpd_NIKKEId_5pc,statADgpd_NIKKEId_5pc,cvADgpd_NIKKEId_5pc] = ...
    adtestegpd(gpd_sample_data_NIKKEId_5pc,gpdfit_NIKKEId_5pc);
[hADgpd_NIKKEIm_5pc,pADgpd_NIKKEIm_5pc,statADgpd_NIKKEIm_5pc,cvADgpd_NIKKEIm_5pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIm_5pc,gpdfit_NIKKEIm_5pc);
[hADgpd_NIKKEIw_5pc,pADgpd_NIKKEIw_5pc,statADgpd_NIKKEIw_5pc,cvADgpd_NIKKEIw_5pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIw_5pc,gpdfit_NIKKEIw_5pc);
[hADgpd_NIKKEIp1_5pc,pADgpd_NIKKEIp1_5pc,statADgpd_NIKKEIp1_5pc,cvADgpd_NIKKEIp1_5pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIp1_5pc,gpdfit_NIKKEIp1_5pc);
[hADgpd_NIKKEIp2_5pc,pADgpd_NIKKEIp2_5pc,statADgpd_NIKKEIp2_5pc,cvADgpd_NIKKEIp2_5pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIp2_5pc,gpdfit_NIKKEIp2_5pc);
[hADgpd_NIKKEIp3_5pc,pADgpd_NIKKEIp3_5pc,statADgpd_NIKKEIp3_5pc,cvADgpd_NIKKEIp3_5pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIp3_5pc,gpdfit_NIKKEIp3_5pc);
[hADgpd_NIKKEIp4_5pc,pADgpd_NIKKEIp4_5pc,statADgpd_NIKKEIp4_5pc,cvADgpd_NIKKEIp4_5pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIp4_5pc,gpdfit_NIKKEIp4_5pc);
[hADgpd_PRTFd_5pc,pADgpd_PRTFd_5pc,statADgpd_PRTFd_5pc,cvADgpd_PRTFd_5pc] = ...
    adtestegpd(gpd_sample_data_PRTFd_5pc,gpdfit_PRTFd_5pc);
[hADgpd_PRTFm_5pc,pADgpd_PRTFm_5pc,statADgpd_PRTFm_5pc,cvADgpd_PRTFm_5pc] = ...
    adtestegpd(gpd_sample_data_PRTFm_5pc,gpdfit_PRTFm_5pc);
[hADgpd_PRTFw_5pc,pADgpd_PRTFw_5pc,statADgpd_PRTFw_5pc,cvADgpd_PRTFw_5pc] = ...
    adtestegpd(gpd_sample_data_PRTFw_5pc,gpdfit_PRTFw_5pc);
[hADgpd_PRTFp1_5pc,pADgpd_PRTFp1_5pc,statADgpd_PRTFp1_5pc,cvADgpd_PRTFp1_5pc] = ...
    adtestegpd(gpd_sample_data_PRTFp1_5pc,gpdfit_PRTFp1_5pc);
[hADgpd_PRTFp2_5pc,pADgpd_PRTFp2_5pc,statADgpd_PRTFp2_5pc,cvADgpd_PRTFp2_5pc] = ...
    adtestegpd(gpd_sample_data_PRTFp2_5pc,gpdfit_PRTFp2_5pc);
[hADgpd_PRTFp3_5pc,pADgpd_PRTFp3_5pc,statADgpd_PRTFp3_5pc,cvADgpd_PRTFp3_5pc] = ...
    adtestegpd(gpd_sample_data_PRTFp3_5pc,gpdfit_PRTFp3_5pc);
[hADgpd_PRTFp4_5pc,pADgpd_PRTFp4_5pc,statADgpd_PRTFp4_5pc,cvADgpd_PRTFp4_5pc] = ...
    adtestegpd(gpd_sample_data_PRTFp4_5pc,gpdfit_PRTFp4_5pc);
%20pc
[hADgpd_DAXd_20pc,pADgpd_DAXd_20pc,statADgpd_DAXd_20pc,cvADgpd_DAXd_20pc] = ...
    adtestegpd(gpd_sample_data_DAXd_20pc,gpdfit_DAXd_20pc);
[hADgpd_DAXm_20pc,pADgpd_DAXm_20pc,statADgpd_DAXm_20pc,cvADgpd_DAXm_20pc] = ...
    adtestegpd(gpd_sample_data_DAXm_20pc,gpdfit_DAXm_20pc);
[hADgpd_DAXw_20pc,pADgpd_DAXw_20pc,statADgpd_DAXw_20pc,cvADgpd_DAXw_20pc] = ...
    adtestegpd(gpd_sample_data_DAXw_20pc,gpdfit_DAXw_20pc);
[hADgpd_DAXp1_20pc,pADgpd_DAXp1_20pc,statADgpd_DAXp1_20pc,cvADgpd_DAXp1_20pc] = ...
    adtestegpd(gpd_sample_data_DAXp1_20pc,gpdfit_DAXp1_20pc);
[hADgpd_DAXp2_20pc,pADgpd_DAXp2_20pc,statADgpd_DAXp2_20pc,cvADgpd_DAXp2_20pc] = ...
    adtestegpd(gpd_sample_data_DAXp2_20pc,gpdfit_DAXp2_20pc);
[hADgpd_DAXp3_20pc,pADgpd_DAXp3_20pc,statADgpd_DAXp3_20pc,cvADgpd_DAXp3_20pc] = ...
    adtestegpd(gpd_sample_data_DAXp3_20pc,gpdfit_DAXp3_20pc);
[hADgpd_DAXp4_20pc,pADgpd_DAXp4_20pc,statADgpd_DAXp4_20pc,cvADgpd_DAXp4_20pc] = ...
    adtestegpd(gpd_sample_data_DAXp4_20pc,gpdfit_DAXp4_20pc);
[hADgpd_FTSEd_20pc,pADgpd_FTSEd_20pc,statADgpd_FTSEd_20pc,cvADgpd_FTSEd_20pc] = ...
    adtestegpd(gpd_sample_data_FTSEd_20pc,gpdfit_FTSEd_20pc);
[hADgpd_FTSEm_20pc,pADgpd_FTSEm_20pc,statADgpd_FTSEm_20pc,cvADgpd_FTSEm_20pc] = ...
    adtestegpd(gpd_sample_data_FTSEm_20pc,gpdfit_FTSEm_20pc);
[hADgpd_FTSEw_20pc,pADgpd_FTSEw_20pc,statADgpd_FTSEw_20pc,cvADgpd_FTSEw_20pc] = ...
    adtestegpd(gpd_sample_data_FTSEw_20pc,gpdfit_FTSEw_20pc);
[hADgpd_FTSEp1_20pc,pADgpd_FTSEp1_20pc,statADgpd_FTSEp1_20pc,cvADgpd_FTSEp1_20pc] = ...
    adtestegpd(gpd_sample_data_FTSEp1_20pc,gpdfit_FTSEp1_20pc);
[hADgpd_FTSEp2_20pc,pADgpd_FTSEp2_20pc,statADgpd_FTSEp2_20pc,cvADgpd_FTSEp2_20pc] = ...
    adtestegpd(gpd_sample_data_FTSEp2_20pc,gpdfit_FTSEp2_20pc);
[hADgpd_FTSEp3_20pc,pADgpd_FTSEp3_20pc,statADgpd_FTSEp3_20pc,cvADgpd_FTSEp3_20pc] = ...
    adtestegpd(gpd_sample_data_FTSEp3_20pc,gpdfit_FTSEp3_20pc);
[hADgpd_FTSEp4_20pc,pADgpd_FTSEp4_20pc,statADgpd_FTSEp4_20pc,cvADgpd_FTSEp4_20pc] = ...
    adtestegpd(gpd_sample_data_FTSEp4_20pc,gpdfit_FTSEp4_20pc);
[hADgpd_SPd_20pc,pADgpd_SPd_20pc,statADgpd_SPd_20pc,cvADgpd_SPd_20pc] = ...
    adtestegpd(gpd_sample_data_SPd_20pc,gpdfit_SPd_20pc);
[hADgpd_SPm_20pc,pADgpd_SPm_20pc,statADgpd_SPm_20pc,cvADgpd_SPm_20pc] = ...
    adtestegpd(gpd_sample_data_SPm_20pc,gpdfit_SPm_20pc);
[hADgpd_SPw_20pc,pADgpd_SPw_20pc,statADgpd_SPw_20pc,cvADgpd_SPw_20pc] =...
    adtestegpd(gpd_sample_data_SPw_20pc,gpdfit_SPw_20pc);
[hADgpd_SPp1_20pc,pADgpd_SPp1_20pc,statADgpd_SPp1_20pc,cvADgpd_SPp1_20pc] = ...
    adtestegpd(gpd_sample_data_SPp1_20pc,gpdfit_SPp1_20pc);
[hADgpd_SPp2_20pc,pADgpd_SPp2_20pc,statADgpd_SPp2_20pc,cvADgpd_SPp2_20pc] = ...
    adtestegpd(gpd_sample_data_SPp2_20pc,gpdfit_SPp2_20pc);
[hADgpd_SPp3_20pc,pADgpd_SPp3_20pc,statADgpd_SPp3_20pc,cvADgpd_SPp3_20pc] = ...
    adtestegpd(gpd_sample_data_SPp3_20pc,gpdfit_SPp3_20pc);
[hADgpd_SPp4_20pc,pADgpd_SPp4_20pc,statADgpd_SPp4_20pc,cvADgpd_SPp4_20pc] =...
    adtestegpd(gpd_sample_data_SPp4_20pc,gpdfit_SPp4_20pc);
[hADgpd_NIKKEId_20pc,pADgpd_NIKKEId_20pc,statADgpd_NIKKEId_20pc,cvADgpd_NIKKEId_20pc] =...
    adtestegpd(gpd_sample_data_NIKKEId_20pc,gpdfit_NIKKEId_20pc);
[hADgpd_NIKKEIm_20pc,pADgpd_NIKKEIm_20pc,statADgpd_NIKKEIm_20pc,cvADgpd_NIKKEIm_20pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIm_20pc,gpdfit_NIKKEIm_20pc);
[hADgpd_NIKKEIw_20pc,pADgpd_NIKKEIw_20pc,statADgpd_NIKKEIw_20pc,cvADgpd_NIKKEIw_20pc] =...
    adtestegpd(gpd_sample_data_NIKKEIw_20pc,gpdfit_NIKKEIw_20pc);
[hADgpd_NIKKEIp1_20pc,pADgpd_NIKKEIp1_20pc,statADgpd_NIKKEIp1_20pc,cvADgpd_NIKKEIp1_20pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIp1_20pc,gpdfit_NIKKEIp1_20pc);
[hADgpd_NIKKEIp2_20pc,pADgpd_NIKKEIp2_20pc,statADgpd_NIKKEIp2_20pc,cvADgpd_NIKKEIp2_20pc] = ...
    adtestegpd(gpd_sample_data_NIKKEIp2_20pc,gpdfit_NIKKEIp2_20pc);
[hADgpd_NIKKEIp3_20pc,pADgpd_NIKKEIp3_20pc,statADgpd_NIKKEIp3_20pc,cvADgpd_NIKKEIp3_20pc] =...
    adtestegpd(gpd_sample_data_NIKKEIp3_20pc,gpdfit_NIKKEIp3_20pc);
[hADgpd_NIKKEIp4_20pc,pADgpd_NIKKEIp4_20pc,statADgpd_NIKKEIp4_20pc,cvADgpd_NIKKEIp4_20pc] =...
    adtestegpd(gpd_sample_data_NIKKEIp4_20pc,gpdfit_NIKKEIp4_20pc);
[hADgpd_PRTFd_20pc,pADgpd_PRTFd_20pc,statADgpd_PRTFd_20pc,cvADgpd_PRTFd_20pc] =...
    adtestegpd(gpd_sample_data_PRTFd_20pc,gpdfit_PRTFd_20pc);
[hADgpd_PRTFm_20pc,pADgpd_PRTFm_20pc,statADgpd_PRTFm_20pc,cvADgpd_PRTFm_20pc] = ...
    adtestegpd(gpd_sample_data_PRTFm_20pc,gpdfit_PRTFm_20pc);
[hADgpd_PRTFw_20pc,pADgpd_PRTFw_20pc,statADgpd_PRTFw_20pc,cvADgpd_PRTFw_20pc] = ...
    adtestegpd(gpd_sample_data_PRTFw_20pc,gpdfit_PRTFw_20pc);
[hADgpd_PRTFp1_20pc,pADgpd_PRTFp1_20pc,statADgpd_PRTFp1_20pc,cvADgpd_PRTFp1_20pc] = ...
    adtestegpd(gpd_sample_data_PRTFp1_20pc,gpdfit_PRTFp1_20pc);
[hADgpd_PRTFp2_20pc,pADgpd_PRTFp2_20pc,statADgpd_PRTFp2_20pc,cvADgpd_PRTFp2_20pc] = ...
    adtestegpd(gpd_sample_data_PRTFp2_20pc,gpdfit_PRTFp2_20pc);
[hADgpd_PRTFp3_20pc,pADgpd_PRTFp3_20pc,statADgpd_PRTFp3_20pc,cvADgpd_PRTFp3_20pc] = ...
    adtestegpd(gpd_sample_data_PRTFp3_20pc,gpdfit_PRTFp3_20pc);
[hADgpd_PRTFp4_20pc,pADgpd_PRTFp4_20pc,statADgpd_PRTFp4_20pc,cvADgpd_PRTFp4_20pc] =...
    adtestegpd(gpd_sample_data_PRTFp4_20pc,gpdfit_PRTFp4_20pc);


%Kupier test
%normal
[hKnormal_DAXd,pKnormal_DAXd, statKnormal_DAXd, cvKnormal_DAXd] = ...
    kuipertest(lcDAX30D,'alpha',0.01,'CDF',makedist('Normal','mu',muDAX30D,'sigma',sigmaDAX30D));
[hKnormal_DAXw,pKnormal_DAXw, statKnormal_DAXw, cvKnormal_DAXw] = ...
    kuipertest(lcDAX30W,'alpha',0.01,'CDF',makedist('Normal','mu',muDAX30W,'sigma',sigmaDAX30W));
[hKnormal_DAXm,pKnormal_DAXm, statKnormal_DAXm, cvKnormal_DAXm] = ...
    kuipertest(lcDAX30M,'alpha',0.01,'CDF',makedist('Normal','mu',muDAX30M,'sigma',sigmaDAX30M));
[hKnormal_DAXp1,pKnormal_DAXp1, statKnormal_DAXp1, cvKnormal_DAXp1] = ...
    kuipertest(lcDAX30P1,'alpha',0.01,'CDF',makedist('Normal','mu',muDAX30P1,'sigma',sigmaDAX30P1));
[hKnormal_DAXp2,pKnormal_DAXp2, statKnormal_DAXp2, cvKnormal_DAXp2] = ...
    kuipertest(lcDAX30P2,'alpha',0.01,'CDF',makedist('Normal','mu',muDAX30P2,'sigma',sigmaDAX30P2));
[hKnormal_DAXp3,pKnormal_DAXp3, statKnormal_DAXp3, cvKnormal_DAXp3] = ...
    kuipertest(lcDAX30P3,'alpha',0.01,'CDF',makedist('Normal','mu',muDAX30P3,'sigma',sigmaDAX30P3));
[hKnormal_DAXp4,pKnormal_DAXp4, statKnormal_DAXp4, cvKnormal_DAXp4] = ...
    kuipertest(lcDAX30P4,'alpha',0.01,'CDF',makedist('Normal','mu',muDAX30P4,'sigma',sigmaDAX30P4));
[hKnormal_FTSEd,pKnormal_FTSEd, statKnormal_FTSEd, cvKnormal_FTSEd] = ...
    kuipertest(lcFTSE100D,'alpha',0.01,'CDF',makedist('Normal','mu',muFTSE100D,'sigma',sigmaFTSE100D));
[hKnormal_FTSEw,pKnormal_FTSEw, statKnormal_FTSEw, cvKnormal_FTSEw] = ...
    kuipertest(lcFTSE100W,'alpha',0.01,'CDF',makedist('Normal','mu',muFTSE100W,'sigma',sigmaFTSE100W));
[hKnormal_FTSEm,pKnormal_FTSEm, statKnormal_FTSEm, cvKnormal_FTSEm] = ...
    kuipertest(lcFTSE100M,'alpha',0.01,'CDF',makedist('Normal','mu',muFTSE100M,'sigma',sigmaFTSE100M));
[hKnormal_FTSEp1,pKnormal_FTSEp1, statKnormal_FTSEp1, cvKnormal_FTSEp1] = ...
    kuipertest(lcFTSE100P1,'alpha',0.01,'CDF',makedist('Normal','mu',muFTSE100P1,'sigma',sigmaFTSE100P1));
[hKnormal_FTSEp2,pKnormal_FTSEp2, statKnormal_FTSEp2, cvKnormal_FTSEp2] = ...
    kuipertest(lcFTSE100P2,'alpha',0.01,'CDF',makedist('Normal','mu',muFTSE100P2,'sigma',sigmaFTSE100P2));
[hKnormal_FTSEp3,pKnormal_FTSEp3, statKnormal_FTSEp3, cvKnormal_FTSEp3] = ...
    kuipertest(lcFTSE100P3,'alpha',0.01,'CDF',makedist('Normal','mu',muFTSE100P3,'sigma',sigmaFTSE100P3));
[hKnormal_FTSEp4,pKnormal_FTSEp4, statKnormal_FTSEp4, cvKnormal_FTSEp4] = ...
    kuipertest(lcFTSE100P4,'alpha',0.01,'CDF',makedist('Normal','mu',muFTSE100P4,'sigma',sigmaFTSE100P4));
[hKnormal_NIKKEId,pKnormal_NIKKEId, statKnormal_NIKKEId, cvKnormal_NIKKEId] = ...
    kuipertest(lcNIKKEI225D,'alpha',0.01,'CDF',makedist('Normal','mu',muNIKKEI225D,'sigma',sigmaNIKKEI225D));
[hKnormal_NIKKEIw,pKnormal_NIKKEIw, statKnormal_NIKKEIw, cvKnormal_NIKKEIw] = ...
    kuipertest(lcNIKKEI225W,'alpha',0.01,'CDF',makedist('Normal','mu',muNIKKEI225W,'sigma',sigmaNIKKEI225W));
[hKnormal_NIKKEIm,pKnormal_NIKKEIm, statKnormal_NIKKEIm, cvKnormal_NIKKEIm] = ...
    kuipertest(lcNIKKEI225M,'alpha',0.01,'CDF',makedist('Normal','mu',muNIKKEI225M,'sigma',sigmaNIKKEI225M));
[hKnormal_NIKKEIp1,pKnormal_NIKKEIp1, statKnormal_NIKKEIp1, cvKnormal_NIKKEIp1] = ...
    kuipertest(lcNIKKEI225P1,'alpha',0.01,'CDF',makedist('Normal','mu',muNIKKEI225P1,'sigma',sigmaNIKKEI225P1));
[hKnormal_NIKKEIp2,pKnormal_NIKKEIp2, statKnormal_NIKKEIp2, cvKnormal_NIKKEIp2] = ...
    kuipertest(lcNIKKEI225P2,'alpha',0.01,'CDF',makedist('Normal','mu',muNIKKEI225P2,'sigma',sigmaNIKKEI225P2));
[hKnormal_NIKKEIp3,pKnormal_NIKKEIp3, statKnormal_NIKKEIp3, cvKnormal_NIKKEIp3] = ...
    kuipertest(lcNIKKEI225P3,'alpha',0.01,'CDF',makedist('Normal','mu',muNIKKEI225P3,'sigma',sigmaNIKKEI225P3));
[hKnormal_NIKKEIp4,pKnormal_NIKKEIp4, statKnormal_NIKKEIp4, cvKnormal_NIKKEIp4] = ...
    kuipertest(lcNIKKEI225P4,'alpha',0.01,'CDF',makedist('Normal','mu',muNIKKEI225P4,'sigma',sigmaNIKKEI225P4));
[hKnormal_SPd,pKnormal_SPd, statKnormal_SPd, cvKnormal_SPd] = ...
    kuipertest(lcSP500D,'alpha',0.01,'CDF',makedist('Normal','mu',muSP500D,'sigma',sigmaSP500D));
[hKnormal_SPw,pKnormal_SPw, statKnormal_SPw, cvKnormal_SPw] = ...
    kuipertest(lcSP500W,'alpha',0.01,'CDF',makedist('Normal','mu',muSP500W,'sigma',sigmaSP500W));
[hKnormal_SPm,pKnormal_SPm, statKnormal_SPm, cvKnormal_SPm] = ...
    kuipertest(lcSP500M,'alpha',0.01,'CDF',makedist('Normal','mu',muSP500M,'sigma',sigmaSP500M));
[hKnormal_SPp1,pKnormal_SPp1, statKnormal_SPp1, cvKnormal_SPp1] = ...
    kuipertest(lcSP500P1,'alpha',0.01,'CDF',makedist('Normal','mu',muSP500P1,'sigma',sigmaSP500P1));
[hKnormal_SPp2,pKnormal_SPp2, statKnormal_SPp2, cvKnormal_SPp2] = ...
    kuipertest(lcSP500P2,'alpha',0.01,'CDF',makedist('Normal','mu',muSP500P2,'sigma',sigmaSP500P2));
[hKnormal_SPp3,pKnormal_SPp3, statKnormal_SPp3, cvKnormal_SPp3] = ...
    kuipertest(lcSP500P3,'alpha',0.01,'CDF',makedist('Normal','mu',muSP500P3,'sigma',sigmaSP500P3));
[hKnormal_SPp4,pKnormal_SPp4, statKnormal_SPp4, cvKnormal_SPp4] = ...
    kuipertest(lcSP500P4,'alpha',0.01,'CDF',makedist('Normal','mu',muSP500P4,'sigma',sigmaSP500P4));
[hKnormal_PRTFd,pKnormal_PRTFd, statKnormal_PRTFd, cvKnormal_PRTFd] = ...
    kuipertest(lcPRTFD,'alpha',0.01,'CDF',makedist('Normal','mu',muPRTFD,'sigma',sigmaPRTFD));
[hKnormal_PRTFw,pKnormal_PRTFw, statKnormal_PRTFw, cvKnormal_PRTFw] = ...
    kuipertest(lcPRTFW,'alpha',0.01,'CDF',makedist('Normal','mu',muPRTFW,'sigma',sigmaPRTFW));
[hKnormal_PRTFm,pKnormal_PRTFm, statKnormal_PRTFm, cvKnormal_PRTFm] = ...
    kuipertest(lcPRTFM,'alpha',0.01,'CDF',makedist('Normal','mu',muPRTFM,'sigma',sigmaPRTFM));
[hKnormal_PRTFp1,pKnormal_PRTFp1, statKnormal_PRTFp1, cvKnormal_PRTFp1] = ...
    kuipertest(lcPRTFP1,'alpha',0.01,'CDF',makedist('Normal','mu',muPRTFP1,'sigma',sigmaPRTFP1));
[hKnormal_PRTFp2,pKnormal_PRTFp2, statKnormal_PRTFp2, cvKnormal_PRTFp2] = ...
    kuipertest(lcPRTFP2,'alpha',0.01,'CDF',makedist('Normal','mu',muPRTFP2,'sigma',sigmaPRTFP2));
[hKnormal_PRTFp3,pKnormal_PRTFp3, statKnormal_PRTFp3, cvKnormal_PRTFp3] = ...
    kuipertest(lcPRTFP3,'alpha',0.01,'CDF',makedist('Normal','mu',muPRTFP3,'sigma',sigmaPRTFP3));
[hKnormal_PRTFp4,pKnormal_PRTFp4, statKnormal_PRTFp4, cvKnormal_PRTFp4] = ...
    kuipertest(lcPRTFP4,'alpha',0.01,'CDF',makedist('Normal','mu',muPRTFP4,'sigma',sigmaPRTFP4));

%sgt
[hKsgt_DAXd,pKsgt_DAXd, statKsgt_DAXd, cvKsgt_DAXd] = kuipertestsgt(lcDAX30D, parmhatDAX30D);
[hKsgt_DAXw,pKsgt_DAXw, statKsgt_DAXw, cvKsgt_DAXw] = kuipertestsgt(lcDAX30W, parmhatDAX30W);
[hKsgt_DAXm,pKsgt_DAXm, statKsgt_DAXm, cvKsgt_DAXm] = kuipertestsgt(lcDAX30M, parmhatDAX30M);
[hKsgt_DAXp1,pKsgt_DAXp1, statKsgt_DAXp1, cvKsgt_DAXp1] = kuipertestsgt(lcDAX30P1, parmhatDAX30P1);
[hKsgt_DAXp2,pKsgt_DAXp2, statKsgt_DAXp2, cvKsgt_DAXp2] = kuipertestsgt(lcDAX30P2, parmhatDAX30P2);
[hKsgt_DAXp3,pKsgt_DAXp3, statKsgt_DAXp3, cvKsgt_DAXp3] = kuipertestsgt(lcDAX30P3, parmhatDAX30P3);
[hKsgt_DAXp4,pKsgt_DAXp4, statKsgt_DAXp4, cvKsgt_DAXp4] = kuipertestsgt(lcDAX30P4, parmhatDAX30P4);
[hKsgt_FTSEd,pKsgt_FTSEd, statKsgt_FTSEd, cvKsgt_FTSEd] = kuipertestsgt(lcFTSE100D, parmhatFTSE100D);
[hKsgt_FTSEw,pKsgt_FTSEw, statKsgt_FTSEw, cvKsgt_FTSEw] = kuipertestsgt(lcFTSE100W, parmhatFTSE100W);
[hKsgt_FTSEm,pKsgt_FTSEm, statKsgt_FTSEm, cvKsgt_FTSEm] = kuipertestsgt(lcFTSE100M, parmhatFTSE100M);
[hKsgt_FTSEp1,pKsgt_FTSEp1, statKsgt_FTSEp1, cvKsgt_FTSEp1] = kuipertestsgt(lcFTSE100P1, parmhatFTSE100P1);
[hKsgt_FTSEp2,pKsgt_FTSEp2, statKsgt_FTSEp2, cvKsgt_FTSEp2] = kuipertestsgt(lcFTSE100P2, parmhatFTSE100P2);
[hKsgt_FTSEp3,pKsgt_FTSEp3, statKsgt_FTSEp3, cvKsgt_FTSEp3] = kuipertestsgt(lcFTSE100P3, parmhatFTSE100P3);
[hKsgt_FTSEp4,pKsgt_FTSEp4, statKsgt_FTSEp4, cvKsgt_FTSEp4] = kuipertestsgt(lcFTSE100P4, parmhatFTSE100P4);
[hKsgt_NIKKEId,pKsgt_NIKKEId, statKsgt_NIKKEId, cvKsgt_NIKKEId] = kuipertestsgt(lcNIKKEI225D, parmhatNIKKEI225D);
[hKsgt_NIKKEIw,pKsgt_NIKKEIw, statKsgt_NIKKEIw, cvKsgt_NIKKEIw] = kuipertestsgt(lcNIKKEI225W, parmhatNIKKEI225W);
[hKsgt_NIKKEIm,pKsgt_NIKKEIm, statKsgt_NIKKEIm, cvKsgt_NIKKEIm] = kuipertestsgt(lcNIKKEI225M, parmhatNIKKEI225M);
[hKsgt_NIKKEIp1,pKsgt_NIKKEIp1, statKsgt_NIKKEIp1, cvKsgt_NIKKEIp1] = kuipertestsgt(lcNIKKEI225P1, parmhatNIKKEI225P1);
[hKsgt_NIKKEIp2,pKsgt_NIKKEIp2, statKsgt_NIKKEIp2, cvKsgt_NIKKEIp2] = kuipertestsgt(lcNIKKEI225P2, parmhatNIKKEI225P2);
[hKsgt_NIKKEIp3,pKsgt_NIKKEIp3, statKsgt_NIKKEIp3, cvKsgt_NIKKEIp3] = kuipertestsgt(lcNIKKEI225P3, parmhatNIKKEI225P3);
[hKsgt_NIKKEIp4,pKsgt_NIKKEIp4, statKsgt_NIKKEIp4, cvKsgt_NIKKEIp4] = kuipertestsgt(lcNIKKEI225P4, parmhatNIKKEI225P4);
[hKsgt_SPd,pKsgt_SPd, statKsgt_SPd, cvKsgt_SPd] = kuipertestsgt(lcSP500D, parmhatSP500D);
[hKsgt_SPw,pKsgt_SPw, statKsgt_SPw, cvKsgt_SPw] = kuipertestsgt(lcSP500W, parmhatSP500W);
[hKsgt_SPm,pKsgt_SPm, statKsgt_SPm, cvKsgt_SPm] = kuipertestsgt(lcSP500M, parmhatSP500M);
[hKsgt_SPp1,pKsgt_SPp1, statKsgt_SPp1, cvKsgt_SPp1] = kuipertestsgt(lcSP500P1, parmhatSP500P1);
[hKsgt_SPp2,pKsgt_SPp2, statKsgt_SPp2, cvKsgt_SPp2] = kuipertestsgt(lcSP500P2, parmhatSP500P2);
[hKsgt_SPp3,pKsgt_SPp3, statKsgt_SPp3, cvKsgt_SPp3] = kuipertestsgt(lcSP500P3, parmhatSP500P3);
[hKsgt_SPp4,pKsgt_SPp4, statKsgt_SPp4, cvKsgt_SPp4] = kuipertestsgt(lcSP500P4, parmhatSP500P4);
[hKsgt_PRTFd,pKsgt_PRTFd, statKsgt_PRTFd, cvKsgt_PRTFd] = kuipertestsgt(lcPRTFD, parmhatPRTFD);
[hKsgt_PRTFw,pKsgt_PRTFw, statKsgt_PRTFw, cvKsgt_PRTFw] = kuipertestsgt(lcPRTFW, parmhatPRTFW);
[hKsgt_PRTFm,pKsgt_PRTFm, statKsgt_PRTFm, cvKsgt_PRTFm] = kuipertestsgt(lcPRTFM, parmhatPRTFM);
[hKsgt_PRTFp1,pKsgt_PRTFp1, statKsgt_PRTFp1, cvKsgt_PRTFp1] = kuipertestsgt(lcPRTFP1, parmhatPRTFP1);
[hKsgt_PRTFp2,pKsgt_PRTFp2, statKsgt_PRTFp2, cvKsgt_PRTFp2] = kuipertestsgt(lcPRTFP2, parmhatPRTFP2);
[hKsgt_PRTFp3,pKsgt_PRTFp3, statKsgt_PRTFp3, cvKsgt_PRTFp3] = kuipertestsgt(lcPRTFP3, parmhatPRTFP3);
[hKsgt_PRTFp4,pKsgt_PRTFp4, statKsgt_PRTFp4, cvKsgt_PRTFp4] = kuipertestsgt(lcPRTFP4, parmhatPRTFP4);


%gpd
%5pc
[hKgpd_DAXd_5pc,pKgpd_DAXd_5pc, statKgpd_DAXd_5pc, cvKgpd_DAXd_5pc] = kuipertestgpd(gpd_sample_data_DAXd_5pc,gpdfit_DAXd_5pc);
[hKgpd_DAXw_5pc,pKgpd_DAXw_5pc, statKgpd_DAXw_5pc, cvKgpd_DAXw_5pc] = kuipertestgpd(gpd_sample_data_DAXw_5pc,gpdfit_DAXw_5pc);
[hKgpd_DAXm_5pc,pKgpd_DAXm_5pc, statKgpd_DAXm_5pc, cvKgpd_DAXm_5pc] = kuipertestgpd(gpd_sample_data_DAXm_5pc,gpdfit_DAXm_5pc);
[hKgpd_DAXp1_5pc,pKgpd_DAXp1_5pc, statKgpd_DAXp1_5pc, cvKgpd_DAXp1_5pc] = kuipertestgpd(gpd_sample_data_DAXp1_5pc,gpdfit_DAXp1_5pc);
[hKgpd_DAXp2_5pc,pKgpd_DAXp2_5pc, statKgpd_DAXp2_5pc, cvKgpd_DAXp2_5pc] = kuipertestgpd(gpd_sample_data_DAXp2_5pc,gpdfit_DAXp2_5pc);
[hKgpd_DAXp3_5pc,pKgpd_DAXp3_5pc, statKgpd_DAXp3_5pc, cvKgpd_DAXp3_5pc] = kuipertestgpd(gpd_sample_data_DAXp3_5pc,gpdfit_DAXp3_5pc);
[hKgpd_DAXp4_5pc,pKgpd_DAXp4_5pc, statKgpd_DAXp4_5pc, cvKgpd_DAXp4_5pc] = kuipertestgpd(gpd_sample_data_DAXp4_5pc,gpdfit_DAXp4_5pc);
[hKgpd_FTSEd_5pc,pKgpd_FTSEd_5pc, statKgpd_FTSEd_5pc, cvKgpd_FTSEd_5pc] = kuipertestgpd(gpd_sample_data_FTSEd_5pc,gpdfit_FTSEd_5pc);
[hKgpd_FTSEw_5pc,pKgpd_FTSEw_5pc, statKgpd_FTSEw_5pc, cvKgpd_FTSEw_5pc] = kuipertestgpd(gpd_sample_data_FTSEw_5pc,gpdfit_FTSEw_5pc);
[hKgpd_FTSEm_5pc,pKgpd_FTSEm_5pc, statKgpd_FTSEm_5pc, cvKgpd_FTSEm_5pc] = kuipertestgpd(gpd_sample_data_FTSEm_5pc,gpdfit_FTSEm_5pc);
[hKgpd_FTSEp1_5pc,pKgpd_FTSEp1_5pc, statKgpd_FTSEp1_5pc, cvKgpd_FTSEp1_5pc] = kuipertestgpd(gpd_sample_data_FTSEp1_5pc,gpdfit_FTSEp1_5pc);
[hKgpd_FTSEp2_5pc,pKgpd_FTSEp2_5pc, statKgpd_FTSEp2_5pc, cvKgpd_FTSEp2_5pc] = kuipertestgpd(gpd_sample_data_FTSEp2_5pc,gpdfit_FTSEp2_5pc);
[hKgpd_FTSEp3_5pc,pKgpd_FTSEp3_5pc, statKgpd_FTSEp3_5pc, cvKgpd_FTSEp3_5pc] = kuipertestgpd(gpd_sample_data_FTSEp3_5pc,gpdfit_FTSEp3_5pc);
[hKgpd_FTSEp4_5pc,pKgpd_FTSEp4_5pc, statKgpd_FTSEp4_5pc, cvKgpd_FTSEp4_5pc] = kuipertestgpd(gpd_sample_data_FTSEp4_5pc,gpdfit_FTSEp4_5pc);
[hKgpd_NIKKEId_5pc,pKgpd_NIKKEId_5pc, statKgpd_NIKKEId_5pc, cvKgpd_NIKKEId_5pc] = kuipertestgpd(gpd_sample_data_NIKKEId_5pc,gpdfit_NIKKEId_5pc);
[hKgpd_NIKKEIw_5pc,pKgpd_NIKKEIw_5pc, statKgpd_NIKKEIw_5pc, cvKgpd_NIKKEIw_5pc] = kuipertestgpd(gpd_sample_data_NIKKEIw_5pc,gpdfit_NIKKEIw_5pc);
[hKgpd_NIKKEIm_5pc,pKgpd_NIKKEIm_5pc, statKgpd_NIKKEIm_5pc, cvKgpd_NIKKEIm_5pc] = kuipertestgpd(gpd_sample_data_NIKKEIm_5pc,gpdfit_NIKKEIm_5pc);
[hKgpd_NIKKEIp1_5pc,pKgpd_NIKKEIp1_5pc, statKgpd_NIKKEIp1_5pc, cvKgpd_NIKKEIp1_5pc] = kuipertestgpd(gpd_sample_data_NIKKEIp1_5pc,gpdfit_NIKKEIp1_5pc);
[hKgpd_NIKKEIp2_5pc,pKgpd_NIKKEIp2_5pc, statKgpd_NIKKEIp2_5pc, cvKgpd_NIKKEIp2_5pc] = kuipertestgpd(gpd_sample_data_NIKKEIp2_5pc,gpdfit_NIKKEIp2_5pc);
[hKgpd_NIKKEIp3_5pc,pKgpd_NIKKEIp3_5pc, statKgpd_NIKKEIp3_5pc, cvKgpd_NIKKEIp3_5pc] = kuipertestgpd(gpd_sample_data_NIKKEIp3_5pc,gpdfit_NIKKEIp3_5pc);
[hKgpd_NIKKEIp4_5pc,pKgpd_NIKKEIp4_5pc, statKgpd_NIKKEIp4_5pc, cvKgpd_NIKKEIp4_5pc] = kuipertestgpd(gpd_sample_data_NIKKEIp4_5pc,gpdfit_NIKKEIp4_5pc);
[hKgpd_SPd_5pc,pKgpd_SPd_5pc, statKgpd_SPd_5pc, cvKgpd_SPd_5pc] = kuipertestgpd(gpd_sample_data_SPd_5pc,gpdfit_SPd_5pc);
[hKgpd_SPw_5pc,pKgpd_SPw_5pc, statKgpd_SPw_5pc, cvKgpd_SPw_5pc] = kuipertestgpd(gpd_sample_data_SPw_5pc,gpdfit_SPw_5pc);
[hKgpd_SPm_5pc,pKgpd_SPm_5pc, statKgpd_SPm_5pc, cvKgpd_SPm_5pc] = kuipertestgpd(gpd_sample_data_SPm_5pc,gpdfit_SPm_5pc);
[hKgpd_SPp1_5pc,pKgpd_SPp1_5pc, statKgpd_SPp1_5pc, cvKgpd_SPp1_5pc] = kuipertestgpd(gpd_sample_data_SPp1_5pc,gpdfit_SPp1_5pc);
[hKgpd_SPp2_5pc,pKgpd_SPp2_5pc, statKgpd_SPp2_5pc, cvKgpd_SPp2_5pc] = kuipertestgpd(gpd_sample_data_SPp2_5pc,gpdfit_SPp2_5pc);
[hKgpd_SPp3_5pc,pKgpd_SPp3_5pc, statKgpd_SPp3_5pc, cvKgpd_SPp3_5pc] = kuipertestgpd(gpd_sample_data_SPp3_5pc,gpdfit_SPp3_5pc);
[hKgpd_SPp4_5pc,pKgpd_SPp4_5pc, statKgpd_SPp4_5pc, cvKgpd_SPp4_5pc] = kuipertestgpd(gpd_sample_data_SPp4_5pc,gpdfit_SPp4_5pc);
[hKgpd_PRTFd_5pc,pKgpd_PRTFd_5pc, statKgpd_PRTFd_5pc, cvKgpd_PRTFd_5pc] = kuipertestgpd(gpd_sample_data_PRTFd_5pc,gpdfit_PRTFd_5pc);
[hKgpd_PRTFw_5pc,pKgpd_PRTFw_5pc, statKgpd_PRTFw_5pc, cvKgpd_PRTFw_5pc] = kuipertestgpd(gpd_sample_data_PRTFw_5pc,gpdfit_PRTFw_5pc);
[hKgpd_PRTFm_5pc,pKgpd_PRTFm_5pc, statKgpd_PRTFm_5pc, cvKgpd_PRTFm_5pc] = kuipertestgpd(gpd_sample_data_PRTFm_5pc,gpdfit_PRTFm_5pc);
[hKgpd_PRTFp1_5pc,pKgpd_PRTFp1_5pc, statKgpd_PRTFp1_5pc, cvKgpd_PRTFp1_5pc] = kuipertestgpd(gpd_sample_data_PRTFp1_5pc,gpdfit_PRTFp1_5pc);
[hKgpd_PRTFp2_5pc,pKgpd_PRTFp2_5pc, statKgpd_PRTFp2_5pc, cvKgpd_PRTFp2_5pc] = kuipertestgpd(gpd_sample_data_PRTFp2_5pc,gpdfit_PRTFp2_5pc);
[hKgpd_PRTFp3_5pc,pKgpd_PRTFp3_5pc, statKgpd_PRTFp3_5pc, cvKgpd_PRTFp3_5pc] = kuipertestgpd(gpd_sample_data_PRTFp3_5pc,gpdfit_PRTFp3_5pc);
[hKgpd_PRTFp4_5pc,pKgpd_PRTFp4_5pc, statKgpd_PRTFp4_5pc, cvKgpd_PRTFp4_5pc] = kuipertestgpd(gpd_sample_data_PRTFp4_5pc,gpdfit_PRTFp4_5pc);

%20pc
[hKgpd_DAXd_20pc,pKgpd_DAXd_20pc, statKgpd_DAXd_20pc, cvKgpd_DAXd_20pc] = kuipertestgpd(gpd_sample_data_DAXd_20pc,gpdfit_DAXd_20pc);
[hKgpd_DAXw_20pc,pKgpd_DAXw_20pc, statKgpd_DAXw_20pc, cvKgpd_DAXw_20pc] = kuipertestgpd(gpd_sample_data_DAXw_20pc,gpdfit_DAXw_20pc);
[hKgpd_DAXm_20pc,pKgpd_DAXm_20pc, statKgpd_DAXm_20pc, cvKgpd_DAXm_20pc] = kuipertestgpd(gpd_sample_data_DAXm_20pc,gpdfit_DAXm_20pc);
[hKgpd_DAXp1_20pc,pKgpd_DAXp1_20pc, statKgpd_DAXp1_20pc, cvKgpd_DAXp1_20pc] = kuipertestgpd(gpd_sample_data_DAXp1_20pc,gpdfit_DAXp1_20pc);
[hKgpd_DAXp2_20pc,pKgpd_DAXp2_20pc, statKgpd_DAXp2_20pc, cvKgpd_DAXp2_20pc] = kuipertestgpd(gpd_sample_data_DAXp2_20pc,gpdfit_DAXp2_20pc);
[hKgpd_DAXp3_20pc,pKgpd_DAXp3_20pc, statKgpd_DAXp3_20pc, cvKgpd_DAXp3_20pc] = kuipertestgpd(gpd_sample_data_DAXp3_20pc,gpdfit_DAXp3_20pc);
[hKgpd_DAXp4_20pc,pKgpd_DAXp4_20pc, statKgpd_DAXp4_20pc, cvKgpd_DAXp4_20pc] = kuipertestgpd(gpd_sample_data_DAXp4_20pc,gpdfit_DAXp4_20pc);
[hKgpd_FTSEd_20pc,pKgpd_FTSEd_20pc, statKgpd_FTSEd_20pc, cvKgpd_FTSEd_20pc] = kuipertestgpd(gpd_sample_data_FTSEd_20pc,gpdfit_FTSEd_20pc);
[hKgpd_FTSEw_20pc,pKgpd_FTSEw_20pc, statKgpd_FTSEw_20pc, cvKgpd_FTSEw_20pc] = kuipertestgpd(gpd_sample_data_FTSEw_20pc,gpdfit_FTSEw_20pc);
[hKgpd_FTSEm_20pc,pKgpd_FTSEm_20pc, statKgpd_FTSEm_20pc, cvKgpd_FTSEm_20pc] = kuipertestgpd(gpd_sample_data_FTSEm_20pc,gpdfit_FTSEm_20pc);
[hKgpd_FTSEp1_20pc,pKgpd_FTSEp1_20pc, statKgpd_FTSEp1_20pc, cvKgpd_FTSEp1_20pc] = kuipertestgpd(gpd_sample_data_FTSEp1_20pc,gpdfit_FTSEp1_20pc);
[hKgpd_FTSEp2_20pc,pKgpd_FTSEp2_20pc, statKgpd_FTSEp2_20pc, cvKgpd_FTSEp2_20pc] = kuipertestgpd(gpd_sample_data_FTSEp2_20pc,gpdfit_FTSEp2_20pc);
[hKgpd_FTSEp3_20pc,pKgpd_FTSEp3_20pc, statKgpd_FTSEp3_20pc, cvKgpd_FTSEp3_20pc] = kuipertestgpd(gpd_sample_data_FTSEp3_20pc,gpdfit_FTSEp3_20pc);
[hKgpd_FTSEp4_20pc,pKgpd_FTSEp4_20pc, statKgpd_FTSEp4_20pc, cvKgpd_FTSEp4_20pc] = kuipertestgpd(gpd_sample_data_FTSEp4_20pc,gpdfit_FTSEp4_20pc);
[hKgpd_NIKKEId_20pc,pKgpd_NIKKEId_20pc, statKgpd_NIKKEId_20pc, cvKgpd_NIKKEId_20pc] = kuipertestgpd(gpd_sample_data_NIKKEId_20pc,gpdfit_NIKKEId_20pc);
[hKgpd_NIKKEIw_20pc,pKgpd_NIKKEIw_20pc, statKgpd_NIKKEIw_20pc, cvKgpd_NIKKEIw_20pc] = kuipertestgpd(gpd_sample_data_NIKKEIw_20pc,gpdfit_NIKKEIw_20pc);
[hKgpd_NIKKEIm_20pc,pKgpd_NIKKEIm_20pc, statKgpd_NIKKEIm_20pc, cvKgpd_NIKKEIm_20pc] = kuipertestgpd(gpd_sample_data_NIKKEIm_20pc,gpdfit_NIKKEIm_20pc);
[hKgpd_NIKKEIp1_20pc,pKgpd_NIKKEIp1_20pc, statKgpd_NIKKEIp1_20pc, cvKgpd_NIKKEIp1_20pc] = kuipertestgpd(gpd_sample_data_NIKKEIp1_20pc,gpdfit_NIKKEIp1_20pc);
[hKgpd_NIKKEIp2_20pc,pKgpd_NIKKEIp2_20pc, statKgpd_NIKKEIp2_20pc, cvKgpd_NIKKEIp2_20pc] = kuipertestgpd(gpd_sample_data_NIKKEIp2_20pc,gpdfit_NIKKEIp2_20pc);
[hKgpd_NIKKEIp3_20pc,pKgpd_NIKKEIp3_20pc, statKgpd_NIKKEIp3_20pc, cvKgpd_NIKKEIp3_20pc] = kuipertestgpd(gpd_sample_data_NIKKEIp3_20pc,gpdfit_NIKKEIp3_20pc);
[hKgpd_NIKKEIp4_20pc,pKgpd_NIKKEIp4_20pc, statKgpd_NIKKEIp4_20pc, cvKgpd_NIKKEIp4_20pc] = kuipertestgpd(gpd_sample_data_NIKKEIp4_20pc,gpdfit_NIKKEIp4_20pc);
[hKgpd_SPd_20pc,pKgpd_SPd_20pc, statKgpd_SPd_20pc, cvKgpd_SPd_20pc] = kuipertestgpd(gpd_sample_data_SPd_20pc,gpdfit_SPd_20pc);
[hKgpd_SPw_20pc,pKgpd_SPw_20pc, statKgpd_SPw_20pc, cvKgpd_SPw_20pc] = kuipertestgpd(gpd_sample_data_SPw_20pc,gpdfit_SPw_20pc);
[hKgpd_SPm_20pc,pKgpd_SPm_20pc, statKgpd_SPm_20pc, cvKgpd_SPm_20pc] = kuipertestgpd(gpd_sample_data_SPm_20pc,gpdfit_SPm_20pc);
[hKgpd_SPp1_20pc,pKgpd_SPp1_20pc, statKgpd_SPp1_20pc, cvKgpd_SPp1_20pc] = kuipertestgpd(gpd_sample_data_SPp1_20pc,gpdfit_SPp1_20pc);
[hKgpd_SPp2_20pc,pKgpd_SPp2_20pc, statKgpd_SPp2_20pc, cvKgpd_SPp2_20pc] = kuipertestgpd(gpd_sample_data_SPp2_20pc,gpdfit_SPp2_20pc);
[hKgpd_SPp3_20pc,pKgpd_SPp3_20pc, statKgpd_SPp3_20pc, cvKgpd_SPp3_20pc] = kuipertestgpd(gpd_sample_data_SPp3_20pc,gpdfit_SPp3_20pc);
[hKgpd_SPp4_20pc,pKgpd_SPp4_20pc, statKgpd_SPp4_20pc, cvKgpd_SPp4_20pc] = kuipertestgpd(gpd_sample_data_SPp4_20pc,gpdfit_SPp4_20pc);
[hKgpd_PRTFd_20pc,pKgpd_PRTFd_20pc, statKgpd_PRTFd_20pc, cvKgpd_PRTFd_20pc] = kuipertestgpd(gpd_sample_data_PRTFd_20pc,gpdfit_PRTFd_20pc);
[hKgpd_PRTFw_20pc,pKgpd_PRTFw_20pc, statKgpd_PRTFw_20pc, cvKgpd_PRTFw_20pc] = kuipertestgpd(gpd_sample_data_PRTFw_20pc,gpdfit_PRTFw_20pc);
[hKgpd_PRTFm_20pc,pKgpd_PRTFm_20pc, statKgpd_PRTFm_20pc, cvKgpd_PRTFm_20pc] = kuipertestgpd(gpd_sample_data_PRTFm_20pc,gpdfit_PRTFm_20pc);
[hKgpd_PRTFp1_20pc,pKgpd_PRTFp1_20pc, statKgpd_PRTFp1_20pc, cvKgpd_PRTFp1_20pc] = kuipertestgpd(gpd_sample_data_PRTFp1_20pc,gpdfit_PRTFp1_20pc);
[hKgpd_PRTFp2_20pc,pKgpd_PRTFp2_20pc, statKgpd_PRTFp2_20pc, cvKgpd_PRTFp2_20pc] = kuipertestgpd(gpd_sample_data_PRTFp2_20pc,gpdfit_PRTFp2_20pc);
[hKgpd_PRTFp3_20pc,pKgpd_PRTFp3_20pc, statKgpd_PRTFp3_20pc, cvKgpd_PRTFp3_20pc] = kuipertestgpd(gpd_sample_data_PRTFp3_20pc,gpdfit_PRTFp3_20pc);
[hKgpd_PRTFp4_20pc,pKgpd_PRTFp4_20pc, statKgpd_PRTFp4_20pc, cvKgpd_PRTFp4_20pc] = kuipertestgpd(gpd_sample_data_PRTFp4_20pc,gpdfit_PRTFp4_20pc);

%goodness-of-fit tables

%DAX 
rownames = {'SGT';'KS test sgt';'KS CV sgt';'AD test sgt';'AD CV sgt';'Kuiper test sgt';...
    'Kuiper CV sgt';'GPD 5%';'KS test gpd5pc';'KS CV gpd5pc';'AD test gpd5pc';'AD CV gpd5pc';...
    'Kuiper test gpd5pc';'Kuiper CV gpd5pc';'GPD 20%'; 'KS test gpd20pc';'KS CV gpd20pc';'AD test gpd20pc';...
    'AD CV gpd20pc';'Kuiper test gpd20pc';'Kuiper CV gpd20pc';'Normal';'KS test normal';'KS CV normal';...
    'AD test normal';'AD CV normal';'Kuiper test normal';'Kuiper CV normal'};
Daily = [NaN;statKSsgt_DAXd;cvKSsgt_DAXd;statADsgt_DAXd;cvADsgt_DAXd;...
    statKsgt_DAXd;cvKsgt_DAXd;NaN;statKSgpd_DAXd_5pc;cvKSgpd_DAXd_5pc;...
    statADgpd_DAXd_5pc;cvADgpd_DAXd_5pc;statKgpd_DAXd_5pc;cvKgpd_DAXd_5pc;...
    NaN;statKSgpd_DAXd_20pc;cvKSgpd_DAXd_20pc;statADgpd_DAXd_20pc;...
    cvADgpd_DAXd_20pc;statKgpd_DAXd_20pc;cvKgpd_DAXd_20pc;NaN;statKSnormal_DAXd;...
    cvKSnormal_DAXd;statADnormal_DAXd;cvADnormal_DAXd;statKnormal_DAXd;cvKnormal_DAXd];
Weekly = [NaN;statKSsgt_DAXw;cvKSsgt_DAXw;statADsgt_DAXw;cvADsgt_DAXw;...
    statKsgt_DAXw;cvKsgt_DAXw;NaN;statKSgpd_DAXw_5pc;cvKSgpd_DAXw_5pc;...
    statADgpd_DAXw_5pc;cvADgpd_DAXw_5pc;statKgpd_DAXw_5pc;cvKgpd_DAXw_5pc;...
    NaN;statKSgpd_DAXw_20pc;cvKSgpd_DAXw_20pc;statADgpd_DAXw_20pc;...
    cvADgpd_DAXw_20pc;statKgpd_DAXw_20pc;cvKgpd_DAXm_20pc;NaN;statKSnormal_DAXw;...
    cvKSnormal_DAXw;statADnormal_DAXw;cvADnormal_DAXw;statKnormal_DAXw;cvKnormal_DAXw];
Monthly = [NaN;statKSsgt_DAXm;cvKSsgt_DAXm;statADsgt_DAXm;cvADsgt_DAXm;...
    statKsgt_DAXm;cvKsgt_DAXm;NaN;statKSgpd_DAXm_5pc;cvKSgpd_DAXm_5pc;...
    statADgpd_DAXm_5pc;cvADgpd_DAXm_5pc;statKgpd_DAXm_5pc;cvKgpd_DAXm_5pc;...
    NaN;statKSgpd_DAXm_20pc;cvKSgpd_DAXm_20pc;statADgpd_DAXm_20pc;...
    cvADgpd_DAXm_20pc;statKgpd_DAXm_20pc;cvKgpd_DAXm_20pc;NaN;statKSnormal_DAXm;...
    cvKSnormal_DAXm;statADnormal_DAXm;cvADnormal_DAXm;statKnormal_DAXm;cvKnormal_DAXm];
P1 = [NaN;statKSsgt_DAXp1;cvKSsgt_DAXp1;statADsgt_DAXp1;cvADsgt_DAXp1;...
    statKsgt_DAXp1;cvKsgt_DAXp1;NaN;statKSgpd_DAXp1_5pc;cvKSgpd_DAXp1_5pc;...
    statADgpd_DAXp1_5pc;cvADgpd_DAXp1_5pc;statKgpd_DAXp1_5pc;cvKgpd_DAXp1_5pc;...
    NaN;statKSgpd_DAXp1_20pc;cvKSgpd_DAXp1_20pc;statADgpd_DAXp1_20pc;...
    cvADgpd_DAXp1_20pc;statKgpd_DAXp1_20pc;cvKgpd_DAXp1_20pc;NaN;statKSnormal_DAXp1;...
    cvKSnormal_DAXp1;statADnormal_DAXp1;cvADnormal_DAXp1;statKnormal_DAXp1;cvKnormal_DAXp1];
P2 = [NaN;statKSsgt_DAXp2;cvKSsgt_DAXp2;statADsgt_DAXp2;cvADsgt_DAXp2;...
    statKsgt_DAXp2;cvKsgt_DAXp1;NaN;statKSgpd_DAXp2_5pc;cvKSgpd_DAXp2_5pc;...
    statADgpd_DAXp2_5pc;cvADgpd_DAXp2_5pc;statKgpd_DAXp2_5pc;cvKgpd_DAXp2_5pc;...
    NaN;statKSgpd_DAXp2_20pc;cvKSgpd_DAXp2_20pc;statADgpd_DAXp2_20pc;...
    cvADgpd_DAXp2_20pc;statKgpd_DAXp2_20pc;cvKgpd_DAXp2_20pc;NaN;statKSnormal_DAXp2;...
    cvKSnormal_DAXp2;statADnormal_DAXp2;cvADnormal_DAXp2;statKnormal_DAXp2;cvKnormal_DAXp2];
P3 = [NaN;statKSsgt_DAXp3;cvKSsgt_DAXp3;statADsgt_DAXp3;cvADsgt_DAXp3;...
    statKsgt_DAXp3;cvKsgt_DAXp3;NaN;statKSgpd_DAXp3_5pc;cvKSgpd_DAXp3_5pc;...
    statADgpd_DAXp3_5pc;cvADgpd_DAXp3_5pc;statKgpd_DAXp3_5pc;cvKgpd_DAXp3_5pc;...
    NaN;statKSgpd_DAXp3_20pc;cvKSgpd_DAXp3_20pc;statADgpd_DAXp3_20pc;...
    cvADgpd_DAXp3_20pc;statKgpd_DAXp3_20pc;cvKgpd_DAXp3_20pc;NaN;statKSnormal_DAXp3;...
    cvKSnormal_DAXp3;statADnormal_DAXp3;cvADnormal_DAXp3;statKnormal_DAXp3;cvKnormal_DAXp3];
P4 = [NaN;statKSsgt_DAXp4;cvKSsgt_DAXp4;statADsgt_DAXp4;cvADsgt_DAXp4;...
    statKsgt_DAXp4;cvKsgt_DAXp4;NaN;statKSgpd_DAXp4_5pc;cvKSgpd_DAXp4_5pc;...
    statADgpd_DAXp4_5pc;cvADgpd_DAXp4_5pc;statKgpd_DAXp4_5pc;cvKgpd_DAXp4_5pc;...
    NaN;statKSgpd_DAXp4_20pc;cvKSgpd_DAXp4_20pc;statADgpd_DAXp4_20pc;...
    cvADgpd_DAXp4_20pc;statKgpd_DAXp4_20pc;cvKgpd_DAXp4_20pc;NaN;statKSnormal_DAXp4;...
    cvKSnormal_DAXp4;statADnormal_DAXp4;cvADnormal_DAXp4;statKnormal_DAXp4;cvKnormal_DAXp4];
DAXgoftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(DAXgoftable,'DAXgoodnessoffitTABLE.xlsx');

%FTSE 
rownames = {'SGT';'KS test sgt';'KS CV sgt';'AD test sgt';'AD CV sgt';'Kuiper test sgt';...
    'Kuiper CV sgt';'GPD 5%';'KS test gpd5pc';'KS CV gpd5pc';'AD test gpd5pc';'AD CV gpd5pc';...
    'Kuiper test gpd5pc';'Kuiper CV gpd5pc';'GPD 20%'; 'KS test gpd20pc';'KS CV gpd20pc';'AD test gpd20pc';...
    'AD CV gpd20pc';'Kuiper test gpd20pc';'Kuiper CV gpd20pc';'Normal';'KS test normal';'KS CV normal';...
    'AD test normal';'AD CV normal';'Kuiper test normal';'Kuiper CV normal'};
Daily = [NaN;statKSsgt_FTSEd;cvKSsgt_FTSEd;statADsgt_FTSEd;cvADsgt_FTSEd;...
    statKsgt_FTSEd;cvKsgt_FTSEd;NaN;statKSgpd_FTSEd_5pc;cvKSgpd_FTSEd_5pc;...
    statADgpd_FTSEd_5pc;cvADgpd_FTSEd_5pc;statKgpd_FTSEd_5pc;cvKgpd_FTSEd_5pc;...
    NaN;statKSgpd_FTSEd_20pc;cvKSgpd_FTSEd_20pc;statADgpd_FTSEd_20pc;...
    cvADgpd_FTSEd_20pc;statKgpd_FTSEd_20pc;cvKgpd_FTSEd_20pc;NaN;statKSnormal_FTSEd;...
    cvKSnormal_FTSEd;statADnormal_FTSEd;cvADnormal_FTSEd;statKnormal_FTSEd;cvKnormal_FTSEd];
Weekly = [NaN;statKSsgt_FTSEw;cvKSsgt_FTSEw;statADsgt_FTSEw;cvADsgt_FTSEw;...
    statKsgt_FTSEw;cvKsgt_FTSEw;NaN;statKSgpd_FTSEw_5pc;cvKSgpd_FTSEw_5pc;...
    statADgpd_FTSEw_5pc;cvADgpd_FTSEw_5pc;statKgpd_FTSEw_5pc;cvKgpd_FTSEw_5pc;...
    NaN;statKSgpd_FTSEw_20pc;cvKSgpd_FTSEw_20pc;statADgpd_FTSEw_20pc;...
    cvADgpd_FTSEw_20pc;statKgpd_FTSEw_20pc;cvKgpd_FTSEm_20pc;NaN;statKSnormal_FTSEw;...
    cvKSnormal_FTSEw;statADnormal_FTSEw;cvADnormal_FTSEw;statKnormal_FTSEw;cvKnormal_FTSEw];
Monthly = [NaN;statKSsgt_FTSEm;cvKSsgt_FTSEm;statADsgt_FTSEm;cvADsgt_FTSEm;...
    statKsgt_FTSEm;cvKsgt_FTSEm;NaN;statKSgpd_FTSEm_5pc;cvKSgpd_FTSEm_5pc;...
    statADgpd_FTSEm_5pc;cvADgpd_FTSEm_5pc;statKgpd_FTSEm_5pc;cvKgpd_FTSEm_5pc;...
    NaN;statKSgpd_FTSEm_20pc;cvKSgpd_FTSEm_20pc;statADgpd_FTSEm_20pc;...
    cvADgpd_FTSEm_20pc;statKgpd_FTSEm_20pc;cvKgpd_FTSEm_20pc;NaN;statKSnormal_FTSEm;...
    cvKSnormal_FTSEm;statADnormal_FTSEm;cvADnormal_FTSEm;statKnormal_FTSEm;cvKnormal_FTSEm];
P1 = [NaN;statKSsgt_FTSEp1;cvKSsgt_FTSEp1;statADsgt_FTSEp1;cvADsgt_FTSEp1;...
    statKsgt_FTSEp1;cvKsgt_FTSEp1;NaN;statKSgpd_FTSEp1_5pc;cvKSgpd_FTSEp1_5pc;...
    statADgpd_FTSEp1_5pc;cvADgpd_FTSEp1_5pc;statKgpd_FTSEp1_5pc;cvKgpd_FTSEp1_5pc;...
    NaN;statKSgpd_FTSEp1_20pc;cvKSgpd_FTSEp1_20pc;statADgpd_FTSEp1_20pc;...
    cvADgpd_FTSEp1_20pc;statKgpd_FTSEp1_20pc;cvKgpd_FTSEp1_20pc;NaN;statKSnormal_FTSEp1;...
    cvKSnormal_FTSEp1;statADnormal_FTSEp1;cvADnormal_FTSEp1;statKnormal_FTSEp1;cvKnormal_FTSEp1];
P2 = [NaN;statKSsgt_FTSEp2;cvKSsgt_FTSEp2;statADsgt_FTSEp2;cvADsgt_FTSEp2;...
    statKsgt_FTSEp2;cvKsgt_FTSEp1;NaN;statKSgpd_FTSEp2_5pc;cvKSgpd_FTSEp2_5pc;...
    statADgpd_FTSEp2_5pc;cvADgpd_FTSEp2_5pc;statKgpd_FTSEp2_5pc;cvKgpd_FTSEp2_5pc;...
    NaN;statKSgpd_FTSEp2_20pc;cvKSgpd_FTSEp2_20pc;statADgpd_FTSEp2_20pc;...
    cvADgpd_FTSEp2_20pc;statKgpd_FTSEp2_20pc;cvKgpd_FTSEp2_20pc;NaN;statKSnormal_FTSEp2;...
    cvKSnormal_FTSEp2;statADnormal_FTSEp2;cvADnormal_FTSEp2;statKnormal_FTSEp2;cvKnormal_FTSEp2];
P3 = [NaN;statKSsgt_FTSEp3;cvKSsgt_FTSEp3;statADsgt_FTSEp3;cvADsgt_FTSEp3;...
    statKsgt_FTSEp3;cvKsgt_FTSEp3;NaN;statKSgpd_FTSEp3_5pc;cvKSgpd_FTSEp3_5pc;...
    statADgpd_FTSEp3_5pc;cvADgpd_FTSEp3_5pc;statKgpd_FTSEp3_5pc;cvKgpd_FTSEp3_5pc;...
    NaN;statKSgpd_FTSEp3_20pc;cvKSgpd_FTSEp3_20pc;statADgpd_FTSEp3_20pc;...
    cvADgpd_FTSEp3_20pc;statKgpd_FTSEp3_20pc;cvKgpd_FTSEp3_20pc;NaN;statKSnormal_FTSEp3;...
    cvKSnormal_FTSEp3;statADnormal_FTSEp3;cvADnormal_FTSEp3;statKnormal_FTSEp3;cvKnormal_FTSEp3];
P4 = [NaN;statKSsgt_FTSEp4;cvKSsgt_FTSEp4;statADsgt_FTSEp4;cvADsgt_FTSEp4;...
    statKsgt_FTSEp4;cvKsgt_FTSEp4;NaN;statKSgpd_FTSEp4_5pc;cvKSgpd_FTSEp4_5pc;...
    statADgpd_FTSEp4_5pc;cvADgpd_FTSEp4_5pc;statKgpd_FTSEp4_5pc;cvKgpd_FTSEp4_5pc;...
    NaN;statKSgpd_FTSEp4_20pc;cvKSgpd_FTSEp4_20pc;statADgpd_FTSEp4_20pc;...
    cvADgpd_FTSEp4_20pc;statKgpd_FTSEp4_20pc;cvKgpd_FTSEp4_20pc;NaN;statKSnormal_FTSEp4;...
    cvKSnormal_FTSEp4;statADnormal_FTSEp4;cvADnormal_FTSEp4;statKnormal_FTSEp4;cvKnormal_FTSEp4];
FTSEgoftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(FTSEgoftable,'FTSEgoodnessoffitTABLE.xlsx');

%SP 
rownames = {'SGT';'KS test sgt';'KS CV sgt';'AD test sgt';'AD CV sgt';'Kuiper test sgt';...
    'Kuiper CV sgt';'GPD 5%';'KS test gpd5pc';'KS CV gpd5pc';'AD test gpd5pc';'AD CV gpd5pc';...
    'Kuiper test gpd5pc';'Kuiper CV gpd5pc';'GPD 20%'; 'KS test gpd20pc';'KS CV gpd20pc';'AD test gpd20pc';...
    'AD CV gpd20pc';'Kuiper test gpd20pc';'Kuiper CV gpd20pc';'Normal';'KS test normal';'KS CV normal';...
    'AD test normal';'AD CV normal';'Kuiper test normal';'Kuiper CV normal'};
Daily = [NaN;statKSsgt_SPd;cvKSsgt_SPd;statADsgt_SPd;cvADsgt_SPd;...
    statKsgt_SPd;cvKsgt_SPd;NaN;statKSgpd_SPd_5pc;cvKSgpd_SPd_5pc;...
    statADgpd_SPd_5pc;cvADgpd_SPd_5pc;statKgpd_SPd_5pc;cvKgpd_SPd_5pc;...
    NaN;statKSgpd_SPd_20pc;cvKSgpd_SPd_20pc;statADgpd_SPd_20pc;...
    cvADgpd_SPd_20pc;statKgpd_SPd_20pc;cvKgpd_SPd_20pc;NaN;statKSnormal_SPd;...
    cvKSnormal_SPd;statADnormal_SPd;cvADnormal_SPd;statKnormal_SPd;cvKnormal_SPd];
Weekly = [NaN;statKSsgt_SPw;cvKSsgt_SPw;statADsgt_SPw;cvADsgt_SPw;...
    statKsgt_SPw;cvKsgt_SPw;NaN;statKSgpd_SPw_5pc;cvKSgpd_SPw_5pc;...
    statADgpd_SPw_5pc;cvADgpd_SPw_5pc;statKgpd_SPw_5pc;cvKgpd_SPw_5pc;...
    NaN;statKSgpd_SPw_20pc;cvKSgpd_SPw_20pc;statADgpd_SPw_20pc;...
    cvADgpd_SPw_20pc;statKgpd_SPw_20pc;cvKgpd_SPm_20pc;NaN;statKSnormal_SPw;...
    cvKSnormal_SPw;statADnormal_SPw;cvADnormal_SPw;statKnormal_SPw;cvKnormal_SPw];
Monthly = [NaN;statKSsgt_SPm;cvKSsgt_SPm;statADsgt_SPm;cvADsgt_SPm;...
    statKsgt_SPm;cvKsgt_SPm;NaN;statKSgpd_SPm_5pc;cvKSgpd_SPm_5pc;...
    statADgpd_SPm_5pc;cvADgpd_SPm_5pc;statKgpd_SPm_5pc;cvKgpd_SPm_5pc;...
    NaN;statKSgpd_SPm_20pc;cvKSgpd_SPm_20pc;statADgpd_SPm_20pc;...
    cvADgpd_SPm_20pc;statKgpd_SPm_20pc;cvKgpd_SPm_20pc;NaN;statKSnormal_SPm;...
    cvKSnormal_SPm;statADnormal_SPm;cvADnormal_SPm;statKnormal_SPm;cvKnormal_SPm];
P1 = [NaN;statKSsgt_SPp1;cvKSsgt_SPp1;statADsgt_SPp1;cvADsgt_SPp1;...
    statKsgt_SPp1;cvKsgt_SPp1;NaN;statKSgpd_SPp1_5pc;cvKSgpd_SPp1_5pc;...
    statADgpd_SPp1_5pc;cvADgpd_SPp1_5pc;statKgpd_SPp1_5pc;cvKgpd_SPp1_5pc;...
    NaN;statKSgpd_SPp1_20pc;cvKSgpd_SPp1_20pc;statADgpd_SPp1_20pc;...
    cvADgpd_SPp1_20pc;statKgpd_SPp1_20pc;cvKgpd_SPp1_20pc;NaN;statKSnormal_SPp1;...
    cvKSnormal_SPp1;statADnormal_SPp1;cvADnormal_SPp1;statKnormal_SPp1;cvKnormal_SPp1];
P2 = [NaN;statKSsgt_SPp2;cvKSsgt_SPp2;statADsgt_SPp2;cvADsgt_SPp2;...
    statKsgt_SPp2;cvKsgt_SPp1;NaN;statKSgpd_SPp2_5pc;cvKSgpd_SPp2_5pc;...
    statADgpd_SPp2_5pc;cvADgpd_SPp2_5pc;statKgpd_SPp2_5pc;cvKgpd_SPp2_5pc;...
    NaN;statKSgpd_SPp2_20pc;cvKSgpd_SPp2_20pc;statADgpd_SPp2_20pc;...
    cvADgpd_SPp2_20pc;statKgpd_SPp2_20pc;cvKgpd_SPp2_20pc;NaN;statKSnormal_SPp2;...
    cvKSnormal_SPp2;statADnormal_SPp2;cvADnormal_SPp2;statKnormal_SPp2;cvKnormal_SPp2];
P3 = [NaN;statKSsgt_SPp3;cvKSsgt_SPp3;statADsgt_SPp3;cvADsgt_SPp3;...
    statKsgt_SPp3;cvKsgt_SPp3;NaN;statKSgpd_SPp3_5pc;cvKSgpd_SPp3_5pc;...
    statADgpd_SPp3_5pc;cvADgpd_SPp3_5pc;statKgpd_SPp3_5pc;cvKgpd_SPp3_5pc;...
    NaN;statKSgpd_SPp3_20pc;cvKSgpd_SPp3_20pc;statADgpd_SPp3_20pc;...
    cvADgpd_SPp3_20pc;statKgpd_SPp3_20pc;cvKgpd_SPp3_20pc;NaN;statKSnormal_SPp3;...
    cvKSnormal_SPp3;statADnormal_SPp3;cvADnormal_SPp3;statKnormal_SPp3;cvKnormal_SPp3];
P4 = [NaN;statKSsgt_SPp4;cvKSsgt_SPp4;statADsgt_SPp4;cvADsgt_SPp4;...
    statKsgt_SPp4;cvKsgt_SPp4;NaN;statKSgpd_SPp4_5pc;cvKSgpd_SPp4_5pc;...
    statADgpd_SPp4_5pc;cvADgpd_SPp4_5pc;statKgpd_SPp4_5pc;cvKgpd_SPp4_5pc;...
    NaN;statKSgpd_SPp4_20pc;cvKSgpd_SPp4_20pc;statADgpd_SPp4_20pc;...
    cvADgpd_SPp4_20pc;statKgpd_SPp4_20pc;cvKgpd_SPp4_20pc;NaN;statKSnormal_SPp4;...
    cvKSnormal_SPp4;statADnormal_SPp4;cvADnormal_SPp4;statKnormal_SPp4;cvKnormal_SPp4];
SPgoftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(SPgoftable,'SPgoodnessoffitTABLE.xlsx');

%NIKKEI 
rownames = {'SGT';'KS test sgt';'KS CV sgt';'AD test sgt';'AD CV sgt';'Kuiper test sgt';...
    'Kuiper CV sgt';'GPD 5%';'KS test gpd5pc';'KS CV gpd5pc';'AD test gpd5pc';'AD CV gpd5pc';...
    'Kuiper test gpd5pc';'Kuiper CV gpd5pc';'GPD 20%'; 'KS test gpd20pc';'KS CV gpd20pc';'AD test gpd20pc';...
    'AD CV gpd20pc';'Kuiper test gpd20pc';'Kuiper CV gpd20pc';'Normal';'KS test normal';'KS CV normal';...
    'AD test normal';'AD CV normal';'Kuiper test normal';'Kuiper CV normal'};
Daily = [NaN;statKSsgt_NIKKEId;cvKSsgt_NIKKEId;statADsgt_NIKKEId;cvADsgt_NIKKEId;...
    statKsgt_NIKKEId;cvKsgt_NIKKEId;NaN;statKSgpd_NIKKEId_5pc;cvKSgpd_NIKKEId_5pc;...
    statADgpd_NIKKEId_5pc;cvADgpd_NIKKEId_5pc;statKgpd_NIKKEId_5pc;cvKgpd_NIKKEId_5pc;...
    NaN;statKSgpd_NIKKEId_20pc;cvKSgpd_NIKKEId_20pc;statADgpd_NIKKEId_20pc;...
    cvADgpd_NIKKEId_20pc;statKgpd_NIKKEId_20pc;cvKgpd_NIKKEId_20pc;NaN;statKSnormal_NIKKEId;...
    cvKSnormal_NIKKEId;statADnormal_NIKKEId;cvADnormal_NIKKEId;statKnormal_NIKKEId;cvKnormal_NIKKEId];
Weekly = [NaN;statKSsgt_NIKKEIw;cvKSsgt_NIKKEIw;statADsgt_NIKKEIw;cvADsgt_NIKKEIw;...
    statKsgt_NIKKEIw;cvKsgt_NIKKEIw;NaN;statKSgpd_NIKKEIw_5pc;cvKSgpd_NIKKEIw_5pc;...
    statADgpd_NIKKEIw_5pc;cvADgpd_NIKKEIw_5pc;statKgpd_NIKKEIw_5pc;cvKgpd_NIKKEIw_5pc;...
    NaN;statKSgpd_NIKKEIw_20pc;cvKSgpd_NIKKEIw_20pc;statADgpd_NIKKEIw_20pc;...
    cvADgpd_NIKKEIw_20pc;statKgpd_NIKKEIw_20pc;cvKgpd_NIKKEIm_20pc;NaN;statKSnormal_NIKKEIw;...
    cvKSnormal_NIKKEIw;statADnormal_NIKKEIw;cvADnormal_NIKKEIw;statKnormal_NIKKEIw;cvKnormal_NIKKEIw];
Monthly = [NaN;statKSsgt_NIKKEIm;cvKSsgt_NIKKEIm;statADsgt_NIKKEIm;cvADsgt_NIKKEIm;...
    statKsgt_NIKKEIm;cvKsgt_NIKKEIm;NaN;statKSgpd_NIKKEIm_5pc;cvKSgpd_NIKKEIm_5pc;...
    statADgpd_NIKKEIm_5pc;cvADgpd_NIKKEIm_5pc;statKgpd_NIKKEIm_5pc;cvKgpd_NIKKEIm_5pc;...
    NaN;statKSgpd_NIKKEIm_20pc;cvKSgpd_NIKKEIm_20pc;statADgpd_NIKKEIm_20pc;...
    cvADgpd_NIKKEIm_20pc;statKgpd_NIKKEIm_20pc;cvKgpd_NIKKEIm_20pc;NaN;statKSnormal_NIKKEIm;...
    cvKSnormal_NIKKEIm;statADnormal_NIKKEIm;cvADnormal_NIKKEIm;statKnormal_NIKKEIm;cvKnormal_NIKKEIm];
P1 = [NaN;statKSsgt_NIKKEIp1;cvKSsgt_NIKKEIp1;statADsgt_NIKKEIp1;cvADsgt_NIKKEIp1;...
    statKsgt_NIKKEIp1;cvKsgt_NIKKEIp1;NaN;statKSgpd_NIKKEIp1_5pc;cvKSgpd_NIKKEIp1_5pc;...
    statADgpd_NIKKEIp1_5pc;cvADgpd_NIKKEIp1_5pc;statKgpd_NIKKEIp1_5pc;cvKgpd_NIKKEIp1_5pc;...
    NaN;statKSgpd_NIKKEIp1_20pc;cvKSgpd_NIKKEIp1_20pc;statADgpd_NIKKEIp1_20pc;...
    cvADgpd_NIKKEIp1_20pc;statKgpd_NIKKEIp1_20pc;cvKgpd_NIKKEIp1_20pc;NaN;statKSnormal_NIKKEIp1;...
    cvKSnormal_NIKKEIp1;statADnormal_NIKKEIp1;cvADnormal_NIKKEIp1;statKnormal_NIKKEIp1;cvKnormal_NIKKEIp1];
P2 = [NaN;statKSsgt_NIKKEIp2;cvKSsgt_NIKKEIp2;statADsgt_NIKKEIp2;cvADsgt_NIKKEIp2;...
    statKsgt_NIKKEIp2;cvKsgt_NIKKEIp1;NaN;statKSgpd_NIKKEIp2_5pc;cvKSgpd_NIKKEIp2_5pc;...
    statADgpd_NIKKEIp2_5pc;cvADgpd_NIKKEIp2_5pc;statKgpd_NIKKEIp2_5pc;cvKgpd_NIKKEIp2_5pc;...
    NaN;statKSgpd_NIKKEIp2_20pc;cvKSgpd_NIKKEIp2_20pc;statADgpd_NIKKEIp2_20pc;...
    cvADgpd_NIKKEIp2_20pc;statKgpd_NIKKEIp2_20pc;cvKgpd_NIKKEIp2_20pc;NaN;statKSnormal_NIKKEIp2;...
    cvKSnormal_NIKKEIp2;statADnormal_NIKKEIp2;cvADnormal_NIKKEIp2;statKnormal_NIKKEIp2;cvKnormal_NIKKEIp2];
P3 = [NaN;statKSsgt_NIKKEIp3;cvKSsgt_NIKKEIp3;statADsgt_NIKKEIp3;cvADsgt_NIKKEIp3;...
    statKsgt_NIKKEIp3;cvKsgt_NIKKEIp3;NaN;statKSgpd_NIKKEIp3_5pc;cvKSgpd_NIKKEIp3_5pc;...
    statADgpd_NIKKEIp3_5pc;cvADgpd_NIKKEIp3_5pc;statKgpd_NIKKEIp3_5pc;cvKgpd_NIKKEIp3_5pc;...
    NaN;statKSgpd_NIKKEIp3_20pc;cvKSgpd_NIKKEIp3_20pc;statADgpd_NIKKEIp3_20pc;...
    cvADgpd_NIKKEIp3_20pc;statKgpd_NIKKEIp3_20pc;cvKgpd_NIKKEIp3_20pc;NaN;statKSnormal_NIKKEIp3;...
    cvKSnormal_NIKKEIp3;statADnormal_NIKKEIp3;cvADnormal_NIKKEIp3;statKnormal_NIKKEIp3;cvKnormal_NIKKEIp3];
P4 = [NaN;statKSsgt_NIKKEIp4;cvKSsgt_NIKKEIp4;statADsgt_NIKKEIp4;cvADsgt_NIKKEIp4;...
    statKsgt_NIKKEIp4;cvKsgt_NIKKEIp4;NaN;statKSgpd_NIKKEIp4_5pc;cvKSgpd_NIKKEIp4_5pc;...
    statADgpd_NIKKEIp4_5pc;cvADgpd_NIKKEIp4_5pc;statKgpd_NIKKEIp4_5pc;cvKgpd_NIKKEIp4_5pc;...
    NaN;statKSgpd_NIKKEIp4_20pc;cvKSgpd_NIKKEIp4_20pc;statADgpd_NIKKEIp4_20pc;...
    cvADgpd_NIKKEIp4_20pc;statKgpd_NIKKEIp4_20pc;cvKgpd_NIKKEIp4_20pc;NaN;statKSnormal_NIKKEIp4;...
    cvKSnormal_NIKKEIp4;statADnormal_NIKKEIp4;cvADnormal_NIKKEIp4;statKnormal_NIKKEIp4;cvKnormal_NIKKEIp4];
NIKKEIgoftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(NIKKEIgoftable,'NIKKEIgoodnessoffitTABLE.xlsx');

%PRTF 
rownames = {'SGT';'KS test sgt';'KS CV sgt';'AD test sgt';'AD CV sgt';'Kuiper test sgt';...
    'Kuiper CV sgt';'GPD 5%';'KS test gpd5pc';'KS CV gpd5pc';'AD test gpd5pc';'AD CV gpd5pc';...
    'Kuiper test gpd5pc';'Kuiper CV gpd5pc';'GPD 20%'; 'KS test gpd20pc';'KS CV gpd20pc';'AD test gpd20pc';...
    'AD CV gpd20pc';'Kuiper test gpd20pc';'Kuiper CV gpd20pc';'Normal';'KS test normal';'KS CV normal';...
    'AD test normal';'AD CV normal';'Kuiper test normal';'Kuiper CV normal'};
Daily = [NaN;statKSsgt_PRTFd;cvKSsgt_PRTFd;statADsgt_PRTFd;cvADsgt_PRTFd;...
    statKsgt_PRTFd;cvKsgt_PRTFd;NaN;statKSgpd_PRTFd_5pc;cvKSgpd_PRTFd_5pc;...
    statADgpd_PRTFd_5pc;cvADgpd_PRTFd_5pc;statKgpd_PRTFd_5pc;cvKgpd_PRTFd_5pc;...
    NaN;statKSgpd_PRTFd_20pc;cvKSgpd_PRTFd_20pc;statADgpd_PRTFd_20pc;...
    cvADgpd_PRTFd_20pc;statKgpd_PRTFd_20pc;cvKgpd_PRTFd_20pc;NaN;statKSnormal_PRTFd;...
    cvKSnormal_PRTFd;statADnormal_PRTFd;cvADnormal_PRTFd;statKnormal_PRTFd;cvKnormal_PRTFd];
Weekly = [NaN;statKSsgt_PRTFw;cvKSsgt_PRTFw;statADsgt_PRTFw;cvADsgt_PRTFw;...
    statKsgt_PRTFw;cvKsgt_PRTFw;NaN;statKSgpd_PRTFw_5pc;cvKSgpd_PRTFw_5pc;...
    statADgpd_PRTFw_5pc;cvADgpd_PRTFw_5pc;statKgpd_PRTFw_5pc;cvKgpd_PRTFw_5pc;...
    NaN;statKSgpd_PRTFw_20pc;cvKSgpd_PRTFw_20pc;statADgpd_PRTFw_20pc;...
    cvADgpd_PRTFw_20pc;statKgpd_PRTFw_20pc;cvKgpd_PRTFm_20pc;NaN;statKSnormal_PRTFw;...
    cvKSnormal_PRTFw;statADnormal_PRTFw;cvADnormal_PRTFw;statKnormal_PRTFw;cvKnormal_PRTFw];
Monthly = [NaN;statKSsgt_PRTFm;cvKSsgt_PRTFm;statADsgt_PRTFm;cvADsgt_PRTFm;...
    statKsgt_PRTFm;cvKsgt_PRTFm;NaN;statKSgpd_PRTFm_5pc;cvKSgpd_PRTFm_5pc;...
    statADgpd_PRTFm_5pc;cvADgpd_PRTFm_5pc;statKgpd_PRTFm_5pc;cvKgpd_PRTFm_5pc;...
    NaN;statKSgpd_PRTFm_20pc;cvKSgpd_PRTFm_20pc;statADgpd_PRTFm_20pc;...
    cvADgpd_PRTFm_20pc;statKgpd_PRTFm_20pc;cvKgpd_PRTFm_20pc;NaN;statKSnormal_PRTFm;...
    cvKSnormal_PRTFm;statADnormal_PRTFm;cvADnormal_PRTFm;statKnormal_PRTFm;cvKnormal_PRTFm];
P1 = [NaN;statKSsgt_PRTFp1;cvKSsgt_PRTFp1;statADsgt_PRTFp1;cvADsgt_PRTFp1;...
    statKsgt_PRTFp1;cvKsgt_PRTFp1;NaN;statKSgpd_PRTFp1_5pc;cvKSgpd_PRTFp1_5pc;...
    statADgpd_PRTFp1_5pc;cvADgpd_PRTFp1_5pc;statKgpd_PRTFp1_5pc;cvKgpd_PRTFp1_5pc;...
    NaN;statKSgpd_PRTFp1_20pc;cvKSgpd_PRTFp1_20pc;statADgpd_PRTFp1_20pc;...
    cvADgpd_PRTFp1_20pc;statKgpd_PRTFp1_20pc;cvKgpd_PRTFp1_20pc;NaN;statKSnormal_PRTFp1;...
    cvKSnormal_PRTFp1;statADnormal_PRTFp1;cvADnormal_PRTFp1;statKnormal_PRTFp1;cvKnormal_PRTFp1];
P2 = [NaN;statKSsgt_PRTFp2;cvKSsgt_PRTFp2;statADsgt_PRTFp2;cvADsgt_PRTFp2;...
    statKsgt_PRTFp2;cvKsgt_PRTFp1;NaN;statKSgpd_PRTFp2_5pc;cvKSgpd_PRTFp2_5pc;...
    statADgpd_PRTFp2_5pc;cvADgpd_PRTFp2_5pc;statKgpd_PRTFp2_5pc;cvKgpd_PRTFp2_5pc;...
    NaN;statKSgpd_PRTFp2_20pc;cvKSgpd_PRTFp2_20pc;statADgpd_PRTFp2_20pc;...
    cvADgpd_PRTFp2_20pc;statKgpd_PRTFp2_20pc;cvKgpd_PRTFp2_20pc;NaN;statKSnormal_PRTFp2;...
    cvKSnormal_PRTFp2;statADnormal_PRTFp2;cvADnormal_PRTFp2;statKnormal_PRTFp2;cvKnormal_PRTFp2];
P3 = [NaN;statKSsgt_PRTFp3;cvKSsgt_PRTFp3;statADsgt_PRTFp3;cvADsgt_PRTFp3;...
    statKsgt_PRTFp3;cvKsgt_PRTFp3;NaN;statKSgpd_PRTFp3_5pc;cvKSgpd_PRTFp3_5pc;...
    statADgpd_PRTFp3_5pc;cvADgpd_PRTFp3_5pc;statKgpd_PRTFp3_5pc;cvKgpd_PRTFp3_5pc;...
    NaN;statKSgpd_PRTFp3_20pc;cvKSgpd_PRTFp3_20pc;statADgpd_PRTFp3_20pc;...
    cvADgpd_PRTFp3_20pc;statKgpd_PRTFp3_20pc;cvKgpd_PRTFp3_20pc;NaN;statKSnormal_PRTFp3;...
    cvKSnormal_PRTFp3;statADnormal_PRTFp3;cvADnormal_PRTFp3;statKnormal_PRTFp3;cvKnormal_PRTFp3];
P4 = [NaN;statKSsgt_PRTFp4;cvKSsgt_PRTFp4;statADsgt_PRTFp4;cvADsgt_PRTFp4;...
    statKsgt_PRTFp4;cvKsgt_PRTFp4;NaN;statKSgpd_PRTFp4_5pc;cvKSgpd_PRTFp4_5pc;...
    statADgpd_PRTFp4_5pc;cvADgpd_PRTFp4_5pc;statKgpd_PRTFp4_5pc;cvKgpd_PRTFp4_5pc;...
    NaN;statKSgpd_PRTFp4_20pc;cvKSgpd_PRTFp4_20pc;statADgpd_PRTFp4_20pc;...
    cvADgpd_PRTFp4_20pc;statKgpd_PRTFp4_20pc;cvKgpd_PRTFp4_20pc;NaN;statKSnormal_PRTFp4;...
    cvKSnormal_PRTFp4;statADnormal_PRTFp4;cvADnormal_PRTFp4;statKnormal_PRTFp4;cvKnormal_PRTFp4];
PRTFgoftable = table(Daily,Weekly,Monthly,P1,P2,P3,P4, 'RowNames', rownames);
writetable(PRTFgoftable,'PRTFgoodnessoffitTABLE.xlsx');