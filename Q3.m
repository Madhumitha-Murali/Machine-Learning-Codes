clc;
clear;

d=2; %dimension given in the problem
num=50; %number of samples to be considered

a=-3+rand(num,d)*6;
avgcol=mean(a)
m=zeros(2,2);
for i=1:num
    m=m+(a(i,:)-avgcol)'*(a(i,:)-avgcol);
end
 m=m./(num-1)
 
 cov(a)
 
 %disp(m);
 
    