x=[1 2 3 4 5 6 7 8 9 10];
h=[1 0 -1];
m=length(h);
n=7;
l=n-m+1;
x1=[zeros(1,m-1),x(1:l)];
x2=x((l-(m-1)+1):(l-(m-1)+n));
hf=[h,zeros(1,n-m)];

First_Part=x1;
Second_Part=x2;

Adjusted_response=hf;

g1=fft(x1);
First_Part_Circular_convolution=g1;
First_Part_Circular_convolution
g2=fft(x2);
Second_Part_Circular_convolution=g2;
Second_Part_Circular_convolution
final_circular_convolution=[g1(((m-1)+1):n),g2(((m-1)+1):n)];
final_circular_convolution
subplot(3,1,1);
stem(x);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('X(n)');
subplot(3,1,2);
stem(h);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' H(n)');
subplot(3,1,3);
stem(final_circular_convolution);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Convolved Signal');