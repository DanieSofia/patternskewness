function [h,p,stat,cv] = adtestegpd(lc,fit)
%x =linspace(min(lc),max(lc),length(lc));
%cdfx = transpose(x);
%cdf = gpcdf(x,fit.k,fit.sigma,fit.theta);
%cdfy = transpose(cdf);
%test_cdf = [cdfx,cdfy];
[h,p,stat,cv] = adtest(lc,'Distribution',fit,'Alpha',0.01);
end