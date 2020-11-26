function s_idft = my_idft(s, N)
  s_idft = zeros(1, N);
  for k = 1 : N
    for n = 1 : N
      s_idft(k) = s_idft(k) + s_dft(n) * power(e, (j * 2 * pi * (n - 1)* (k - 1))/N);
    endfor
  endfor
  s_idft = s_idft ./ N;
endfunction