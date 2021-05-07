t=-10:1:10;
u=t==0;
subplot(4,1,1);
stem(t,u);
u=t>=0;
subplot(4,1,2)
stem(t,u);
ramp_n=(t>=0).*t;

subplot(4,1,3)

stem(t,ramp_n);
y=sin(2*pi*t);
subplot(4,1,4)
stem(t,y);