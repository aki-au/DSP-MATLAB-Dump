clc;
close all;
clear all;
fp1=input('Enter passband frequency1:')
fp2=input('Enter passband frequency2:')
fs1=input('Enter stopband frequency1:')
fs2=input('Enter stopband frequency2:')
f=1000
d1=input('passband attenuation:')
d2=input('stopband attenuation:')
wpp1=(2*pi*fp1)
wpp2=(2*pi*fp2)
wsp1=(2*pi*fs1)
wsp2=(2*pi*fs2)
wpp=[wpp1 wpp2]
wsp=[wsp1 wsp2]
w0=sqrt(wpp1*wpp2)
[n,wn]=buttord(wpp,wsp,d1,d2,'s')
bw=(wn(2)-wn(1))
[z,p,k]=buttap(n)
[b1,a1]=zp2tf(z,p,k)
[b2,a2]=lp2bs(b1,a1,w0,bw)
[b3,a3]=impinvar(b2,a2,f)
figure;
n=0:0.01:pi
[h,w]=freqz(b3,a3,n)
subplot(2,1,1)
plot(w/pi,20*log10(abs(h)))
title('BUTTERWORTH BSF USING IMPULSE TRANSFORMATION MAGNITUDE RESPONSE')
xlabel('frequency')
ylabel('Gain')
subplot(2,1,2)
plot(w/pi,angle(h))
title('PHASE RESPONSE')
xlabel('frequency')
ylabel('phase')