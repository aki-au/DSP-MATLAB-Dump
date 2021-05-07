x1=[ 0 0 0 0 1 1 1 1];

y1=fft(x1)
subplot(5,1,1);
stem(x1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' x1(n)');
subplot(5,1,2);
stem(real(y1));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Real part of y(n)');
subplot(5,1,3);
imagi=imag(y1)
stem(imagi);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Imaginary part of y(n)');
subplot(5,1,4);
ab=abs(y1);
stem(ab);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Absolute part of y(n)');
subplot(5,1,5);
stem(angle(y1));
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' Angular part of y(n)');