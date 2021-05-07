N=16;
x1=zeros(size(N));
y1=zeros(size(N));
for n=1:N
    x1(n)=sum(cos(2*pi*(n-1))/N)*sin((2*pi*(n-1)/N));
end;
k=[0:N-1];
subplot(3,1,1);
stem(k,x1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('X1(n)');
m=[0:N-1];
x2=zeros(size(m));
x2(m>=0)=1;
subplot(3,1,2);
stem(m,x2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('X2(n)');
cc=cconv(x1,x2,N);
subplot(3,1,3);
stem(k,-cc);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Y(n)');

    