function grafikleriCiz()

veri=xlsread('tüm sonuçlar');

a = xlsread('tüm sonuçlar','MNIST','N:P');

yyaxis left
p=plot(a(:,1),a(:,2),'--gs',...
    'LineWidth',1,...
    'MarkerSize',5,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor',[0.5,0.5,0.5]);
yyaxis right
plot(a(:,1),a(:,3),'--*',...
    'LineWidth',1,...
    'MarkerSize',5,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5]);

yyaxis left
title('MNIST')
xlabel('Epoch')
ylabel('Accuracy(%)')

yyaxis right
ylabel('Loss')

legend('Accuracy(%)','Loss')

end