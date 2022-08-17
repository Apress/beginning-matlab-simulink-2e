% Example_9.m
clearvars; close all
t0=0;         % Start of simulations
tend=2.5;    % End of simulations
t=[t0, tend];
y(1,:)=[1; 2];      % Initial Conditions
% ode45 - RUNGGE-KUTTA 4/5 Order 
Fun = @(t, y)([y(2); (1/2)*(-3*y(2)+abs(y(1))*cos(100*t)+2)]);
[T1, U1]=ode45(Fun, t, y, []);
plot(T1, U1(:,1), 'rp', 'markersize', 9); grid on; hold on
% ode23 - RUNGGE-KUTTA 2/3 Order 
[T2, U2]=ode23(Fun, t, y);
plot(T2, U2(:,1), 'b:o', 'MarkerSize', 9)
% ode113 - ADAMS Higher Order 
[T3, U3]=ode113(Fun, t, y);
plot(T3, U3(:,1), 'k-', 'linewidth', 2)
legend('ode45', 'ode23', 'ode113', 'location', 'SE')
title('Simulation of: $$\frac{2d^2y}{dt^2}+\frac{3dy}{dt}-|y|cos(100t)=2$$', 'interpreter', 'latex')
xlabel('Time, $$t$$', 'interpreter', 'latex') 
ylabel('Solution, $$y(t)$$', 'interpreter', 'latex'), axis tight
