function datasetShow()

[XTrain,XTest]= dataUpload();

num_images=length(XTrain.Files);
% Visualize random 20 images
perm=randperm(num_images,20);
P=figure 
for idx=1:20
    
    subplot(4,5,idx);
    im=imread(char(XTrain.Files(perm(idx))));
    imshow(im);
    title(XTrain.Labels(perm(idx)), "Interpreter", "none")
    
end
ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0  1],'Box','on','Visible','off','Units','normalized', 'clipping' , 'off');
text(0.45, 0.98,'CONVEX','Color','k','FontWeight','bold','FontSize',12)

% train=table(YTrain);
% test=table(YTest);
% train = groupsummary(train,'YTrain','sum')
% test = groupsummary(test,'YTest','sum')




end