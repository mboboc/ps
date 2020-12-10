# Procesarea semnalelor
# Laborator 9

close all; clear all;

# 1
N = 256;
fs = N;
cutoff = fs/16;
t = linspace(0, 1, fs);

filter = zeros(1, N);
filter(1:fs/16) = 1;
filter(N - fs/16 : N) = 1;

figure 1
plot(t, filter);
ylim([-1,2])

# 1
hk = ifftshift(ifft(filter));
figure 2
plot(t, hk);
# ylim([-1,2])

# 2
max = N/2;
L = 65;

t = linspace(0, 1, L);
hk_selected = hk(max - 32: max + 32);
figure 3
plot(t, hk_selected);

# 3
sq = ones(1, L);
hk_selected_sq = hk_selected .* sq;
hk_selected_sq_fft = fft(hk_selected);
figure 4
tt = linspace(0, 1, L);
stem(tt, abs(hk_selected_sq_fft));

#4
blkman = blackman(L);
blkman = blkman';
hk_selected_blk = hk_selected .* blkman;
hk_selected_blk_fft = fft(hk_selected_blk);

figure 5;
stem(tt, abs(hk_selected_blk_fft));

#5
N = 64;
fs = 64000; # 64KHz
freq = 3000; # 3KHz
t = linspace(0, fs, N);
s = sin(2 * pi * freq * t);

figure 6;
s_conv = conv(s, hk_selected_blk);
plot(linspace(0, 1, 128), s_conv);
