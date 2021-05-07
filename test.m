
t=-5:5;
a=zeros(size(t));
a(t>=1)=-1;
b=zeros(size(t));
b(t>=2)=-1;
c=zeros(size(t));
c(t>=3)=-1;
x=zeros(size(t));
x1(t>=4)=1;
x=a+b+c-3*x1;

xmt=[fliplr(x(t>=0)) fliplr(x(t<0))]
xe=0.5*(xmt+x)
xo=0.5*(x-xmt)
subplot(3,1,1);
stem(t,x);

subplot(3,1,2);
stem(t,xe);

subplot(3,1,3);
stem(t,xo);
