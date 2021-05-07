ws1=0.2*pi;
wp1=0.35*pi;
n=ceil((2*pi*5.5)/(wp1-ws1));
b2 = fir1(n-1,[0.35 0.65], blackman(n));
%hd = dfilt.dffir(b2);
freqz(b2);
title('FIR BPF using Hamming Window')