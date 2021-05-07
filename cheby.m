d1 = 2.5 %passband
d2 = 30 %stopband
wp = 20
ws = 50
[N,wn] = cheb1ord(wp,ws,d1,d2,'s')
disp (wn)
[z,p,k] = cheb1ap(N,d2)
[a1,b1] = zp2tf (z,p,k)
[a2,b2] = lp2lp (a1,b1,wn)
%figure(1)
[h,w] = freqs(a2,b2)
subplot(2,1,1)
plot (w/(2*pi),abs(h),'linewidth',2,'color','k')
title({'chebyshev lpf','magnitude response'},'fontweight','bold')
subplot(2,1,2)
plot(w/(2*pi),angle(h),'linewidth',2,'color','k')
title('phase response','fontweight','bold')