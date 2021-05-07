x1=[ 0 1 2 3 4 ];
x2=[ 0 1 0 0 0];
x1k=fft(x1,5);
x2k=fft(x2,5);
y1k= x1k .* x2k;
y1=ifft(y1k);
subplot(3,5,1);
stem(x1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' x1(n)');
subplot(3,5,2);
stem(x1k);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Real of X1(k)');
subplot(3,5,3);
stem(imag(x1k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Imaginary of X1(k)');
subplot(3,5,4);
stem(abs(x1k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Absolute of X1(k)');
subplot(3,5,5);
stem(angle(x1k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Angle of X1(k)');
subplot(3,5,6);
stem(x2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' x2(n)');
subplot(3,5,7);
stem(real(x2k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Real of X2(k)');
subplot(3,5,8);
stem(imag(x2k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Imaginary of X2(k)');
subplot(3,5,9);
stem(abs(x2k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Absolute of X2(k)');
subplot(3,5,10);
stem(angle(x2k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Angle of X2(k)');
subplot(3,5,11);
stem(y1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' y(n)');
subplot(3,5,12);
stem(y1k);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Real part of Y(k)');
subplot(3,5,13);
stem(imag(y1k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Imaginary part of Y(k)');
subplot(3,5,14);
stem(abs(y1k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Absolute part of Y(k)');
subplot(3,5,15);
stem(angle(y1k));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Angular part of Y(k)');