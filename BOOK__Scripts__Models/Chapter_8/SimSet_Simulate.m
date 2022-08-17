% SimSet_Simulate.m
% Part 1. Variable step solver
% Solver 1 (Variable-step solver): ode45; 
Time = [0, 25];
OPTIONS = simset('solver', 'ode45', 'zerocross', 'on');
[t1, u1]=sim('Example_10.slx', Time, OPTIONS);
% Solver 2 (Variable-step solver): ode113; 
OPTIONS = simset('solver', 'ode113', 'zerocross', 'on');
[t2, u2]=sim('Example_10.slx', Time, OPTIONS);
% Solver 3 (Variable-step solver): ode23s; 
OPTIONS = simset('solver', 'ode23s', 'zerocross', 'on');
[t3, u3]=sim('Example_10.slx', Time, OPTIONS);
plot(t1, u1(:,1), 'bo', t2, u2(:,1), 'r*', t3, u3(:,1), 'kp'), grid on
L=legend('ode45', 'ode113', 'ode23s', 'location', 'SE');
title(L,'Solver type: Variable-step')

title('Solution: $$\frac{d^2u}{2dt^2}+\frac{2du}{5dt}+u=t$$', 'interpreter', 'latex')
xlabel('Time, $$t$$', 'interpreter', 'latex') 
ylabel('Solution, $$u(t)$$', 'interpreter', 'latex')
axis tight
shg

%%
% Solver 1: ode1 (Euler); reltol=1e-3; abstol=1e-5;

OPTIONS = simset('solver', 'ode1', 'reltol', '1e-3', 'abstol', '1e-5', 'zerocross', 'off');
OPTIONS = sdo.OptimizeOptions('Method', 'lsqnonlin');
[t1, u1]=sim('Example_10.slx', Time, OPTIONS);
% Solver 2: ode3 (Bogacki-Shampine); reltol=1e-3; abstol=1e-5;
OPTIONS = simset('solver', 'ode3', 'reltol', '1e-3', 'abstol', '1e-5', 'zerocross', 'off');
[t2, u2]=sim('Example_10.slx', Time, OPTIONS);
% Solver 3: ode14x (Extrapolation); reltol=1e-3; abstol=1e-5;
OPTIONS = simset('solver', 'ode14x', 'reltol', '1e-3', 'abstol', '1e-5', 'zerocross', 'off');
[t3, u3]=sim('Example_10.slx', Time, OPTIONS);
plot(t1, u1(:,1), 'bo', t2, u2(:,1), 'r*', t3, u3(:,1), 'kp'), grid on

L=legend('ode1', 'ode3', 'ode14x', 'location', 'SE');
title(L,'Solver type: Fixed-step')
title('Solution: $$\frac{d^2u}{2dt^2}+\frac{2du}{5dt}+u=t$$', 'interpreter', 'latex')
xlabel('Time, $$t$$', 'interpreter', 'latex') 
ylabel('Solution, $$u(t)$$', 'interpreter', 'latex')
shg