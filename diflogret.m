%create de function dif-log 
%yt= 100*(ln(St)-ln(St-1))

function Y= diflogret(X)
    n=length(X)-1;
    for k = 1:n
        Y(k)=100*(reallog(X(k+1))-reallog(X(k)));
    end
end
