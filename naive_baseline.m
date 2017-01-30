m = 'baseline.txt';
file=importdata(m);
a=file(:,1);
b=file(:,2);
c=file(:,3);
entry=size(file,1);
entry
real=0;
opti=0;
pess=0;
i=1;
j=1;
k=1;

for a = 1:entry
 %file(entry,4)
    if file(a,4)==100
       real=real+1;
       r1(i)=file(a,1);
       r2(i)=file(a,2);
       r3(i)=file(a,3);
       i=i+1;
   elseif file(a,4)==200
       opti=opti+1;
       o1(j)=file(a,1);
       o2(j)=file(a,2);
       o3(j)=file(a,3);
       j=j+1;
   elseif file(a,4)==300
       pess=pess+1;
       p1(k)=file(a,1);
       p2(k)=file(a,2);
       p3(k)=file(a,3);
       k=k+1;
    end
   a=a+1;
end
mp1=mean(p1);
mp2=mean(p2);
mp3=mean(p3);
mo1=mean(o1);
mo2=mean(o2);
mo3=mean(o3);
mr1=mean(r1);
mr2=mean(r2);
mr3=mean(r3);
stdp1=std(p1);
stdp2=std(p2);
stdp3=std(p3);
stdo1=std(o1);
stdo2=std(o2);
stdo3=std(o3);
stdr1=std(r1);
stdr2=std(r2);
stdr3=std(r3);
pri_opti=opti/entry;
pri_pess=pess/entry;
pri_real=real/entry;

%m = 'input_baseline.csv';
%file=csvread(m);
new1=inc;
new2=str;
new3=dec;

gaussii=@gaussiii;

go1=gaussii(new1,mo1,stdo1);
gr1=gaussii(new1,mr1,stdr1);
gp1=gaussii(new1,mp1,stdp1);
go2=gaussii(new2,mo2,stdo2);
gr2=gaussii(new2,mr2,stdr2);
gp2=gaussii(new2,mp2,stdp2);
go3=gaussii(new3,mo3,stdo3);
gr3=gaussii(new3,mr3,stdr3);
gp3=gaussii(new3,mp3,stdp3);




finalopti=go1*go2*go3*pri_opti;
finalreal=gr1*gr2*gr3*pri_real;
finalpess=gp1*gp2*gp3*pri_pess;
finalopti
finalreal
finalpess
if ((finalopti>finalreal)&&(finalopti>finalpess))
    r=1;
elseif ((finalpess>finalreal)&&(finalpess>finalopti))
    r=2;
elseif ((finalreal>finalopti)&&(finalreal>finalpess))
    r=3;
end

