clc;
clear all;
w=[0 0 0];
x1=[1 0 0;1 -1 0;1 0 1];
x2=[1 -1 1;1 0 2;1 -2 0];
d1=1;
d2=-1;
n=0.8;
 e1=ones(1,3);
 e2=ones(1,3);
h=0;
while((sum(e1)~=0)&&(sum(e2)~=0))
    h
    disp('1')
for i=1:3
    v=w*x1(i,:)';
    y=sign(v);
    e1(1,i)=d1-y;
    w=w+(d1-y)*n.*x1(i,:)
end
disp('2')
for i=1:3
    v=w*x2(i,:)';
    y=sign(v);
    e2(1,i)=d1-y;
    w=w+(d2-y)*n.*x2(i,:)
end
h=h+1;
end
h
w
