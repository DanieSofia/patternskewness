function se = gpse(gpd_fit,a)
pd = gpd_fit.paramci;
if a == 'k'
    se = pd(1)-gpd_fit.k;
elseif a == 'sigma'
    se = pd(3)-gpd_fit.k;
else
    error('second input out of choice, chose k or sigma as strings')
end