t=0:0.01:2*pi
x=sin(2*pi*5*t)+sin(2*pi*200*t)
X=abs(fft(x))
subplot(3,1,1)
plot(x);
subplot(3,1,2)
plot(X)