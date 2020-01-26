clear;
clc;

s=randi(50,[1,500]);
l=20;

for i=1:500
    fact=1;
    j=1;
     for j=1:s(i)
        fact=fact*j;
    end
    p(i)=l^s(i)*exp(-l)/fact

    
end

plot(s,p,'.');

%plot(a,p,'.');
xlabel('x')
ylabel('p(x)')
title('Poisson Distribution')