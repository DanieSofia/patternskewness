function k = GPDkurtosis(parmhat)
csi=parmhat(1);
if csi<1/4
    k=3*(1-2*csi)*(2*csi^2+csi+3)/((1-3*csi)*(1-4*csi));
else
    k=NaN;
end