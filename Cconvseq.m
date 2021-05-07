N=8;
H=1;
h1=[H,zeros(1,N-1)];
X1=[zeros(1,N)];
for n=0:N-1
        a= cos((2*pi*n)/N)* sin((2*pi*n)/N);
        X1(n)=X1(n)+a;
end
 y1=cconv(x1,h1,N);   
t=0:7;
subplot(3,1,1);
stem(t,X1);
subplot(3,1,2);
stem(t,h1);
subplot(3,1,3);
stem(t,y1)