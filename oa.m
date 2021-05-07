clc;
clear all;
close all;
n = 0:1:10;
x= [1 2 3 4 5 6 7 8 9 10];
h= [-1 0 1];
L= 5
M=length(h);
lx=length(x);
r=rem(lx,L);
x1=[x zeros(1,L-r)];
nr=length(x1)/L;
h1=[h zeros(1,L-1)];
for k=1:nr
    M1(k,:)=x1(((k-1)*L+1):k*L);
    M2(k,:)=[M1(k,:) zeros(1,M-1)];
    M3(k,:)=cconv(M2(k,:),h1);
    M4(k,:)=[zeros(1,(k-1)*L) M3(k,:) zeros(1,(nr-k)*L)];
end
y=sum(M4);
stem(y)