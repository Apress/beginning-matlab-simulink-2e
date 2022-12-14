% ODE_Laplace.m 
clearvars; clc; close all
% Step #1. Define symbolic variables' names 
syms t s y(t) Y
Dy = diff(y(t),t);
ODE1=Dy==-2*y(t);
% Step #2. Laplace Transforms 
LT_A=laplace(ODE1, t, s);
% Step #3. Substitute ICs and initiate an unknown Y 
LT_A=subs(LT_A,{laplace(y(t),t, s),y(0)},{Y,0.5});
% Step #4. Solve for Y (unknown) 
Y=solve(LT_A, Y);
display('Laplace Transforms of the given ODE with ICs'); disp(Y)
% Step #5. Evaluate Inverse Laplace Transform 
Solution_Laplace=ilaplace(Y);
display('Solution found using Laplace Transforms: ') 
pretty(Solution_Laplace)
% Step #6. Compute numerical values and plot them 
t=0:.01:2.5; LTsol=eval(vectorize(Solution_Laplace)); 
figure, semilogx(t, LTsol, 'ko')
xlabel('t'), ylabel('solution values') 
title('laplace/ilaplace vs dsolve ') 
grid on; hold on
%% Compare with dsolve solution method
clearvars; 
syms y(t)
Dy = diff(y, t);
Y_d=dsolve(Dy==-2*y, y(0)==0.5); 
disp('Solution with dsolve') 
t=0:.01:2.5; 
pretty(Y_d); Y_sol=eval(vectorize(Y_d));
plot(t,Y_sol, 'b-', 'linewidth', 2), grid minor 
legend('laplace+ilaplace', 'dsolve')
hold off; axis tight
