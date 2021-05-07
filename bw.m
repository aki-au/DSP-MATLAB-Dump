fp = 30
fs = 75
d1 = 0.89 %passband
d2 = 0.2 %attenuation
d1db = 20*log10 (d1)
d2db = 20*log10 (d2)
wp = 2*pi*fp
ws = 2*pi*fs
[N, wn] = buttord(wp,ws,d1db,d2db,'s')
[z, p,k]=buttap(N)
[a1,b1] = zp2tf(z,p,k)
[a2,b2] = lp2lp(a1,b1,wn)
%figure(1)
[h,w] = freqs(a2,b2)
subplot (2,1,1)
plot (w/(2*pi),abs(h),'linewidth',2,'color','k')
title({'butterworth lpf','magnitude response'},'fontweight','bold')
subplot(2,1,2)
plot(w/(2*pi),angle(h),'linewidth',2,'color','k')
title('phase response','fontweight','bold')