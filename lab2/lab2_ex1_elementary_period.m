pi=3.14
N = 1/200

#s1
s1 = 0:0.00001:N;
freq1 = 1600;
sin1 = 1*sin(2*pi*freq1*s1);

#s2
freq1 = 1800;
sin2 = 1*sin(2*pi*freq1*s1);

#plot
plot(s, sin1, 'r');
hold on
plot(s, sin2, 'g');
title("2 Signals")
xlabel ("Time");
ylabel ("Amplitude");
