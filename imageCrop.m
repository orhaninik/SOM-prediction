function imageCrop()
resize=64;
process='DATA_BOWEL_s6';
data=dir(['s6']);
% data=dir(char(dataset));
class = {data(3:end).name};
if ~exist(process, 'dir')
  mkdir(process);% save file create   
  addpath(process)% add to path  
  for fi=1:numel(class)
       mkdir(char(fullfile(process,class(fi))));
       addpath(char(fullfile(process,class(fi))));
  end
end
 for fi=1:numel(class)  
        %görüntüleri png formatına çevir
        f=fullfile('s6',char(class(fi)));
        %f= dir([f '\*.jpg']);
        f= dir(f);
        fil={f.name};
        for k=3:numel(fil)   
             [filepath,name,ext] = fileparts(fil{k});
             file=string(name)+ext;%fil{k};
             im=imread(fullfile('s6',char(class(fi)),file));
             [x,y,z]=size(im); 
%              im=imresize(im,[x/4 y/4]);
   
            gry=rgb2gray(im);
            bw = im2bw(gry, graythresh(im));
            bw = ~bw;
            % figure, imshow(bw)
            se = strel('disk',20);
            closeBW = imclose(bw,se);
            %figure, imshow(closeBW)
            bw2 = imfill(closeBW, 'holes');
            se = strel('disk',5);
            bw2 = imerode(bw2,se);           
            %figure, imshow(bw2)
            L = bwlabel(bw2);
            posObj=regionprops(bw2,'Boundingbox');
            index=1;
            maxx=posObj(1).BoundingBox(3)*posObj(1).BoundingBox(4);
            for i=1:length(posObj)
                if(maxx<posObj(i).BoundingBox(3)*posObj(i).BoundingBox(4))
                    maxx=posObj(i).BoundingBox(3)*posObj(i).BoundingBox(4);
                    index=index+1;
                end    
            end
%           figure,
%          rgb=insertShape(im,'rectangle',posObj(index).BoundingBox, 'LineWidth',3);
%          imshow(rgb)
            x=posObj(index).BoundingBox(1);
            y=posObj(index).BoundingBox(2);
            forx=round(posObj(index).BoundingBox(4)/resize);
            fory=round(posObj(index).BoundingBox(3)/resize);
%             figure,
%             rgb=insertShape(im,'rectangle',posObj(index).BoundingBox, 'LineWidth',3);
%             imshow(rgb) 
            
         %  cropRegion(forx,fory,resize,x,y,bw2,im,name,fi,class,process);
            cropBowel(posObj(index).BoundingBox,im,name,fi,resize,class,process);
        end
   end 
end

function cropRegion(forx,fory,resize,x,y,bw2,im,name,fi,class,process)
try
%       figure,
                for k=1:forx
                    for l=1:fory
                    pos=([((l-1)*resize+x) ((k-1)*resize+y) resize-1 resize-1]);                    
                    I2 = imcrop(bw2,pos);
                 %figure, imshow(I2) figure, imshow(bw2)
%                  rgb=insertShape(im,'rectangle',pos, 'LineWidth',3);
%                  imshow(rgb)                
                    if (sum(I2(:) == 0)==0)%nnz(I2)~=0)
%                           im=insertShape(im,'rectangle',pos, 'LineWidth',3);                       
%                           imshow(im)
                        I1=imcrop(im,pos);%
                        I1=imresize(I1,[resize,resize]);
                        new_files=char(string(name)+'_'+string(k-1)+'_'+string(l-1)+'.png');
                        %new_files=char('s6_'+string(k)+'-'+string(k-1)+'_'+string(l-1)+'.png');
                    
                        imwrite(I1,fullfile(process,char(class(fi)),new_files));                                         
                    end
                    end
                end
            
catch  ME
disp(ME)
disp(char(string(name)+'_'+string(k-1)+'_'+string(l-1)+'.png'))
end 
end

function cropBowel(pos,im,name,fi,resize,class,process)
%    im=insertShape(im,'rectangle',pos, 'LineWidth',3);                       
%    imshow(im)
   I1=imcrop(im,pos);%
   I1=imresize(I1,[resize,resize]);
   new_files=char(string(name)+'_'+'.png');
   imwrite(I1,fullfile(process,char(class(fi)),new_files));                                       
end