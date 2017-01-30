m = 'a_size.txt';
file=importdata(m);
a=file(:,1);
b=file(:,2);
c=file(:,3);
entry=size(file,1);
entry
small=0;
medium=0;
large=0;
i=1;
j=1;
k=1;

for a = 1:entry
 %file(entry,4)
    if file(a,4)==100
       small=small+1;
       s1(i)=file(a,1);
       s2(i)=file(a,2);
       s3(i)=file(a,3);
       i=i+1;
   elseif file(a,4)==200
       medium=medium+1;
       m1(j)=file(a,1);
       m2(j)=file(a,2);
       m3(j)=file(a,3);
       j=j+1;
   elseif file(a,4)==300
       large=large+1;
       l1(k)=file(a,1);
       l2(k)=file(a,2);
       l3(k)=file(a,3);
       k=k+1;
    end
   a=a+1;
end
ml1=mean(l1);
ml2=mean(l2);
ml3=mean(l3);
mm1=mean(m1);
mm2=mean(m2);
mm3=mean(m3);
ms1=mean(s1);
ms2=mean(s2);
ms3=mean(s3);
stdl1=std(l1);
stdl2=std(l2);
stdl3=std(l3);
stdm1=std(m1);
stdm2=std(m2);
stdm3=std(m3);
stds1=std(s1);
stds2=std(s2);
stds3=std(s3);
pri_medium=medium/entry;
pri_large=large/entry;
pri_small=small/entry;


 new1=sma;
 new2=med;
 new3=lar;


gaussii=@gaussiii;

gm1=gaussii(new1,mm1,stdm1);
gs1=gaussii(new1,ms1,stds1);
gl1=gaussii(new1,ml1,stdl1);
gm2=gaussii(new2,mm2,stdm2);
gs2=gaussii(new2,ms2,stds2);
gl2=gaussii(new2,ml2,stdl2);
gm3=gaussii(new3,mm3,stdm3);
gs3=gaussii(new3,ms3,stds3);
gl3=gaussii(new3,ml3,stdl3);




finalmedium=gm1*gm2*gm3*pri_medium;
finalsmall=gs1*gs2*gs3*pri_small;
finallarge=gl1*gl2*gl3*pri_large;
% finalmedium
% finalsmall
% finallarge
if ((finalmedium>finalsmall)&&(finalmedium>finallarge))
    r=2;
elseif ((finallarge>finalsmall)&&(finallarge>finalmedium))
    r=3;
elseif ((finalsmall>finalmedium)&&(finalsmall>finallarge))
    r=1;
end
r

