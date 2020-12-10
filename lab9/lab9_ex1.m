# Procesarea semnalelor
# Laborator 9

clear all; close all;

# 1 M + N - 1
N = K = 10;
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
k = [1, 2, 3];

res = conv(x, k);
[row, col] = size(res)

# 2
n = [1:5];
x = [1, 3, 5, 7, 5, 4, 2];
h = [0.1, 0.3, 0.1];
h = h';

convRes = [x(1:3) * h, x(2:4) * h, x(3:5) * h, x(4:6) * h, x(5:7) * h]

# 3
N = 64;
fs = 64000; # 64KHz
freq = 3000; # 3KHz
t = linspace(0, fs, N);
x = sin(2 * pi * freq * t);

subplot(2,2,1);
stem(x);

h = [0.1, 0.2, 0.2, 0.2, 0.1];
y = myConv(x, h);
subplot(2,2,3);
stem(y);
subplot(2,2,4)
stem(conv(x, h));

# 4
x = [0, 0, 0, 0, 1, 0, 0, 0, 0]
y = myConv(x, h);
figure 2
subplot(1,2,1);
stem(y);

subplot(1,2,2);

stem(conv(x,h));







