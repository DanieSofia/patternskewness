function [t] = adtestesgt(lc,parmhat)
x =linspace(min(lc),max(lc),length(lc));
Param=[parmhat(1),parmhat(2),parmhat(3)];
cdf = sgtcdf(x,Param,parmhat(4),parmhat(5));
cdfx = transpose(x);
cdfy = transpose(cdf);
sgtrnd(Param,parmhat(4),parmhat(5),varargin)
test_cdf = [cdfx,cdfy];
t = AnDarksamtest(test_cdf,0.01);
end