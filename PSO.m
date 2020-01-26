clc;
clear all;

% rng(0,'twister');
w=1;
c1=0.5;
c2=0.75;
t=10000;%no. of iterations
a = 0;
b = 2*pi;
x = (b-a).*rand(1,10) + a
v = (b-a).*rand(1,10) + a
fx=ones(1,10);
y=0;
i=0;
pbest=x;
gbest=0;

for j=1:t
    
for i=1:10
    fx(i)=sin(x(i));
end


[y,i]=min(fx);
gbest=x(i);

for i=1:10
v(i)=w*v(i)+c1*rand()*(pbest(i)-x(i))+c2*rand()*(gbest-x(i));
x(i)=x(i)+v(i);
end

end


x1=x./(pi);
v1=v./(pi);

sin(gbest)

asin(sin(gbest))


