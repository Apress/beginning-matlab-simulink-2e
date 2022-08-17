% LA_Ex7.m
clc; clear variables; close
% Part 1
v = (20:10:70).';                        % Velocity, [km/h]
s = [45  80 130 185 250 330].'; % Braking distance, [m]
scatter(v, s, 'filled')
ylim([0, max(s)+.2]),shg
A = [v.^2 v  ones(size(v))];
FM =A\s; FMM = linsolve(A,s);
FMM = mldivide(A,s);
FM_values = FM(1)*v.^2+FM(2)*v+FM(3);
hold on
plot(v, FM_values, 'k-', 'linewidth', 2)
gtext(['Fit model: s(v) = '  num2str(FM(1))  'v^2 +' num2str(FM(2)) '*v +', num2str(FM(3))])
grid on
xlabel('\it Velocity, v [km/h]')
ylabel('\it Braking Distance, s [m]')
%%
% Part 2. Polynomial Approximation Fcn: Curve Fitting Toolbox
FM2 = polyfit(v,s, 2);
fprintf('CFTOOL Fit Model: s(v) = %f*v.^2 + %f*v + %f \n', FM2);
% Part 3. Polynomial Approximation Fcn: Stats and ML Toolbox
FM3 = fitlm(v,s, 'poly2');
fprintf('Stats and ML Fit Model: s(v) = %f*v.^2 + %f*v + %f \n', flip(FM3.Coefficients.Estimate));
