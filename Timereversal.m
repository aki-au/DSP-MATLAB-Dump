m=-5:5;
a=zeros(size(m));
a(m>=1)=-1;
b=zeros(size(m));
b(m>=2)=-1;
c=zeros(size(m));
c(m>=3)=-1;
x=zeros(size(m));
x(m>=4)=-1;
x1=a+b+c-3*x;
subplot(4,1,1)
stem(m,x1);

x2=zeros(size(m));
x2(m==0)=0;
x2(m==1)=1;
x2(m==2)=2;
x2(m==3)=3;
x2(m==-1)=-1;
x2(m==-2)=-2;
subplot(4,1,2)
stem(m,x2);
y=x1+x2;
subplot(4,1,3)
stem(m,y);
y1=[fliplr(y(m>=0)) fliplr(y(m<0))];
subplot(4,1,4)
stem(m,y1);