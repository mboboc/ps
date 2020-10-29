# Lab4 - ex2

### 1 Semnal puls
clear
A = 1;
T = 100;
x = 1 : T;
dt = T / 5;

for i = 1 : T
  if i < dt
    s(i) = A;
  else
    s(i) = 0;
  endif
endfor


#figure;
#plot(x, s);
#ylim([-A - 1, A + 1]);

#xlabel('Time');
#ylabel('Amplitude');


### 2 Primii n coeficienti ck 
k = 30;
ck = zeros(1, k)

for i = 0 : k
  ck(i+1) = e ^ ((-1) * j * pi * i * dt / T) * dt / T * sinc(pi * i * dt / T);
end

#stem(0:k,ck);
#xlabel('Frequency (k)');
#ylabel('Amplitude');

### 3 Semnal output - coeficienti Fourier
cky = zeros(1, k)

fc = 1/10*T;
#fc = 1/T;
#fc = 10/T;


for i = 0 : k
  # functia de transfer
  h = 1 / (1 + i * (2 / fc) * (i / T));
  cky(i + 1) = h * ck(i + 1);
end

# stem(0:k, abs(cky));
# xlabel('');
# ylabel('Magnitude');

#4 Reconstruire semnal

T = 100;
x = 1:T;
A = 1;

for i = 1:T;
  s(i) = 0;
  for it = 0:k
    s(i) += cky(it + 1) * e^(j * ((2 * pi * it * i)/T));
  end
  for it = 0:k
    p = (-1) * it;
    s(i) += conj(cky(it + 1)) * e^(j * ((2 * pi * p * i)/T));
  end
end

plot(x,s);
ylim([-A - 1; A + 1]);
xlabel('Time');
ylabel('Amplitude');

