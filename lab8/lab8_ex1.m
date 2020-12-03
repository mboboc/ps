# Procesarea semnalelor
# Laborator 8

clear all; close all;

fs = 8000;
N = 8;
t = 0 : N-1;
freq = 0 : 1000 : 1000 * (N-1);
A1 = 1;
A2 = 0.5;
f1 = 1000;
f2 = 2000;
ts = 1/fs;

# 1
s1 = A1 * sin(2*pi*f1*t*ts);
s2 = A2 * sin(2*pi*f2*t*ts);

figure 1
plot(t, s1);
hold on;
plot(t, s2);
hold on;

s = A1 * sin(2*pi*f1*t*ts) + A2 * sin(2*pi*f2*t*ts);
plot(t, s);

# 2
figure 2
subplot(3,3, 1);
##T=N;
##fx = zeros(1, T);
##findex = T/2*linspace(0,1,T/2);
##fx((T/2)+1:end) = findex;
##fx(1:T/2) = [-T/2, -findex(end:-1:2)];

s_fft = fft(s);
stem(freq, abs(s_fft));

# 1
subplot(3,3, 2);
s2_fft = fft(s2);
stem(freq, abs(s2_fft));

# 2
f2 = 2500;
s = A1 * sin(2*pi*f1*t*ts) + A2 * sin(2*pi*f2*t*ts);
s_fft = fft(s);
subplot(3, 3, 3);
stem(freq, abs(s_fft));

# 3
added = zeros(1, 56);
s_extended = s;
s_extended = [s_extended, added];
s_extended_fft = fft(s_extended);
subplot(3, 3, 4);
stem(linspace(0,8000, 64), abs(s_extended_fft));

# 4 
f2 = 2000;
s = A1 * sin(2*pi*f1*t*ts) + A2 * sin(2*pi*f2*t*ts);
added = zeros(1, 56);
s_extended = s;
s_extended = [s_extended, added];
s_extended_fft = fft(s_extended);
subplot(3, 3, 5);
stem(linspace(0,8000, 64), abs(s_extended_fft));