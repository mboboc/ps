load('lab05_modulated_sound.mat')

fc = Fs / 8;
t = 1:1:Fs;

y0_mod_fft = fft(y0_modulated);
stem(abs(fftshift(y0_mod_fft)));

y0_demod = y0_modulated .* cos(2*pi*fc*t);
y0_demod_fft = y0_mod_fft = fft(y0_demod);
stem(t, abs(fftshift(y0_demod)));

y0_demod_fft(fc:end) = 0;

final = ifft(y0_demod);