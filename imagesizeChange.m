function imagesizeChange()
  
  
        className=dir('DATA');
        xlsfiles={className.name};
        className = xlsfiles(3:end);
        
  for k=1:numel(className)  
    %görüntüleri png formatýna çevir
    f=fullfile(char(className(k)));
    im=imread(fullfile('DATA',f));
    im =imresize(im,[1024 1024]);
    yeni=fullfile('DATA_1024',f);
    imwrite(im,yeni);
     
    
  end

end