function [hK,pK, K, CV]=kuipertestgpd(lc, fit)
x =linspace(min(lc),max(lc),length(lc));
cdfx = transpose(x);
cdf = gpcdf(x,fit.k,fit.sigma,fit.theta);
cdfy = transpose(cdf);
test_cdf = [cdfx,cdfy];
[hK,pK, K, CV] = kuipertest(lc,'alpha', 0.01, 'CDF' , test_cdf);
end