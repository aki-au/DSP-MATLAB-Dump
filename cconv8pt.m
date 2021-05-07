n=0:5;
h1=[1 1 1 1 0 0 ];
x1= sin((3*pi*n)/8)
y1=cconv(h1,x1,6);
x2=(1/4).^n;
h2= cos((3*pi*n)/8);
y2=cconv(h2,x2,6);
subplot(2,3,1);

stem(n,x1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('X1(n)');
set(gca,'XTick',n)
subplot(2,3,2);
stem(n,h1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('h1(n)');
subplot(2,3,3);
stem(n,y1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Y1(n)');
subplot(2,3,4);
stem(n,x2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('X2(n)');
subplot(2,3,5);
stem(n,h2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('h2(n)');
subplot(2,3,6);
stem(n,y2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Y2(n)');
