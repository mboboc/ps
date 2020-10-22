load data.mat

R1f = 0.3 .* R1;
R2f = 0.3 .* R2;
IRf = IR - R1f;
IRff = IRf - R2f;
Final = IRff ./ 0.3;
image(Final)