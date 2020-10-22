pi=3.14

#sin1
s1 = 0:0.01:1;
freq1 = 1;
sin1 = sin(2*pi*freq1*s1);

#sin2
s2 = 0:0.01:1;
freq2 = 2;
sin2 = sin(2*pi*freq2*s2);

#plot
plot(s1, sin1, 'r');
hold on
plot(s1, sin2);

hold on
plot(s1, sin1+sin2, 'g');