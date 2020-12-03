# Procesarea semnalelor
# Laborator 8

clear all; close all;

# 1 2
load('notes_signal.mat');

[row, N] = size(notes_signal);
t = linspace(0, fs/2, N / 2);

notes_signal_fft = fft(notes_signal);
s_plot = notes_signal_fft(1:N/2);
figure 1
subplot(3, 3, 1);
stem(t, abs(s_plot));

# 3 Signal with window
added = zeros(1, 32);
s_extended = s_plot;
s_extended = [s_extended, added];
s_extended_fft = fft(s_extended);
subplot(3, 3, 2);
stem(linspace(0, fs/2, N), abs(s_extended_fft));

window = hann(N);
subplot(3, 3, 5);
plot(window);
s_window = notes_signal .* window';
subplot(3, 3, 3);
plot(s_window);
subplot(3, 3, 6);
plot(notes_signal);
s_window_fft = fft(s_window);
subplot(3, 3, 4);
stem(linspace(0, fs/2, N), abs(s_window_fft));