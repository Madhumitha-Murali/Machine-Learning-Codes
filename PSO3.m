clc;
clear all;

w=1;
c1=0.25;
c2=0.025;
t=100000;%no. of iterations

x = 0.28+rand(10,20); %Swarm size = 10
v = 0.28+rand(10,20);


for i=1:10
    
    for j=1:20
        
a=rand();

if(a>0.5)
    b=1;
else b=0;
end

x(i,j)=x(i,j)*((-1)^b);

    end

end


fx=zeros(10);
pbest=ones(10);

for i=1:10
fx(i)=0;
pbest(i)=10000;
end

gbest=10000;

 %y=0; i=0; n=0;
 
 
 for j=1:t
     
   
         fx=zeros(10,1);
    
     
     for l=1:10
     for k=1:20
         fx(l)=fx(l)+(k*(x(l,k)^4))+rand();
         
     end
     
     
     if(pbest(l)>fx(l))
         pbest(l)=fx(l);
     end
     
     
     if(gbest>pbest(l))
         gbest=pbest(l);
         
     end
     end
     
     
     for l=1:10
     for k=1:20
     v(l,k)=w*v(l,k)+c1*rand()*(pbest(l)-x(l,k))+c2*rand()*(gbest-x(l,k));
     x(l,k)=x(l,k)+v(l,k);
     
     if(x(l,k)>1.28)
         x(l,k)=1.28;
     end
     
     if(v(l,k)>1.28)
         v(l,k)=1.28;
     end
     end
     end
     
 end

     
           

 gbest

