inx=0;
dec=0;
inc=0;
str=0;
base_matrix=0;
level=graythresh(A);
bw=im2bw(A,level);
I=imcrop(bw,[1 1 5098 3999]);
for inx = 1:q
 
    n=imcrop(I);
    a=imcrop(n);
    [r,c]=find(a==0,1,'first');
    %r,c
    [r1,c1]=find(a==0,1,'last');
    %r1,c1
    
    m=r-r1;
    if (m<-50)
        %fprintf('Decreasing');
        m=r-r1;
        dec=dec+1;
    end;    
    if (m>50)
            %fprintf('Increasing');
            m=r-r1;
            inc=inc+1;
    end;    
    if (m<50&&m>-50)
            %fprintf('Straight');
            m=r-r1;
            str=str+1;
            %slant=(180+slant);
    end
end
dec
inc
str