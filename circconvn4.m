n=0:3;
h= [1 2 3];
x=[1 2 2 1];
for i=1:3
    a=h(1,i);
    b=circshift(x,i-1,2);
    y1(i,:)=a*b;
end;
y=sum(y1(:,:));
stem(n,y);