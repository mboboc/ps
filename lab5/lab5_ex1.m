clear all, close all
# Exercitiul 1

# a.
A = 1;
T = 100;
t = 1:T;
s = -A * ones(1, T);
s(1:(T/2)) = A;

plot(t,s);
ylabel('Amplitude');
xlabel('Time');
ylim([-A-1, A+1]);
title('s(t)');
hold on

# b.
k = 81
interval = -k:k
N = length(interval);
ck = zeros(N, 1)
tau = T / 4;

for i = 1 : N
  k = interval(i);
  if mod(k, 2) ~= 0
    ck(i) = (2 * A) / (j * pi * k);
  end
endfor

# c.
a = figure 
stem(interval, abs(ck));
#hold on

# d.
ck_delayed = zeros(N, 1);
for i = 1 : N
  ck_delayed(i) = ck(i) * exp(-j * 2 * pi * interval(i) * tau / T);
end 

# e.
figure
stem(interval, abs(ck_delayed));
#hold on

# f.
rad2deg(angle(ck_delayed))

# g. Signal reconstruction
s_recons = zeros(1, T);
for t = 1 : T
    for i = 1 : k
        s_recons(t) = s_recons(t) + ck_delayed(i) * exp(j * 2 * pi * interval(i) * t / T);
    end
end

plot(1 : T, s_recons);