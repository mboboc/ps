
N = 200;
T = 100;
u = ustep(N);
s1 = ramp(N);
s2 = -[zeros(1,T), s1(1:N-T)];
s3 = -T*[zeros(1,T), u(1:N-T)];


final = s1 + s2 + s3;
plot(s1, 'g');
title('Signal composition');
hold on;
plot(s2, 'b');
hold on;
plot(s3, 'r');
hold on;
plot(final, 'k', 'LineWidth', 2);
legend ("r(t)", "-r(t-T)", "-u(t-T)", "sum");
 