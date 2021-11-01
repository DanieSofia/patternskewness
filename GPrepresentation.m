function GPrepresentation(S,pS)
%S is the sample (fe gpd_sample_data_FTSEd)
%pS is the estimated parameter of the SGT (fe parmhatFTSEd)
histogram(S ,50,'Normalization','pdf')
hold on
nobv=length(S);
minval=min(S);
maxval=max(S);
mu=mean(S);
sigma =std(S);
x =linspace(minval,maxval,nobv);  %o xFTSE100d ja esta por ordem
%x_gpd_est = x_gpd_FTSE100d - media1;
%x_gpd_est = - x_gpd_FTSE100d;
%x_gpd_est = flip(x_gpd_est);
%scale = (length(gpd_sample_data_FTSEd)/nobv1); %the bin values were vI=ci/N where ci...
%was the number of elements in the bin and
%N was the number of elements in the input data (gpd_sample_data_FTSEd)
%since we want to have 
y = gppdf(x,pS(1),pS(2),minval);
%y3_FTSE100d = scale.*flip(y3_FTSE100d);
plot(x,y, '--r')

title('FTSE100 left tail daily returns')
xlabel('Data') 
ylabel('Density') 
legend('Empirical','GPD') % falta a GPD

hold off
end