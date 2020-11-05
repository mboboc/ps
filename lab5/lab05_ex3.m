load('lab05_modulated_sound.mat')

fc = Fs / 8 ;
max_time =size(y0_modulated,1)/ Fs;
t = 0:1 / Fs:max_time;
t = t(1:end-1)';
 


fams_mod = fft(y0_modulated);
figure ,stem(abs(fftshift(fams_mod)));

y0_demod = y0_modulated .* cos(2*pi*fc*t);
fams_demod = fft(y0_modulated);
figure ,stem(abs(fftshift(fams_demod)));

th = round(size(fams_demod,1) / 10);
filtred = fams_demod;
filtred(th:end) = 0;

x = ifft(filtred);


