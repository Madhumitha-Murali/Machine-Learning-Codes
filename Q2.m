clc;
clear;

d=2; %dimension given in the problem
num=500; %number of samples to be considered

X=rand(500,2);
avgcol=mean(X);
vari=zeros(1,2);

    for j=1:2
        for i=1:num
    vari(j)=vari(j)+((X(i,j)-avgcol(j))^2);
        end
    vari(j)=vari(j)/(num-1);
    end

vari1=0;
for j=1:num
    vari1=vari1+((X(j,1)-avgcol(1))*(X(j,2)-avgcol(2)));
end

covari=zeros(2,2);

covari(1,1)=vari(1);
covari(2,2)=vari(2);
covari(2,1)=vari1;
covari(1,2)=covari(2,1);

for i=1:num
    p(i)=exp(-0.5*(X(i,:)-avgcol)*(inv(cov(X))*(transpose((X(i,:)-avgcol))))/sqrt(2*pi*det(cov(X))));
end


plot3(X(:,1),X(:,2),p,'.');
xlabel('x')
ylabel('y')
zlabel('p(x,y)')
title('Gaussian Distribution')
%hold
%
%stem(X(:,1),p);
%hold on
%stem(X(:,2),p);