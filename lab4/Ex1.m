clear;
#1
A = 1;
T = 100;
x = 1:T;
s = -A*ones(1, T);
s(1:(T/2)) = A;

figure;

plot(x, s);

ylim([-A-1; A + 1]);

xlabel("Time");
ylabel("Amplitude");

#2

kmax = 500;

k = [0:kmax];

idx = 0;

for l = 0:kmax
  idx++;
  if mod(l, 2) == 0
		ck(idx) = 0;
	else
		ck(idx) = (2 * A)/(i *pi * l);
	end

	cksquare(idx) = abs(ck(idx)^2);

end

figure;
stem(k,cksquare);
xlabel('Frequency (k)');
ylabel('Amplitude');


#3

function y = f(t)
  A = 1;
  T = 100;
  x = 1:T;
  s = -A*ones(1, T);
  s(1:(T/2)) = A;
  y = s .* s;
endfunction

N = 500;
K = [1:N];
first = true();
for n = 1:N
  sum = 0;
  idx = 0;
  for i = 0:n
    idx ++;
    sum += cksquare(idx);
  end
  rms(n) = sqrt(quad('f',0,T)/T - (2 * sum + cksquare(1)));
  #4
  if rms(n) < 0.05 && first
    rmsAnswer = rms(n);
    nAnswer = n;
    first = false();
  endif
end

rmsAnswer
nAnswer
figure;
plot(K,rms);
xlabel('N');
ylabel('RMS');

clear
#4
nAnswer = 163;
T = 100;
x = 1:T;
A = 1;
idx = 0;
for l = -nAnswer:nAnswer
  idx++;
  if mod(l, 2) == 0
		ckn(idx) = 0;
	else
		ckn(idx) = (2 * A)/(i *pi * l);
	end
end

for l = 1:T;
  s(l) = 0;
  for j = -nAnswer:nAnswer
    s(l) += ckn(j + nAnswer + 1) * e^(i * ((2 * pi * j * l)/T));
  end
end

figure;
plot(x,s);
ylim([-A-1; A + 1]);
xlabel('Time');
ylabel('Amplitude');