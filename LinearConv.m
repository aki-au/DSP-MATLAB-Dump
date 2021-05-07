x=[1 2 2 1];
o=0;
L= 4
h= [1 2 3];
p=0;
M=3

m=o+p;
N=L+M-1;
y=[zeros(1,N)];

for i=1:M
    for k=1:L
        a(i,k)=x(k)*h(i);
        y(i+k-1)=y(i+k-1)+a(i,k);
    end
end


a=o:o+L-1;
b=p:p+M-1;
c=m:N+m-1;
subplot(3,1,1);
stem(a,x);
subplot(3,1,2);
stem(b,h);
subplot(3,1,3);
stem(c,y);
