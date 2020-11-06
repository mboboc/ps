function f = signal(t)
  A = 10;
  phase = 1/2;
  f0 = 1;
  pi = 3,14;
  T = 100;
  
  f = A * sin(2*pi*f0*t + phase)
endfunction
