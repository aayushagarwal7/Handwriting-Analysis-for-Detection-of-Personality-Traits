level=graythresh(A);
bw=im2bw(A,level);
I=imcrop(bw,[1 1 5098 3999]);
lef=0;
str=0;
rig=0;
for a=1:5
a=imcrop(I);
m=imcrop(a);
y=imrotate(m,90);
[r15,c15]=find(y==0,1,'first');
[r25,c25]=find(y==0,1,'last');
slant=atan2d(-(c25-c15),(r25-r15));
if (slant<0)
slant=(180+slant);
end
if slant<86
    lef=lef+1;
elseif (slant>=86) && (slant<=94)
    str=str+1;
else
    rig=rig+1;
end
end
lef
str
rig