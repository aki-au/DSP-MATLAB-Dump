h= [1 2 3];
x=[1 2 2 1];

L= 4
M= 3

N=max(L,M);
X=[x,zeros(1,N-L)];
H=[h,zeros(1,N-M)];
Y=[zeros(1,N)];

for n=1:N
    for m=1:N
        if(n-m<0)
            k=N+n-m+1;
        else
            k=n-m+1;
        end
        Y(n)=Y(n)+(X(k)*H(m));
    end
end
t=0:N-1;
subplot(3,1,1);
stem(t,X);
subplot(3,1,2);
stem(t,H);
subplot(3,1,3);
stem(t,Y)