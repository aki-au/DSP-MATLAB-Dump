clc;
clear all;
Xn= [ 1 2 3 4 5 6 7 8 9 10];
Hn= [ 1 0 -1];
L=5;
subplot (3,1,1);
stem(Xn);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' X(n)');

subplot (3,1,2);
stem(Hn);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' H(n)');

NXn=length(Xn);
M=length(Hn);
M1=M-1;
R=rem(NXn,L);
N=L+M1;
Xn=[Xn zeros(1,L-R)];
Hn=[Hn zeros(1,N-M)];
K=NXn/L;
y=zeros(K+1,N);
z=zeros(1,M1);
for k=0:K
Xnp=Xn(L*k+1:L*k+L);
Xnk=[Xnp z];
y(k+1,:)=mycirconv(Xnk,Hn); 
end
p=L+M1;
for i=1:K
y(i+1,1:M-1)=y(i,p-M1+1:p)+y(i+1,1:M-1);
end
z1=y(:,1:L)';
y=(z1(:))'

subplot (3,1,3);
stem(y);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Convolved Signal');

