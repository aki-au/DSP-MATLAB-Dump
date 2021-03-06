f=0.25;
F=1;
A=10;
t=0:0.25:3;
x1=cos(2*pi*f*t);
y1=fft(x1);
n=0:1:7;
x1s=cos(2*(f/F)*pi*n);
y1s=fft(x1s);
subplot(2,5,1);
stem(x1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' x1(n)');
subplot(2,5,2);
stem(real(y1));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Real of Y1');
subplot(2,5,3);
stem(imag(y1));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Imaginary of Y1');
subplot(2,5,4);
stem(abs(y1));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Absolute of Y1');
subplot(2,5,5);
stem(angle(y1));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Angle of Y1');
subplot(2,5,6);
stem(x1s);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' x1s(n)');
subplot(2,5,7);
stem(real(y1s));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Real of Y1S');
subplot(2,5,8);
stem(imag(y1s));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Imaginary of Y1S');
subplot(2,5,9);
stem(abs(y1s));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Absolute of Y1S');
subplot(2,5,10);
stem(angle(y1s));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Angle of Y1S');


