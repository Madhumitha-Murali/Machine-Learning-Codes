clc;
clear all;
close all;
m=[0,0]';
COV1=[1 0;0 1];
COV2=[0.2 0;0 0.2];
COV3=[2 0;0 2];
COV4=[0.2 0;0 2];
COV5=[2 0;0 0.2];
COV6=[1 0.5;0.5 1];
COV7=[0.3 0.5;0.5 2];
COV8=[0.3 -0.5;-0.5 2];
i=0;
while i<=500
    x1=-3+6*rand(2,1);
    y1=transpose(x1-m);
    z1=inv(COV1)
    p1=(1/(2*pi*det(COV1)^(0.5)))*exp(-0.5*y1*z1*(x1-m));
    if p1>0.05
        i=i+1;
        s1(i,:)=x1
    end 
end
subplot(4,2,1)
plot(s1(:,1),s1(:,2),'.')
axis equal
axis([-2 2 -2 2])
i=0;
while i<=500
    x2=-3+6*rand(2,1);
    y2=transpose(x2-m);
    z2=inv(COV2)
    p2=(1/(2*pi*det(COV2)^(0.5)))*exp(-0.5*y2*z2*(x2-m));
    if p2>0.05
        i=i+1;
        s2(i,:)=x2
    end 
end
subplot(4,2,2)
plot(s2(:,1),s2(:,2),'.')
axis equal
axis([-2 2 -2 2])
i=0;
while i<=500
    x3=-3+6*rand(2,1);
    y3=transpose(x3-m);
    z3=inv(COV3)
    p3=(1/(2*pi*det(COV3)^(0.5)))*exp(-0.5*y3*z3*(x3-m));
    if p3>0.05
        i=i+1;
        s3(i,:)=x3
    end 
end
subplot(4,2,3)
plot(s3(:,1),s3(:,2),'.')
axis equal
axis([-2 2 -2 2])
i=0;
while i<=500
    x4=-3+6*rand(2,1);
    y4=transpose(x4-m);
    z4=inv(COV4)
    p4=(1/(2*pi*det(COV4)^(0.5)))*exp(-0.5*y4*z4*(x4-m));
    if p4>0.05
        i=i+1;
        s4(i,:)=x4
    end 
end
subplot(4,2,4)
plot(s4(:,1),s4(:,2),'.')
axis equal
axis([-2 2 -2 2])
i=0;
while i<=500
    x5=-3+6*rand(2,1);
    y5=transpose(x5-m);
    z5=inv(COV5)
    p5=(1/(2*pi*det(COV5)^(0.5)))*exp(-0.5*y5*z5*(x5-m));
    if p5>0.05
        i=i+1;
        s5(i,:)=x5
    end 
end
subplot(4,2,5)
plot(s5(:,1),s5(:,2),'.')
axis equal
axis([-2 2 -2 2])
i=0;
while i<=500
    x6=-3+6*rand(2,1);
    y6=transpose(x6-m);
    z6=inv(COV6)
    p6=(1/(2*pi*det(COV6)^(0.5)))*exp(-0.5*y6*z6*(x6-m));
    if p6>0.05
        i=i+1;
        s6(i,:)=x6
    end 
end
subplot(4,2,6)
plot(s6(:,1),s6(:,2),'.')
axis equal
axis([-2 2 -2 2])
i=0;
while i<=500
    x7=-3+6*rand(2,1);
    y7=transpose(x7-m);
    z7=inv(COV7)
    p7=(1/(2*pi*det(COV7)^(0.5)))*exp(-0.5*y7*z7*(x7-m));
    if p7>0.05
        i=i+1;
        s7(i,:)=x7
    end 
end
subplot(4,2,7)
plot(s7(:,1),s7(:,2),'.')
axis equal
axis([-2 2 -2 2])
i=0;
while i<=500
    x8=-3+6*rand(2,1);
    y8=transpose(x8-m);
    z8=inv(COV8)
    p8=(1/((2*pi*det(COV8))^(0.5)))*exp(-0.5*y8*z8*(x8-m));
    if p8>0.05
        i=i+1;
        s8(i,:)=x8
    end 
end
subplot(4,2,8)
plot(s8(:,1),s8(:,2),'.')
axis equal
axis([-2 2 -2 2])







  