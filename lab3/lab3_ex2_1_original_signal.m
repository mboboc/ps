# Exerctiul 2 - subpunct 1
pi = 3,14;

T = 100;
A = 3;
N = 100;

x = 1:N;
y = zeros(1,N);

for i = 1 : 50
  y(i) = y(i) + 3;
endfor

for i = 50 : 100;
  y(i) = y(i) - 3;
endfor

plot(x,y);
ylim([-A-1, A+1]);
hold on;

