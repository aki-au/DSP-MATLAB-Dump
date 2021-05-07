clc;
clear all;
n = 0:1:10;
x= [1 2 3 4 5 6 7 8 9 10];
h= [-1 0 1];
L= 5
M=length(h);

subplot (2,1,1);
stem(x);
xlabel ('Sample Number n');
ylabel ('Amplitude');
title('X(n)');

subplot (2,1,2);
stem(h);
xlabel ('Sample Number n');
ylabel ('Amplitude');
title(' H(n)');

Lx=length(x);
r=rem(Lx,L);
x1=[x,zeros(1,L-r)];
nr=(length(x1))/L;
h1=[h,zeros(1,L-1)];
for k = 1:nr
    f (k,:) = x1 ((k-1)*L+1 : k*L )
    if k == 1
        f1(k ,:) = [(zeros (1,(M-1))) , f(k,:)]
    else 
        f1 (k,:) = [(f(k-1 , L-M+2:L)) , f(k,:)]
    end
    f2(k,:) = cconv ( f1(k,:) , h1, 5)
   
end
y2=f2(:,M:(L+M-1))
y1=y2';
y=y1(:)';
figure (2)
stem (y)
stem(y);
