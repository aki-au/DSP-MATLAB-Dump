A=5;
n=-10:1:10;
y=A*cos(5*n);
subplot(3,1,1);
stem(n,y);

y1=A*cos(1.5* pi *n);
subplot(3,1,2);
stem(n,y1);

w1=2;
w2=3;
w3=1;
L1=lcm(w1,w2);
L=lcm(L1,w2);
y2= A*(cos(L*pi*n))
subplot(3,1,3)
stem(n,y2);