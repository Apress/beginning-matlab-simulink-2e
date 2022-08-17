% LA_Ex6.m
clc; clear variables
% Part 1
F = (10:10:70).';                               % Applied Load, [N]
d = [0.145  0.435 0.505 0.765 1.025 1.199 1.430].'; % Deflection, [m]
scatter(F, d, 'filled')
ylim([0, max(d)+.2]),shg
A = [F zeros(size(F))];
FM =A\d;
FM_values = FM(1)*F;
hold on
plot(F, FM_values, 'k-', 'linewidth', 2)
gtext(['Fit model: F = '  num2str(FM(1)) '*\delta'])
gtext(['Stifness is: '  num2str(FM(1))])
grid on
xlabel('Applied Load, F [N]')
ylabel('Deflection, \delta [m]')
% Part 2. Polynomial Approximation Fcns: Curve Fitting Toolbox
FM2 = polyfit(F,d, 1);
fprintf('CFTOOL Fit Model: F(d) = %f*d \n', FM2(1));
% Part 3. Polynomial Approximation Fcns: Stats and ML Toolbox
FM3 = fitlm(F,d, 'linear');
fprintf('Stats and ML Fit Model: F(d) = %f*d \n', FM3.Coefficients.Estimate(2));

