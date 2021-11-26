function boxxPlot()
result=load('net_bowel_s6.mat')

boxplot(result.result.Afold)
xlabel('All Results')
ylabel('Accuracy(%)')

end