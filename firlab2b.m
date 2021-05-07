b2 = fir1(109,0.25, blackman(110));
%hd = dfilt.dffir(b2);
freqz(b2);
title('FIR LPF using Blackman Window')