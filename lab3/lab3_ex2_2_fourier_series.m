clear , close all;
k = 100;
interval = -k:k
kmax = k;
kmin = -k;
ck = zeros(1,2*k)
A = 3;

for i = kmin:kmax
  if i < 0
    A = -3;
  else
    A = 3;
  endif
  
  if (rem (i, 2) != 0)
    ck(i + k + 1) = 2 / (j*pi*i) * A;
  else
    ck(i + k + 1) = 0; 
  endif
endfor
  # stem(abs(ck));

s = zeros(1, 2*k + 1); 
s(1) = ck(1)* e^(j * 2 * pi * i) / kmin ; 
for i = kmin + 1:kmax
  s(i + k + 1) = s(i + k + 1) + ck(i + k + 1) * (e^(j * 2 * pi * i) / k);
endfor
plot(interval, real(s));
