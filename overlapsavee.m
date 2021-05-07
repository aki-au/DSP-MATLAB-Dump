
x=[ 1 2 3 4 5 6 7 8 9 10];
h=[1 0 -1];
N=7;
subplot(2,2,1);
stem(x);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('X(n)');

subplot(2,2,2);
stem(h);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' H(n)');

lx=length(x);
lh=length(h);
m=lh-1;
x=[zeros(1,m) x zeros(1,N)];
h=[h zeros(1,N-lh)];
L=N-lh+1;
k=floor((length(h))/L);
for i=0:k
y=x(1,i*L+1:i*L+N);
q=mycirconv(y,h);  
p(i+1,:)=q;
end
p1=p(:,lh:N);
p=p1(:)

subplot(2,2,3);
stem(p,'red');
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Convolved Signal');
