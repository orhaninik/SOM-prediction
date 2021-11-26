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
    function l= layer1(input,output)
%%90 başarı
l = [ imageInputLayer(input)
    
           %%--
           convolution2dLayer(4,25,'padding','same')
           batchNormalizationLayer()
           reluLayer()  
%             maxPooling2dLayer(3,'Stride',7)
%             averagePooling2dLayer(5,'Stride',7)
%              averagePooling2dLayer(2,'Stride',3)
%            
           convolution2dLayer(2,183,'padding','same')
           batchNormalizationLayer()
           reluLayer()     
%               averagePooling2dLayer(5,'Stride',10)
         maxPooling2dLayer(6,'Stride',4) 
           convolution2dLayer(3,62,'padding','same')           
             batchNormalizationLayer()
             reluLayer()
          maxPooling2dLayer(5,'Stride',2) 
            averagePooling2dLayer(7,'Stride',4) 
           convolution2dLayer(10,174,'padding','same')
           batchNormalizationLayer()  
           reluLayer()
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
           
            fullyConnectedLayer(845)
             reluLayer()
            dropoutLayer(0.5);
%              fullyConnectedLayer(512)
%              reluLayer()
%             dropoutLayer(0.5);
          fullyConnectedLayer(output)
          softmaxLayer()
          classificationLayer()];
%       analyzeNetwork(layer)
    end
    function l= layer2(input,output)
%80-85
l = [ imageInputLayer(input)
    
           %%--
           convolution2dLayer(7,149,'padding','same')
           batchNormalizationLayer()
           reluLayer()  
%             maxPooling2dLayer(3,'Stride',7)
%              averagePooling2dLayer(5,'Stride',6)
%              averagePooling2dLayer(2,'Stride',3)
%            
           convolution2dLayer(4,221,'padding','same')
           batchNormalizationLayer()
           reluLayer()     
%               averagePooling2dLayer(5,'Stride',10)
           maxPooling2dLayer(3,'Stride',7) 
           averagePooling2dLayer(3,'Stride',5)
           convolution2dLayer(10,253,'padding','same')           
             batchNormalizationLayer()
             reluLayer()
%           maxPooling2dLayer(5,'Stride',2) 
%             averagePooling2dLayer(7,'Stride',4) 
           convolution2dLayer(9,95,'padding','same')
           batchNormalizationLayer()  
           reluLayer()
%             maxPooling2dLayer(7,'Stride',4) 
%              maxPooling2dLayer(3,'Stride',7) 
% %               
             convolution2dLayer(4,172,'padding','same')
%             batchNormalizationLayer()
%            reluLayer()
%             
%             convolution2dLayer(3,198,'padding','same')
%            reluLayer()
%              batchNormalizationLayer()
%             convolution2dLayer(4,158)
%            reluLayer()
%              batchNormalizationLayer()
           
            fullyConnectedLayer(600)
             reluLayer()
            dropoutLayer(0.5);
%              fullyConnectedLayer(512)
%              reluLayer()
%             dropoutLayer(0.5);
          fullyConnectedLayer(output)
          softmaxLayer()
          classificationLayer()];
%       analyzeNetwork(layer)
    end
function l= layer3(input,output)
%swarm 442 %76
l = [ imageInputLayer(input)
    
           %%--
           convolution2dLayer(3,66,'padding','same')
           batchNormalizationLayer()
           reluLayer()  
             maxPooling2dLayer(6,'Stride',7)
            averagePooling2dLayer(5,'Stride',7)
%              averagePooling2dLayer(2,'Stride',3)
%            
           convolution2dLayer(2,244,'padding','same')
           batchNormalizationLayer()
           reluLayer()     
%               averagePooling2dLayer(5,'Stride',10)
         %  maxPooling2dLayer(3,'Stride',7) 
          % averagePooling2dLayer(8,'Stride',95)
           convolution2dLayer(8,95,'padding','same')           
             batchNormalizationLayer()
             reluLayer()
%           maxPooling2dLayer(5,'Stride',2) 
%             averagePooling2dLayer(7,'Stride',4) 
           convolution2dLayer(10,93,'padding','same')
           batchNormalizationLayer()  
           reluLayer()
%             maxPooling2dLayer(7,'Stride',4) 
%              maxPooling2dLayer(3,'Stride',7) 
% %               
             convolution2dLayer(9,235,'padding','same')
            batchNormalizationLayer()
           reluLayer()
%             
            convolution2dLayer(9,198,'padding','same')
           reluLayer()
             batchNormalizationLayer()
%             convolution2dLayer(4,158)
%            reluLayer()
%              batchNormalizationLayer()
           
            fullyConnectedLayer(518)
             reluLayer()
            dropoutLayer(0.5);
%              fullyConnectedLayer(512)
%              reluLayer()
%             dropoutLayer(0.5);
          fullyConnectedLayer(output)
          softmaxLayer()
          classificationLayer()];
