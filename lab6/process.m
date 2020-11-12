# Procesarea semnalelor
# Laborator 6
function y = process(s)
samples = 4;
start = 1;
finish = samples;
final = zeros(1, length(s) / samples);
for i = 1 : length(s) / samples
  aux = s(start:finish);
  final(i) = process_helper(aux);
  start = start + samples;
  finish = finish + samples;
endfor 
y = final;
endfunction
