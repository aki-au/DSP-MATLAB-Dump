clc;
close all;
clear all;
fp=input('Enter passband frequency:')
fs=input('Enter stopband frequency:')
f=1000
d1=input('passband attenuation:')
d2=input('stopband attenuation:')
wp=(2*pi*fp)/f
ws=(2*pi*fs)/f
t=1/f
wpp=2*tan(wp/2)/2
wsp=2*tan(ws/2)/2
[n,wn]=buttord(wpp,wsp,d1,d2,'s')
[z,p,k]=buttap(n)
[b1,a1]=zp2tf(z,p,k)
[b2,a2]=lp2hp(b1,a1,wn)
[b3,a3]=bilinear(b2,a2,f)
figure;
n=0:0.01:pi

[h,w]=freqz(b3,a3,n)
subplot(2,1,1)
plot(w/pi,20*log10(abs(h)))
title('BUTTERWORTH HPF USING BILINEAR TRANSFORMATION MAGNITUDE RESPONSE')
xlabel('frequency')
ylabel('Gain')
subplot(2,1,2)
plot(w/pi,angle(h))
title('PHASE RESPONSE')
xlabel('frequency')
ylabel('phase')




