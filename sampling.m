t=-1:0.01:1;
x1=cos(6*pi*t);
x2=cos(14*pi*t);
x3=cos(26*pi*t);
n=-1:0.1:1;
x1s=cos(0.6*pi*n);
x2s=cos(1.4*pi*n);
x3s=cos(2.6*pi*n);
x1s1=cos(1.2*pi*n);
x2s2=cos(2.8*pi*n);
x3s3=cos(5.2*pi*n);

subplot(3,3,1);
plot(t,x1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' x1(t))');
subplot(3,3,2);
stem(n,x1s);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Sampling at T=0.1s');
subplot(3,3,3);
stem(n,x1s1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Sampling at T=0.2s');

subplot(3,3,4);
plot(t,x2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' x2(t))');
subplot(3,3,5);
stem(n,x2s);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Sampling at T=0.1s');

subplot(3,3,6);
stem(n,x2s2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Sampling at T=0.2s');
subplot(3,3,7);
plot(t,x3);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' x3(t))');
subplot(3,3,8);
stem(n,x3s);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Sampling at T=0.1s');
subplot(3,3,9);
stem(n,x3s3);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Sampling at T=0.2s');
