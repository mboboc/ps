# Lab4 - ex1

### 1. Original signal
clear all, close all
pi = 3,14;

T = 100;
A = 1;
k = 500;
kmax = k;
kmin = 0;
ck = zeros(1, k)

x = 1:T;
s = -A * ones(1, T);
s(1:(T/2)) = A;
#plot(x, s);
#ylim([-A-1, A+1]);
#xlabel("Time");
#ylabel("Amplitude");
#hold on;

### 2. Fourier coeficients
for i = 1 : k
  if (rem (i, 2) != 0)
    i
    ck(i) = 2 / (j * pi * i) * A;
  else
    ck(i) = 0; 
  endif
endfor

ck2 = abs(ck).^2
stem(1:k, ck2);

xlabel("Freq");
ylabel("Amplitude");

### 3. Rms
#rms = zeros(1, k)
#for n = 1 : k-1
#  rms(n) = sqrt(quad('signal', 0, T);
#end


