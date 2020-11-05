# a.
a = 0.05;
T = 128;
x = 1:T;
s = exp(-a*x);

plot(x,s);
ylim([-A-0.5, A+0.5]);

# b.
s_dft = zeros(1, T);

fx = zeros(1, T);
findex = T/2*linspace(0,1,T/2);
fx((T/2)+1:end) = findex;
fx(1:T/2) = [-T/2, -findex(end:-1:2)]

for i = 1 : T
  for p = 1 : T
    s_dft(i) = s_dft(i) + s(i) * exp(-j * 2 * pi * i * p / T);   
  end
stem(fx, abs(fftshift(s_dft)));  
hold on
# c.
#h = figure;
fx = zeros(1, T);
findex = T/2*linspace(0,1,T/2);
fx((T/2)+1:end) = findex;
fx(1:T/2) = [-T/2, -findex(end:-1:2)];
fs = fft(s);
stem(fx, abs(fftshift(fs)));
xlabel('Frequency component (k)');
ylabel('Magnitude of component');
title('Fourier coefficients before amplitude modulation');
#print(h, '-dpng', 'coefficients_before_amod.png'); % doar daca vreti sa salvati ca png graficull

# d. Modulate the signal in amplitude
fc = 20 / T; 
ms = zeros(1, T);
for i=1:T
    ms(i) = (1+s(i)) * cos(2*pi*fc*i);
end

h = figure;
fx = zeros(1, T);
findex = T/2*linspace(0,1,T/2);
fx((T/2)+1:end) = findex;
fx(1:T/2) = [-T/2, -findex(end:-1:2)];
fams = fft(ms);
stem(fx, abs(fftshift(fams)));
xlabel('Frequency component (k)');
ylabel('Magnitude of component');
title('Fourier coefficients after amplitude modulation');
print(h, '-dpng', 'coefficients_after_amod.png');
