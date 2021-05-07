
wp=0.2*pi;
ws=0.3*pi;
ap=0.25;
as=50;
m1=(2*pi*3.3)/(ws-wp);
m2=(2*pi*5.5)/(ws-wp);
wc=(ws+wp)/2;
fc=wc/(2*pi);
fs=ws/(2*pi);
fp=wp/(2*pi);
n1=-32:1:33;

n2=-54:1:55;
for i=1:1:66
      hd1(i)=(2*fc*sin(wc*(i-33))/(wc*(i-33)));
      
    
end;
for i=1:1:110
      hd2(i)=(2*fc*sin(wc*(i-55))/(wc*(i-55)));
      
    
end;
hd1(1,33)=2*fc;
hd2(1,55)=2*fc;
subplot(2,3,1)
stem(n1,hd1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' hd(n) for Hamming window');
subplot(2,3,4)
stem(n2,hd2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' hd(n) for Blackmann window');

for i=1:1:66
      w1(i)= 0.54 + 0.46*cos(2*pi*(i-33)/(m1-1));
      
end;
for i=1:1:110
      w2(i)= 0.42 + 0.5*cos(2*pi*(i-55)/(m2-1))+ 0.08*cos(4*pi*(i-55)/(m2-1));
      
end;

subplot(2,3,2)
stem(n1,w1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' w(n) for Hamming Window');

h1=hd1.*w1;
subplot(2,3,3)
stem(n1,h1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' h(n)using Hamming');
subplot(2,3,5)
stem(n2,w2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' w(n) for Blackmann Window');

h2=hd2.*w2;
subplot(2,3,6)
stem(n2,h2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' h(n)using Blackmann');

figure;
subplot(2,3,1)
stem(n1+32,h1);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('  Causal h(n)using Hamming');

subplot(2,3,4)
stem(n2+54,h2);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Causal h(n)using Blackmann');
[h11,w11]=freqz(h1)
[h22,w22]=freqz(h2)
subplot(2,3,2)
plot(w11/2*pi,abs(h11));
title('Frequency Response of h1(n)')
xlabel('frequency')
ylabel('Gain')
subplot(2,3,5)
plot(w22/2*pi,abs(h22));
title('Frequency Response of h2(n)')
xlabel('frequency')
ylabel('Gain')
subplot(2,3,6)
plot(w22/(2*pi),angle(h22));
title('Phase Response of h2(n)')
xlabel('frequency')
ylabel('phase')

subplot(2,3,3)
plot(w11/(2*pi),angle(h11));
title('Phase Response of h1(n)')
xlabel('frequency')
ylabel('phase')

 
      
         
       

