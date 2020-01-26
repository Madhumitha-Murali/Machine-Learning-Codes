clc;
clear;

num=500;

a=-3+rand(1,num)*6;

sum=0;

for i=1:num
    sum=sum+a(i);
end

mean=sum/num;

disp(mean);

b=(a-mean).^2;

var=0;

for i=1:num
    
    var=var+b(i);
    
end

var=var/(num-1);
sd=sqrt(var);

for i=1:num
d(i)=1/(sqrt(2*pi)*sd)*exp(-1*((a(i)-mean)^2)/(2*var));
end

disp(d);

plot(a,d,'.');
xlabel('x')
ylabel('p(x)')
title('Normal Distribution')








