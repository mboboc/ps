%%%
# Lab 2: Exercitiul 3
# afi?a?i exponen?iala complex? s1=e^(jt)
%%%
t = [0, pi/6, pi/4, pi/3, pi/2];
s1 = exp(1i*t);
s2 = exp(-1i*t);
#plot(s1);
#hold on;
#plot(s2);
#s3 = s1 + s2;
#hold on;
#plot(s3);
plot(real(s3), imag(s3), 'g*');