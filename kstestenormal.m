function [h,p,stat,cv] = kstestenormal(lc,mu,sigma)
x =linspace(min(lc),max(lc),length(lc));
cdf = normcdf(x,mu,sigma);
cdfx = transpose(x);
cdfy = transpose(cdf);
test_cdf = [cdfx,cdfy];
[h,p,stat,cv] = kstest(lc,'CDF',test_cdf,'Alpha',0.01);
end