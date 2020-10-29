function y = signal(t)
  A = 1;
  T = 100;
  x = 1:T;
  s = -A*ones(1, T);
  s(1:(T/2)) = A;
  y = abs(s .* s).^2;
endfunction