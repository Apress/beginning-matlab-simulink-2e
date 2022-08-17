%%  Example_8.m 
% Part 1
% dy/dt=-2*t*(y^2); with ICs: y(0)=0.5
clearvars
F=@(t,y)(-2*y^2*t); % Anonymous function (@)

% matlabFunction creates a function file called: Fun_F.m
syms tt u; % tt and u are used instead of t and y not to overlap. 
f=-2*u^2*tt;  
matlabFunction(f, 'file', 'Fun_F');

t0 = 0;            % Start of simulation
tend=10;           % End of simulation
h = 0.1;           % Time step   
t=t0:h:tend;       % Time space 
y0=0.5;            % ICs: y0 at t0

[t1, Yode45]=ode45(F, t, y0);  % F is anonymous function (@)
[t2, Yode23]=ode23(@Fun_File,t,y0); % Fun_File.m - function file
[t3, Yode113]=ode113('Fun_F',t,y0); % Fun_F.m - matlabFunction 

plot(t1, Yode45, 'ks-', t2, Yode23, 'ro-.',t3, Yode113,'bx--'),
grid on; 
title('\it Solutions of: $$\frac{dy}{dt}+2*t^2=0, y_0=0.5$$', 'interpreter', 'latex')
legend ('ode45','ode23','ode113')
xlabel('Time, t'), ylabel('Solution, y(t)'), shg

%%  Example_8.m 
%% Part 2
t0 = 0;                % Start of simulation
tend=100;              % End of simulation
t=[t0, tend];          % Time space 
y0=0.5;                % ICs: y0 at t0
F=@(t,y)(-2*y^2*t);
tic
[t1, Yode45]=ode45(F, t, y0);
Tode45=toc; fprintf('Tode45 = %2.6f  \n', Tode45)
clearvars -except t y0
tic
[t2, Yode23]=ode23(@Fun_File, t, y0);
Tode23=toc; fprintf('Tode23 = %2.6f  \n', Tode23)
clearvars -except t y0
tic
[t3, Yode113]=ode113('Fun_F', t, y0);
Tode113=toc; fprintf('Tode113 = %2.6f \n', Tode113)

