#1
A = 1;
T = 100;
x = 1:T;
dt = T / 5;

for k = 1:T
  if k < dt
    s(k) = A;
  else
    s(k) = 0;
  endif
endfor


figure;
plot(x, s);
ylim([-A - 1, A + 1]);

xlabel('Time');
ylabel('Amplitude');

#2

kmax = 30;
k = [0:30];

idx=0;
for l = 0:kmax
  idx++;
  ck(idx) = e ^ ((-1) * j * pi * l * dt / T) * dt / T * sinc(pi * l * dt / T);
end


figure;
stem(k,ck);
xlabel('Frequency (k)');
ylabel('Amplitude');

#3
#fc = 1/10*T;
fc = 1/T;
#fc = 10/T;
idx=0;
for l = 0:kmax
  idx++;
  h = 1 / (1 + i * (2/fc) * (l/T));
  cky(idx) = h * ck(idx);
end

figure;
stem(k, abs(cky));
xlabel('N');
ylabel('Magnitude');

#4

T = 100;
x = 1:T;
A = 1;
idx = 0;

for l = 1:T;
  s(l) = 0;
  for j = 0:kmax
    s(l) += cky(j + 1) * e^(i * ((2 * pi * j * l)/T));
  end
  for j = 0:kmax
    p = (-1) * j;
    s(l) += (-1) *cky(j + 1) * e^(i * ((2 * pi * p * l)/T));
  end
end

figure;
plot(x,s);
ylim([-A-1; A + 1]);
xlabel('Time');
ylabel('Amplitude');