t = zeros(1,1000);
for n = 1:1000
    A = rand(n,n); %random n by n matrix
    B = rand(n,n);
    tic;
    C = A'.*B';
    t(n) = toc;
end
figure(1)
f = fit((1:1000).',t.','exp1') %best fit curve
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Result
%f = 
    % ˆê”Êƒ‚ƒfƒ‹ Exp1:
    % f(x) = a*exp(b*x)
     %ŒW” (95% ‚ÌM—ŠŒÀŠE):
       %a =   0.0005383  (0.0005045, 0.000572)
      % b =    0.003387  (0.003315, 0.00346)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

plot(f,(1:1000).',t.')
title('Time used to multiply 2 N by N matrices')
xlabel('N')
ylabel('time (s)')