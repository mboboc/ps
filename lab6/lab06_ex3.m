# Procesarea semnalelor
# Laborator 6
clear all;
close all;

N_analog = 5000;

A = 1;
Fs = 50;                 # samples per seconds
dt = 1/Fs;               # seconds per sample
t = linspace(0, 5, N_analog);

# Sin 1Hz                 
Fc1 =  1;                 # hertz
s1 = A*cos(2*pi*Fc1*t);
plot(t, s1);
hold on
ylabel('Amplitude');
xlabel('Time');

samples_digital = zeros(1, 50);
s1_digital = s1;
idx = 1;
for i = 1 : length(s1)
  if mod(i, 100) != 0
     s1_digital(i) = 0;
  else
      samples_digital(idx);
      idx = idx + 1;
  endif
endfor

stem(t, s1_digital);

N_sinc = N_analog;
t_sinc = linspace(-0.2, 0.2, N_sinc/10);
sincvec = sinc(10 * t_sinc);
s_cont_filtered = conv(s1_digital, sincvec);

t1  = linspace(0, 5, length(s_cont_filtered));
figure 2
stem(t1, s_cont_filtered);


