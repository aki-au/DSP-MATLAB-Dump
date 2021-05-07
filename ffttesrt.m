x=[1 2 3];
h=[2 3];
l=3;
x1=[ x, zeros(1:(l-3)+1)];
h1=[ h, zeros(1:(l-2)+1)];
y=cconv(x1,h1,l);
z=ifft(fft(x1).*fft(h1));

    