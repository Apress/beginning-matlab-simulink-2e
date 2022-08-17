clc; 
%%
clearvars
%%
for ii = 1:10
tic;
OUT2 = sim('Ex6_Coupled_ODE_ver2.slx', 5);
Sim_Time2(ii) = toc;
tic; 
OUT1 = sim('Ex6_Coupled_ODE_ver1.slx', 5);
Sim_Time1(ii) = toc;
end
%% Compare simulation time
fprintf('Simulation time of Model 1: %f \n ', mean(Sim_Time1))
fprintf('Simulation time of Model 2: %f \n ', mean(Sim_Time2))
%% Compare simulation results
figure(1)
plot(OUT1.OUT{1}.Values.Time, OUT1.OUT{1}.Values.Data, 'r*')
hold on
plot(OUT2.OUT{1}.Values.Time, OUT2.OUT{1}.Values.Data, 'b-', 'linewidth', 2)
xlabel('Time, [s]')
ylabel('u(t)')
legend('Model 1', 'Model 2', 'location', 'NE')
figure(2)
plot(OUT1.OUT{2}.Values.Time, OUT1.OUT{2}.Values.Data, 'r*')
hold on
plot(OUT2.OUT{2}.Values.Time, OUT2.OUT{2}.Values.Data, 'b-', 'linewidth', 2)
xlabel('Time, [s]')
ylabel('w(t)')
legend('Model 1', 'Model 2', 'location', 'NE')
