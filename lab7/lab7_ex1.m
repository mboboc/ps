# Procesarea semnalelor
# Laborator 7

close all; clear all;

load('noisy_signal.mat')
N = 128;
fs = N;
t = linspace(0, 1, 128);
s = noisy_signal;
s_dft = zeros(1, fs);

# 1
figure 10;
plot(t, s);

# 2
for k = 1 : N
  for n = 1 : N
    s_dft(k) = s_dft(k) + s(n) * power(e, (-j * 2 * pi * (n - 1) * (k - 1))/N);
  endfor
endfor

figure 1
title ("DFT");
subplot(2,2, 1);
stem(abs(s_dft));

subplot(2,2, 2);
stem(fftshift(abs(s_dft)));


figure 2
title("FFT");
s_fft = (fft(s));
subplot(2,2, 1);
stem(abs(s_fft));

subplot(2,2, 2);
stem(fftshift(abs(s_fft)));

# 3
s_true = s_dft(1:10);
s_true = [s_true, s_dft(N-8:N)];

s_noise = s_dft;

pwr_true = 0;
pwr_noise = 0;
for k = 1 : length(s_true)
  pwr_true = pwr_true + power(abs(s_true(k)), 2);
endfor

for k = 1 : N
  pwr_noise = pwr_noise + power(abs(s_noise(k)), 2);
endfor

pwr_true = (1/length(pwr_true)) * pwr_true
pwr_noise = (1/length(pwr_noise)) * pwr_noise

snr = pwr_true/pwr_noise

# 4
snr_db = 10*log10(snr)

# 5
for k = 1 : N
  if (k > 9 && k < N - 9)
    s_dft(k) = 0;
  endif
endfor

# 6
s_idft = zeros(1, N);
for k = 1 : N
  for n = 1 : N
    s_idft(k) = s_idft(k) + s_dft(n) * power(e, (j * 2 * pi * (n - 1)* (k - 1))/N);
  endfor
endfor

s_idft = s_idft ./ N;

figure 3
plot(t, s_idft);

figure 4
plot(t, ifft(s_dft));
