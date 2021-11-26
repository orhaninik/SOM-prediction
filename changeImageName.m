function araisler()
  
  
        className=dir('ovaryumOrgImages');
        xlsfiles={className.name};
        xlsfiles=natsort(xlsfiles);
        xlsfiles=xlsfiles';
        className = xlsfiles(3:end);
        
  for k=1:numel(className)  
    %görüntüleri png formatýna çevir
    f=fullfile(char(className(k)));
    eski=fullfile(pwd,'ovaryumOrgImages',f);
    new_files=char(string(k)+'.png');
    yeni=fullfile(pwd,'ovaryumOrgImages',new_files);
     movefile(eski,yeni);
%     im=imread(f);
%     imwrite(im,fullfile(pwd,'orgImages',new_files));
     
    
  end

end