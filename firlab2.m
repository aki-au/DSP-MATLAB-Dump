b1 = fir1(65,0.2,'low');
hd = dfilt.dffir(b1);
freqz(hd);
title('FIR LPF using Hamming Window')


