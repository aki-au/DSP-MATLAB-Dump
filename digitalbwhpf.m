clc;
clear all;
close all;
rp=input('enter passband ripple')
rs=input('enter stopband ripple')
wp=input('enter passband freq')
ws=input('enter stopband freq')
fs=input('sampling frequency')
w1=2*wp/fs
w2=2*ws/fs
[n,wn]=buttord(w1,w2,rp,rs)
[b,a]=butter(n,wn,'high')
w=0:0.01:pi
[h,om]=freqz(b,a,w)
m=20*log10(abs(h))
an=angle(h)
subplot(2,1,1)
plot(om/pi,m)
xlabel('normalized freq')
ylabel('Gain')
title(' Butterworth HPF Magnitude response')
subplot(2,1,2)
plot(om/pi,an)
xlabel('normalized freq')
ylabel('Gain')
title('Phase response')