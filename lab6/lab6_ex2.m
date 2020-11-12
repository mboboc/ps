# Procesarea semnalelor
# Laborator 6
clear all;
close all;

A = 1;
Fs = 8000;                # samples per seconds
dt = 1/Fs;                # seconds per sample
T = 64;                   # seconds
t = (0:dt:T - dt);        # seconds
N = T;

figure 1
# Sin 3000Hz                 
Fc1 =  3000;              # hertz
s1 = A*cos(2*pi*Fc1*t);
subplot(5, 1, 1);
plot(t, s1);
ylabel('Amplitude');
xlabel('Time');

figure;
fx = zeros(1, N);
fidx = (Fs/N) * linspace(0,N-1,N);
spectrum = fft(s1, N);
stem(fidx, abs(spectrum));
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Spectrum of x1');

figure;
fidx = (Fs/N)*linspace(-N/2, N/2-1, N);
stem(fidx, abs(fftshift(spectrum)));
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Zero-centred frequency spectrum of x1');
