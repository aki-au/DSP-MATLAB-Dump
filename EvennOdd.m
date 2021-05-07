n=-20:1:20;
u=n>=0;
x1=stem(n,u);
subplot(3,1,1);
stem(n,u);
d=-n
d=n<=0;
x2=stem(d,u);
subplot(3,1,2);
stem(-1*n,u);

e[n]=x1[n]+x2[n];
o[n]=x1[n]-x2[n];