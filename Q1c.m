clc;
clear;

num=500;

a=-3+rand(1,num)*6

l=2; %lambda value = 2

for i=1:num
    if(a(i)>0)
    p(i)=l*exp(-1*l*a(i))
    
    else
        p(i)=0
    end
end

plot(a,p,'.');
xlabel('x')
ylabel('p(x)')
title('Exponential Distribution')

