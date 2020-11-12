# Procesarea semnalelor
# Laborator 6
function y = process_helper(x)
    samples = zeros(5);
    
    sum = 0;
    size = 4;
    for i = 1 : size
      sum = sum + x(i);
    endfor
    
    y = sum / size;
endfunction
