m = 'slant.txt';
file=importdata(m);
a=file(:,1);
b=file(:,2);
c=file(:,3);
entry=size(file,1);
entry
left=0;
rightt=0;
straight=0;
i=1;
j=1;
k=1;

for a = 1:entry
 %file(entry,4)
    if file(a,4)==100
       left=left+1;
       left1(i)=file(a,1);
       left2(i)=file(a,2);
       left3(i)=file(a,3);
       i=i+1;
   elseif file(a,4)==200
       rightt=rightt+1;
       rightt1(j)=file(a,1);
       rightt2(j)=file(a,2);
       rightt3(j)=file(a,3);
       j=j+1;
   elseif file(a,4)==300
       straight=straight+1;
       straight1(k)=file(a,1);
       straight2(k)=file(a,2);
       straight3(k)=file(a,3);
       k=k+1;
    end
   a=a+1;
end
mstraight1=mean(straight1);
mstraight2=mean(straight2);
mstraight3=mean(straight3);
mrightt1=mean(rightt1);
mrightt2=mean(rightt2);
mrightt3=mean(rightt3);
mleft1=mean(left1);
mleft2=mean(left2);
mleft3=mean(left3);
stdstraight1=std(straight1);
stdstraight2=std(straight2);
stdstraight3=std(straight3);
stdrightt1=std(rightt1);
stdrightt2=std(rightt2);
stdrightt3=std(rightt3);
stdleft1=std(left1);
stdleft2=std(left2);
stdleft3=std(left3);
pri_rightt=rightt/entry;
pri_straight=straight/entry;
pri_left=left/entry;


new1=lef;
new2=rig;
new3=str;

gaussii=@gaussiii;

grightt1=gaussii(new1,mrightt1,stdrightt1);
glef1=gaussii(new1,mleft1,stdleft1);
gstr1=gaussii(new1,mstraight1,stdstraight1);
grightt2=gaussii(new2,mrightt2,stdrightt2);
glef2=gaussii(new2,mleft2,stdleft2);
gstr2=gaussii(new2,mstraight2,stdstraight2);
grightt3=gaussii(new3,mrightt3,stdrightt3);
glef3=gaussii(new3,mleft3,stdleft3);
gstr3=gaussii(new3,mstraight3,stdstraight3);




finalrightt=grightt1*grightt2*grightt3*pri_rightt;
finalleft=glef1*glef2*glef3*pri_left;
finalstraight=gstr1*gstr2*gstr3*pri_straight;
finalrightt
finalleft
finalstraight
if ((finalrightt>finalleft)&&(finalrightt>finalstraight))
    r=1;
elseif ((finalstraight>finalleft)&&(finalstraight>finalrightt))
    r=2;
elseif ((finalleft>finalrightt)&&(finalleft>finalstraight))
    r=3;
end
str

