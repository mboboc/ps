clear all; close all;
A = 1;
T = 10;
t = 1:0.0001:T;
f1 = 1600;
f2 = 1800;

#N = length(t)
#s = -A * ones(1, N);
#s(1:(N/2)) = A;
s1 = A * sin (2 * pi * f1 * t);
s2 = A * sin (2 * pi * f2 * t) ;
plot(t,s1);
hold on
plot(t, s2);

# x = A * sin(2 * pi * 10 * t);

#y = rms(s)