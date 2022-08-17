%% Plot_EX22.m
% Part 1
ezmesh(@(alpha, x)cos(2.1*alpha)*exp(0.1*x) )
%% Part 2. 
Alternative solution
fmesh(@(alpha, x)cos(2.1*alpha)*exp(0.1*x) )
title('cos(2.1*\alpha)*exp(0.1*x)')
xlabel('\alpha')
ylabel('x')