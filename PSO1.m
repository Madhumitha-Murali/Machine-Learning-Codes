clc;
clear all;

w=1;
c1=0.25;
c2=0.025;
t=100;%no. of iterations
x = randi(100,[1 10]);
v = randi(100,[1 10]);

for i=1:10
a=rand();

if(a>0.5)
    b=1;
else b=0;
end

x(i)=x(i)*((-1)^b);

end

x

fx=ones(1,10);
for i=1:10
fx(i)=10000;
end
 y=0; i=0; n=0;
 pbest=x;
 gbest=0;

for j=1:t
    
for i=1:10
    n=abs(x(i));
    fx(i)=n*(n+1)*(2*n+1)/6;
end


[y,i]=min(fx);
gbest=x(i);

for i=1:10
v(i)=w*v(i)+c1*rand()*(pbest(i)-x(i))+c2*rand()*(gbest-x(i));
x(i)=x(i)+v(i);
end

end


abs(gbest)



