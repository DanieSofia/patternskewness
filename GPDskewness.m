function s = GPDskewness(parmhat)
csi=parmhat(1);
if csi<1/3
    s=2*(1+csi)*sqrt(1-2*csi)/(1-3*csi);
else
    s=NaN;
end