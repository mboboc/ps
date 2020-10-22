N = rand(1000);
M = rand(1000);

R = [1000:1000]
tic
for i = 1:1000;
  for j = 1:1000;
     res = N(i,j) .* M(j,i);
  endfor
endfor
toc

tic
for j = 1:1000;
  for i = 1:1000;
     res = N(i,j) .* M(j,i);
  endfor
endfor
toc

tic
res = N .* M;
toc
