clc;
close all;
clear all;
fp=input('Enter passband frequency:')
fs=input('Enter stopband frequency:')
f=1000
d1=input('passband attenuation:')
d2=input('stopband attenuation:')
wpp=(2*pi*fp)
wsp=(2*pi*fs)
[n,wn]=buttord(wpp,wsp,d1,d2,'s')
[z,p,k]=buttap(n)
[b1,a1]=zp2tf(z,p,k)
[b2,a2]=lp2lp(b1,a1,wn)
[b3,a3]=impinvar(b2,a2,f)
figure;
n=0:0.01:pi

[h,w]=freqz(b3,a3,n)
subplot(2,1,1)
plot(w/pi,20*log10(abs(h)))
title('BUTTERWORTH LPF USING IMPULSE TRANSFORMATION MAGNITUDE RESPONSE')
xlabel('frequency')
ylabel('Gain')
subplot(2,1,2)
plot(w/pi,angle(h))
title('PHASE RESPONSE')
xlabel('frequency')
ylabel('phase')