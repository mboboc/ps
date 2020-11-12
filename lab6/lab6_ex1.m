# Procesarea semnalelor
# Laborator 6

clear all;
close all;

# Exercitiul 1
A = 1;
Fs = 128;                 # samples per seconds
dt = 1/Fs;                # seconds per sample
T = 1;                    # seconds
t = (0:dt:T- dt);         # seconds

figure 1
# Sin 1Hz                 
Fc1 =  1;                 # hertz
s1 = A*cos(2*pi*Fc1*t)
subplot(5, 1, 1);
plot(t, s1);
ylabel('Amplitude');
xlabel('Time');
#ylim([-A-1, A+1]);

# Sin 2Hz                 
Fc2 =  2;                
s2 = A*cos(2*pi*Fc2*t);
subplot(5, 1, 2);
plot(t, s2);
ylabel('Amplitude');
xlabel('Time');

# Sin 10Hz    
Fc3 =  10;                
s3 = A*cos(2*pi*Fc3*t);
subplot(5, 1, 3);
plot(t, s3);
ylabel('Amplitude');
xlabel('Time');

# Sin 20Hz                 
Fc4 =  20
s4 = A*cos(2*pi*Fc4*t);
subplot(5, 1, 4);
plot(t, s4);
ylabel('Amplitude');
xlabel('Time');

# Sin 100Hz                 
Fc5 =  100
s5 = A*cos(2*pi*Fc5*t);
subplot(5, 1, 5);
plot(t, s5);
ylabel('Amplitude');
xlabel('Time');

# Processing
figure 2
# Sin 1Hz 
s1_processed = process(s1);     
subplot(5, 1, 1);
plot(s1_processed);
ylabel('Amplitude');
xlabel('Time');

# Sin 2Hz                 
s2_processed = process(s2);     
subplot(5, 1, 2);
plot(s2_processed);
ylabel('Amplitude');
xlabel('Time');

# Sin 10Hz    
s3_processed = process(s3);     
subplot(5, 1, 3);
plot(s3_processed);
ylabel('Amplitude');
xlabel('Time');

# Sin 20Hz                 
s4_processed = process(s4);     
subplot(5, 1, 4);
plot(s4_processed);
ylabel('Amplitude');
xlabel('Time');

# Sin 100Hz                 
s5_processed = process(s5);     
subplot(5, 1, 5);
plot(s5_processed);
ylabel('Amplitude');
xlabel('Time');