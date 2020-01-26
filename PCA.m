
clc;
clear;
load 'ionosphere'
X(:,2)=[];

num=351;
d=33;

avgcol=zeros(33);
avgcol=mean(X);

m=zeros(d,d);

for i=1:num
    m=m+(X(i,:)-avgcol)'*(X(i,:)-avgcol);
end
 m=m./(num-1);
 
 E=eig(m);
 [V,D]=eig(m);
 
 
 
 
 

 








