function [dataTrain,dataTest] = dataUpload()

%unzip(fullfile(matlabroot,'examples','nnet','merchData2.rar'));
imageAugmenter = imageDataAugmenter( ...
    'RandRotation',[-20,20], ...
    'RandXTranslation',[-3 3], ...
    'RandXReflection',true,...
    'RandYReflection',true,...
    'RandYTranslation',[-3 3]);

data = imageDatastore('DATA_BOWEL_s6',...
    'IncludeSubfolders',true,...
    'LabelSource','foldernames');
countEachLabel(data);

data =shuffle(data);%seçimden önce verileri karýþtýr

[dataTrain,dataTest] = splitEachLabel(data,0.80);% %80 training
dataTrain = shuffle(dataTrain);
dataTest = shuffle(dataTest);
imageSize=[224 224];
%dataTrain = augmentedImageDatastore(imageSize,dataTrain,'DataAugmentation',imageAugmenter);

end
