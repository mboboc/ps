# Procesarea semnalelor
# Laborator 9

function y = myConv(x, h)
  [row, N] = size(x);
  [rw, M] = size(h);
  
  convSize = N + M - 1;
  
  x = [x, zeros(1, M - 1)];
  y = zeros(1, convSize);
  idx = 1;
  for n = M : convSize
    for k = 1 : M
      y(n) += h(k) * x(n - k + 1);
    end
  end
endfunction
