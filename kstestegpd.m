function [h,p,stat,cv] = kstestegpd(lc,fit)
x =linspace(min(lc),max(lc),length(lc));
cdfx = transpose(x);
cdf = gpcdf(x,fit.k,fit.sigma,fit.theta);
cdfy = transpose(cdf);
test_cdf = [cdfx,cdfy];
[h,p,stat,cv] = kstest(lc,'CDF',test_cdf,'Alpha',0.01);
end