%       analyzeNetwork(layer)
end

function l= layer4(input,output)
%swarm 454
l = [ imageInputLayer(input)
    
           %%--
           convolution2dLayer(6,140,'padding','same')
           batchNormalizationLayer()
           reluLayer()  
%              maxPooling2dLayer(6,'Stride',7)
            averagePooling2dLayer(4,'Stride',5)
%              averagePooling2dLayer(2,'Stride',3)
%            
           convolution2dLayer(10,205,'padding','same')
           batchNormalizationLayer()
           reluLayer()     
%               averagePooling2dLayer(5,'Stride',10)
           maxPooling2dLayer(4,'Stride',2) 
          % averagePooling2dLayer(8,'Stride',95)
           convolution2dLayer(9,183,'padding','same')           
             batchNormalizationLayer()
             reluLayer()

             maxPooling2dLayer(5,'Stride',7) 
%             averagePooling2dLayer(7,'Stride',4) 
           convolution2dLayer(10,103,'padding','same')
           batchNormalizationLayer()  
           reluLayer()
%             maxPooling2dLayer(7,'Stride',4) 
%              maxPooling2dLayer(3,'Stride',7) 
% %               
%              convolution2dLayer(9,235,'padding','same')
%             batchNormalizationLayer()
%            reluLayer()
%             
%             convolution2dLayer(9,198,'padding','same')
%            reluLayer()
%              batchNormalizationLayer()
%             convolution2dLayer(4,158)
%            reluLayer()
%              batchNormalizationLayer()
           
            fullyConnectedLayer(763)
             reluLayer()
            dropoutLayer(0.5);
%              fullyConnectedLayer(512)
%              reluLayer()
%             dropoutLayer(0.5);
          fullyConnectedLayer(output)
          softmaxLayer()
          classificationLayer()];
%       analyzeNetwork(layer)
end
function l= layer5(input,output) %en başarılı
%swarm 454 
l = [ imageInputLayer(input)
    
           %%--
           convolution2dLayer(2,109,'padding','same')
           batchNormalizationLayer()
           reluLayer()  
%              maxPooling2dLayer(6,'Stride',7)
            averagePooling2dLayer(4,'Stride',4)
%              averagePooling2dLayer(2,'Stride',3)
%            
           convolution2dLayer(10,203,'padding','same')
           batchNormalizationLayer()
           reluLayer()     
%               averagePooling2dLayer(5,'Stride',10)
           maxPooling2dLayer(4,'Stride',3) 
          % averagePooling2dLayer(8,'Stride',95)
           convolution2dLayer(3,81,'padding','same')           
             batchNormalizationLayer()
             reluLayer()

%              maxPooling2dLayer(5,'Stride',7) 
%             averagePooling2dLayer(7,'Stride',4) 
           convolution2dLayer(4,210,'padding','same')
           batchNormalizationLayer()  
           reluLayer()
%             maxPooling2dLayer(7,'Stride',4) 
%              maxPooling2dLayer(3,'Stride',7) 
% %               
             convolution2dLayer(10,169,'padding','same')
            batchNormalizationLayer()
           reluLayer()
%             
%             convolution2dLayer(9,198,'padding','same')
%            reluLayer()
%              batchNormalizationLayer()
%             convolution2dLayer(4,158)
%            reluLayer()
%              batchNormalizationLayer()
           
            fullyConnectedLayer(850)
             reluLayer()
            dropoutLayer(0.5);
%              fullyConnectedLayer(512)
%              reluLayer()
%             dropoutLayer(0.5);
          fullyConnectedLayer(output)
          softmaxLayer()
          classificationLayer()];
%       analyzeNetwork(layer)
end