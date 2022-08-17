% Lap_inv_Lap.m 
clearvars, clc, close all 
syms t s y(t) Y(s)
Dy=diff(y(t),t);
D2y=diff(y(t),t,2);
ODE2nd=D2y==0.5*(-3*(Dy)^3+cos(100*t)*abs(y(t))+2);
% Step 1. Laplace Transforms 
LT_A=laplace(ODE2nd, t, s);
% Step 2. Substitute ICs and initiate an unknown Y 
LT_A=subs(LT_A,{laplace(y(t),t, s),subs(diff(y(t),t),  t, 0),y(0)},{Y(s),0,0});
% Step 3. Solve for Y unknown 
Y=isolate(LT_A, Y);
% Step 3.	Solve for Y unknown Y=solve(LT_A, Y);
disp('Laplace Transforms of the given ODE with ICs'); 
disp(Y) 
Solution_Laplace=ilaplace(Y);
disp('Solution found using Laplace Transforms: ') 
pretty(Solution_Laplace)
