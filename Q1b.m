clc;
clear;

num=500;

arr=-3+rand(1,num)*6;

a=0;
b=1;

for i=1:num
    if((arr(i)>0)&&(arr(i)<1))
    out(i)=1/(b-a);
    
    else
      out(i)=0;
    end
end

plot(arr,out,'.');
axis equal

% plot(a,d,'.');
xlabel('x')
ylabel('p(x)')
title('Uniform Distribution')
