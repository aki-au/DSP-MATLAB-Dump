clc;
close all;
clear all;
fp1=input('Enter passband frequency1:')
fp2=input('Enter passband frequency2:')
fs1=input('Enter stopband frequency1:')
fs2=input('Enter stopband frequency2:')
f=500
t=1/f
d1=input('passband attenuation:')
d2=input('stopband attenuation:')
wp1=(2*pi*fp1)/f
wp2=(2*pi*fp2)/f
ws1=(2*pi*fs1)/f
ws2=(2*pi*fs2)/f
wpp1=2*tan(wp1/2)/t
wpp2=2*tan(wp2/2)/t
wsp1=2*tan(ws1/2)/t
wsp2=2*tan(ws2/2)/t
wpp=[wpp1 wpp2]
wsp=[wsp1 wsp2]
w0=sqrt(wpp1*wpp2)
[n,wn]=cheb1ord(wpp,wsp,d1,d2,'s')
bw=(wn(2)-wn(1))
[z,p,k]=cheb1ap(n,3)
[b1,a1]=zp2tf(z,p,k)
[b2,a2]=lp2bp(b1,a1,w0,bw)
[b3,a3]=bilinear(b2,a2,f)
figure;
n=0:0.01:pi
[h,w]=freqz(b3,a3,n)
subplot(2,1,1)
plot(w/pi,20*log10(abs(h)))
title('CHEBYSHEV BPF USING BILINEAR TRANSFORMATION MANITUDE RESPONSE')
xlabel('frequency')
ylabel('Gain')
subplot(2,1,2)
plot(w/pi,angle(h))
title('PHASE RESPONSE')
xlabel('frequency')
ylabel('phase')