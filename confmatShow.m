function confmatShow()
% r=load('rabbit_100_RUN_%70_%30_2_min_0,908436.mat');
%rabbit();
r=load('net_crop_s6.mat');
conf=r.result.con;%r.result.confmat(find(r.result.acc==min(r.result.acc)));
labelsRabbit={'Point-1','Point-2','Point-3','Point-4','Point-5','Point-6','Point-7','Point-8','Point-9','Point-10','Point-11',...
    'Point-12','Point-13','Point-14','Point-15','Point-16','Point-17','Point-18','Point-19','Point-20'};


fig = figure;
cm=confusionchart(conf,labelsRabbit,'RowSummary','row-normalized','ColumnSummary','column-normalized')

fig_Position = fig.Position;
fig_Position(3) = fig_Position(3)*1.5;
fig.Position = fig_Position;

cm.Normalization = 'row-normalized'; 
sortClasses(cm,'descending-diagonal')
cm.Normalization = 'absolute'; 

cm.Normalization = 'column-normalized';
sortClasses(cm,'descending-diagonal')
cm.Normalization = 'absolute'; 
 

end

function rabbit()
conf=r.rabbit.confmat(find(r.rabbit.acc==min(r.rabbit.acc)));
labelsRabbit={'Coecicola','Exigua','Flavescens','Intestinalis','Irresidua','Magna','Media','Perforans','Piriformis','Stiedai','Vejdovskyi'};
fig = figure;
cm=confusionchart(conf(1).con,labelsRabbit,'RowSummary','row-normalized','ColumnSummary','column-normalized')

fig_Position = fig.Position;
fig_Position(3) = fig_Position(3)*1.5;
fig.Position = fig_Position;

cm.Normalization = 'row-normalized'; 
sortClasses(cm,'descending-diagonal')
cm.Normalization = 'absolute'; 

cm.Normalization = 'column-normalized';
sortClasses(cm,'descending-diagonal')
cm.Normalization = 'absolute'; 
end

function chicken(r)
conf=r.chicken.confmat(find(r.chicken.acc==min(r.chicken.acc)));
labelsChicken={'Acervulina','Brunetti','Maxima','Mitis','Necatrix','Praecox','Tenella'};%,'Perforans','Piriformis','Stiedai','Vejdovskyi'};
fig = figure;
cm=confusionchart(conf(1).con,labelsChicken,'RowSummary','row-normalized','ColumnSummary','column-normalized')

fig_Position = fig.Position;
fig_Position(3) = fig_Position(3)*1.5;
fig.Position = fig_Position;

cm.Normalization = 'row-normalized'; 
sortClasses(cm,'descending-diagonal')
cm.Normalization = 'absolute'; 

cm.Normalization = 'column-normalized';
sortClasses(cm,'descending-diagonal')
cm.Normalization = 'absolute'; 
end