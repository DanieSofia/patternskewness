function s = sgtskewness(ETA,PSI,LAMBDA)
%skewness for the SGT distribution
%the inputs are the estimated parameter of the sgt, estimated by sgtfit
%BenSaida's matlab function.
theta = beta(1/ETA, PSI/ETA)/(sqrt((1+3*LAMBDA^2)*beta(1/ETA,PSI/ETA)*beta(3/ETA,...
    (PSI-2)/ETA) - 4*(LAMBDA^2)*(beta(2/ETA,(PSI-1)/ETA)^2)));

%SGT skewness is only defined ehrn PSI>3
if PSI>3
    s = 4*(theta^3)*LAMBDA*(1+LAMBDA^2)*(beta(4/ETA,(PSI-3)/ETA)/beta(1/ETA,PSI/ETA))...
    -2*theta*LAMBDA*(beta(2/ETA,(PSI-1)/ETA)/beta(1/ETA,PSI/ETA))*(3+4*(theta^2)*...
    ((beta(2/ETA,(PSI-1)/ETA)^2)/(beta(1*ETA,PSI*ETA)^2)));
else
    s = NaN;
end