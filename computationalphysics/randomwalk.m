clear all
close all
x_coord=0;
y_coord=0;
z_coord=0;
l=10;
y=10000;
arr=zeros(y,1);
arr2=zeros(y,1);
arr3=zeros(y,1);
dis=zeros(y,1);
r=rand(1,y*10);
r=r*3;
n=y*10;
for k=1:n
     if(r(1,k)<0.5&&r(1,k)>=0)
          x_coord=x_coord+1;
     elseif(r(1,k)<1&&r(1,k)>=0.5)
          y_coord=y_coord+1;
     elseif(r(1,k)<1.5&&r(1,k)>=1)
          x_coord=x_coord-1;
     elseif(r(1,k)<2&&r(1,k)>=1.5)
          y_coord=y_coord-1;
     elseif(r(1,k)<2.5&&r(1,k)>=2)
          z_coord=z_coord-1;
     elseif(r(1,k)<3&&r(1,k)>=2.5)
          z_coord=z_coord+1;
     end
     if(l==k)
       arr(round(l/10))=x_coord;
       arr2(round(l/10))=y_coord;  
       arr3(round(l/10))=z_coord;  
       dis(round(l/10))=(x_coord^2+y_coord^2+z_coord^2);
       l=l+10;
     end
end
k=1:y;
plot(k,dis);
figure(2)
comet3(arr,arr2,arr3);