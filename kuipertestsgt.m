function [hK,pK, K, CV]=kuipertestsgt(lc, parmhat)
x =linspace(min(lc),max(lc),length(lc));
cdfx = transpose(x);
param = [parmhat(1),parmhat(2),parmhat(3)];
cdf = sgtcdf(x,param,parmhat(4),parmhat(5));
cdfy = transpose(cdf);
test_cdf = [cdfx,cdfy];
[hK,pK, K, CV] = kuipertest(lc,'alpha', 0.01, 'CDF' , test_cdf);
end