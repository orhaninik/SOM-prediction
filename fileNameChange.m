function fileNameChange()
file=load('11106.mat');
rowSize=size(file.gTruth.LabelData);
rowSize=rowSize(1);

for i=1:rowSize
   
  %file.label300{i,1}={fullfile(pwd,char('data500\'+ string(i)+'.jpg'))};
  %file.label2269{i,1}={fullfile(char('data500\'+ string(i)+'.jpg'))};
  C = strsplit( char(file.gTruth.LabelData{i,1}),'\');
  file.gTruth.LabelData{i,1}=fullfile(C(3),C(4));
end
table=file.label2250;
save label2250.mat table;
end