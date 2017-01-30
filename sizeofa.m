level=graythresh(A);
bw=im2bw(A,level);
I=imcrop(bw,[1 1 5098 3999]);
sma=0;
med=0;
lar=0;
for a=1:5
b=imcrop(I);
c=imcrop(b);
[theLength, width]=size(c);
if width<=60
sma=sma+1;
elseif (width>60) && (width<=119)
med=med+1;
else
lar=lar+1;
end
end
sma
med
lar
