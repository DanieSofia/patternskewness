function [h,p,stat,cv] = kstestesgt(lc,parmhat)
x =linspace(min(lc),max(lc),length(lc));
Param=[parmhat(1),parmhat(2),parmhat(3)];
cdf = sgtcdf(x,Param,parmhat(4),parmhat(5));
cdfx = transpose(x);
cdfy = transpose(cdf);
test_cdf = [cdfx,cdfy];
[h,p,stat,cv] = kstest(lc,'CDF',test_cdf,'Alpha',0.01);
end