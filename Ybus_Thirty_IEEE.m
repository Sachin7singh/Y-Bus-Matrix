clear all
clc
tapdata30;
n=30;
fb=linedata14(:,1);
tb=linedata14(:,2);
r=linedata14(:,3);
x=linedata14(:,4);
s=linedata14(:,5);
a=linedata14(:,6);
Ybus=zeros(30,30);
Z=r+1i*x;
Y=1./Z;
y=1i*s/2;

for m=1:41
    Ybus(fb(m),tb(m))=Ybus(fb(m),tb(m))- Y(m)/a(m);
    Ybus(tb(m),fb(m)) = Ybus(fb(m),tb(m));
end

 for p=1:30  
     for q=1:41
     
    
 if fb(q)==p
   Ybus(p,p)=Ybus(p,p)+(Y(q)/(a(q)^2))+y(q);
       elseif tb(q)==p
    Ybus(p,p)=Ybus(p,p)+Y(q)+y(q);
 
           
       end 
  end 
 end
Ybus
