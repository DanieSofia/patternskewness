function [h,p,stat,cv] = adtestenormal(lc,mu,sigma)
%x =linspace(min(lc),max(lc),length(lc));
%cdf = normcdf(x,mu,sigma);
%cdfx = transpose(x);
%cdfy = transpose(cdf);
%test_cdf = [cdfx,cdfy];
dist = makedist('normal','mu',mu,'sigma',sigma);
[h,p,stat,cv] = adtest(lc,'Distribution',dist,'Alpha',0.01);
end