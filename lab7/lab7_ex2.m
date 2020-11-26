# Procesarea semnalelor
# Laborator 7

clear all; close all;

S = load('noisy_sound.mat');
s = S.noisy_sound;
fs = S.fs;
t = linspace(0, 3, 24000);
[row, N] = size(s);

figure 1
plot(t, s);

s_fft = fft(s);
stem(abs(s_fft))
true_freq = zeros(1, N);

idx_true = 1;
for k = 1 : N
  true_freq = k * fs / N;
  if (true_freq > 500)
    s_true(idx_true) = s_fft(k);
  endif
  idx_true++;
endfor

s_noise = s_fft;

pwr_true = 0;
pwr_noise = 0;
for k = 1 : length(s_true)
  pwr_true = pwr_true + power(abs(s_true(k)), 2);
endfor

for k = 1 : N
  pwr_noise = pwr_noise + power(abs(s_noise(k)), 2);
endfor

pwr_true = (1/N) * pwr_true
pwr_noise = (1/N) * pwr_noise

snr = pwr_true/pwr_noise

snr_db = 10*log10(snr)

# filter
for k = 1 : N
  true_freq = k * fs / N;
  if (true_freq > 500)
   s_fft(k) = 0;
  endif
endfor

sound(ifft(s));

