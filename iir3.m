n=-100:1:100;
x=cos(5*n)+cos(1000*n)+cos(50*n)+cos(20*n)
fp = 120
fs = 170
%d1 = 0.89 %passband
%d2 = 0.2 %attenuation
%d1db = 20*log10 (d1)
%d2db = 20*log10 (d2)
d1db=3
d2db=16

Fs=512;
ws = (2*pi*fs)/Fs
wp =(2*pi*fp)/Fs
[N, wn] = buttord(wp,ws,d1db,d2db,'s')
[A,B]=butter(N,wn,'s')
[a,b] = impinvar(A,B,Fs)
y = filter(b,a,x)
subplot(2,1,1);
stem(n,x);
subplot(2,1,2);
stem(n,y);
