function GPDrepresentation(s,evaluated,titulo) 
s=-flip(s);
histogram(s ,50,'Normalization','pdf')
hold on
x=-flip(evaluated(:,1));
y=flip(evaluated(:,2));
line(x,y,'Color','red','LineStyle','--')

title(titulo)
xlabel('Data') 
ylabel('Density') 
legend('Empirical','GPD','SGT','Location','northwest')

hold off
end