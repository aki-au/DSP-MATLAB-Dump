%DTFT Function
function[X]=DTFT(x,N)
symsw;
n=0:N-1;
f=x.exp(-1jw*n);
X=sum(f);
end