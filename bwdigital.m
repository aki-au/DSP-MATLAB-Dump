fp = 120
fs = 170
%d1 = 0.89 %passband
%d2 = 0.2 %attenuation
%d1db = 20*log10 (d1)
%d2db = 20*log10 (d2)
d1db=3
d2db=16
Fs=512
Wp =(2*pi*fp)/Fs
Wpi =(2*pi*fp)
Ws = (2*pi*fs)/Fs
Wsi = (2*pi*fs)
Ws1=tan(Ws/2);
Wp1=tan(Wp/2);
wp=1;
ws=Ws1/Wp1;
[N, wn] = buttord(wp,ws,d1db,d2db,'s')
[N1, wn1] = buttord(Wp,Ws,d1db,d2db,'s')% no prewarping
[z, p,k]=butter(N,wn,'s')
[z1, p1,k1]=butter(N1,wn1,'s')% no prewarping
[a1,b1] = zp2tf(z,p,k)
[A1,B1] = zp2tf(z1,p1,k1)% no prewarping
[a2,b2] = lp2lp(a1,b1,wn)
[A2,B2] = lp2lp(A1,B1,wn1)% no prewarping
[a3,b3] = bilinear(a2,b2,Fs)%bilinear
[a4,b4] = impinvar(A2,B2,Fs)%impulse invariance
%figure(1)
%[h,w] = freqs(a2,b2)
%subplot (3,2,1)
%plot (w/(2*pi),abs(h),'linewidth',2,'color','k')
%title({' Analog butterworth lpf','magnitude response'},'fontweight','bold')
%subplot(3,2,2)
%plot(w/(2*pi),angle(h),'linewidth',2,'color','k')
%title('phase response','fontweight','bold')
[H1,W1] = freqz(a3,b3)
Hdb1=20*(log10(abs(H1)));
subplot (2,2,1)
plot (W1/(2*pi),Hdb1,'linewidth',2,'color','k')
title({' Digital butterworth lpf using Bilinear','magnitude response'},'fontweight','bold')
ax = gca;
n=0.0:0.1:1
ax.XTick = [n];
subplot(2,2,2)
plot(W1/(2*pi),angle(H1),'linewidth',2,'color','k')
title('phase response','fontweight','bold')
ax = gca;
ax.XTick = [-3*pi,-2*pi,-pi,0,pi,2*pi,3*pi];
ax.YTick = [-1,-0.5,0,0.5,1];
[H2,W2] = freqz(a4,b4)
Hdb2=20*(log10(abs(H2)));
subplot (2,2,3)
plot (W2/(2*pi),Hdb2,'linewidth',2,'color','k')
title({' Digital butterworth lpf using Impulse','magnitude response'},'fontweight','bold')

subplot(2,2,4)
plot(W2/(2*pi),angle(H2),'linewidth',2,'color','k')
title('phase response','fontweight','bold')