function s_dft = my_dft(s, N)
   s_dft = zeros(1, fs);
   for k = 1 : N
    for n = 1 : N
      s_dft(k) = s_dft(k) + s(n) * power(e, (-j * 2 * pi * (n - 1) * (k - 1))/N);
    endfor
   endfor
endfunction
