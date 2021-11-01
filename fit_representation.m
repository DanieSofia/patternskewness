function fit_representation(nome,sgtS,sgtpS,gpd5S,gps5pS,gpd20S,gpd20pS)
Name = inputname(2);

if Name(end)=='D'
    titulo = append(nome,' daily returns');
elseif Name(end)=='W'
    titulo = append(nome,' weekly returns');
elseif Name(end)=='M'
    titulo = append(nome,' monthly returns');
elseif Name(end)=='1'
    titulo = append(nome,' P1 returns');
elseif Name(end)=='2'
    titulo = append(nome,' P2 returns');
elseif Name(end)=='3'
    titulo = append(nome,' P3 returns');
elseif Name(end)=='4'
    titulo = append(nome,' P4 returns');
end

filenome = Name(3:end);
%histogram vs Normal vs SGT
SGTrepresentation(sgtS,sgtpS,titulo);
sgt1 = gcf;
file_name_sgt = strcat('SGTfit_',filenome,'_graph.png');
exportgraphics(sgt1,file_name_sgt,'Resolution',300)

%5% tail vs gpd
titulo_5pc=strcat(titulo,' 5% threshold');
GPDrepresentation(gpd5S,gps5pS,titulo_5pc);
gpd1_5pc = gcf;
file_name_gpd5 = strcat('GPDfit_',filenome,'_5pc_graph.png');
exportgraphics(gpd1_5pc,file_name_gpd5,'Resolution',300)

%20% tail vs gpd
titulo_20pc = strcat(titulo,' 20% threshold');
GPDrepresentation(gpd20S,gpd20pS,titulo_20pc);
gpd1_20pc =  gcf;
file_name_20pc = strcat('GPDfit_',filenome,'_20pc_graph.png');
exportgraphics(gpd1_20pc,file_name_20pc,'Resolution',300)

end