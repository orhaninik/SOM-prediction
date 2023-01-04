function layer=layers(input,output)

layer=layer0(input,output);
% layer=layer0(input,output);

end
function layer= layer0(input,output)
layer = [ imageInputLayer([input])
    
           %%--
           convolution2dLayer(3,150,'padding','same')
           batchNormalizationLayer()
           reluLayer()  
            maxPooling2dLayer(3,'Stride',2)
%             averagePooling2dLayer(5,'Stride',7)
%              averagePooling2dLayer(2,'Stride',3)
%            
           convolution2dLayer(5,186,'padding','same')
           batchNormalizationLayer()
           reluLayer()     
              averagePooling2dLayer(3,'Stride',3)
%           maxPooling2dLayer(6,'Stride',4) 
           convolution2dLayer(3,90,'padding','same')           
             batchNormalizationLayer()
             reluLayer()
%           maxPooling2dLayer(5,'Stride',2) 
%             averagePooling2dLayer(7,'Stride',4) 
%            convolution2dLayer(6,225,'padding','same')
%            batchNormalizationLayer()  
%            reluLayer()
% %               
%             convolution2dLayer(10,46,'padding','same')
%             batchNormalizationLayer()
%            reluLayer()
%             
%             convolution2dLayer(3,198,'padding','same')
%            reluLayer()
%              batchNormalizationLayer()
%             convolution2dLayer(4,158)
%            reluLayer()
%              batchNormalizationLayer()
           
            fullyConnectedLayer(574)
             reluLayer()
            dropoutLayer(0.5);
%              fullyConnectedLayer(512)
%              reluLayer()
%             dropoutLayer(0.5);
          fullyConnectedLayer(output)
          softmaxLayer()
          classificationLayer()];
    %  analyzeNetwork(layer)
    end
   
