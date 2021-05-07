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
l1=length(x1);
j=0;
for s1=1:1:l1
    g1(s1)=0;
    j=j+1;
    for i=1:l1
        if j<1
            j=l1;
        end
        g1(s1)=g1(s1)+x1(i)*hf(j);
        i=i+1;
        j=j-1;
    end
end
First_Part_Circular_convolution=g1;
First_Part_Circular_convolution
l2=length(x2);
j=0;
for s2=1:1:l2
    g2(s2)=0;
    j=j+1;
    for i=1:l2
        if j<1
            j=l2;
        end
        g2(s2)=g2(s2)+x2(i)*hf(j);
        i=i+1;
        j=j-1;
    end
end
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