clear all; close all;
pi = 3.14;
N = 1/200;
A = 1;

#s1
s1 = 0:0.00001:N;
freq1 = 1600;
sin1 = A*sin(2*pi*freq1*s1);

#s2
freq1 = 1800;
sin2 = A*sin(2*pi*freq1*s1);

#plot
plot(s1, sin1, 'r');
hold on
plot(s1, sin2, 'g');
title("2 Signals")
xlabel ("Time");
ylabel ("Amplitude");
