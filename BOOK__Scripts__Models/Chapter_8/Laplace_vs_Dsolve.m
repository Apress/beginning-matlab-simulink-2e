clearvars, clc, close all
syms t s y(t) Y(s)
Dy = diff(y(t), t);
D2Y = diff(y(t), t, 2);
ODE2nd=D2Y== sin(t)-Dy; 
% Step 1. Laplace Transforms 
LT_A=laplace(ODE2nd, t, s);
% Step 2. Substitute ICs and initiate an unknown Y 
LT_A=subs(LT_A,{laplace(y(t),t, s),subs(diff(y(t),t),  t, 0),y(0)},{Y(s),2,1});
% Step 3. Solve for Y unknown 
Y=isolate(LT_A, Y);
%disp('Laplace Transforms of the given ODE with ICs'); 
disp(Y) 
Solution_Laplace=ilaplace(rhs(Y));
disp('Solution found using Laplace Transforms: ') 
pretty(Solution_Laplace); 
t=0:.01:13; LTsol=eval(vectorize(Solution_Laplace));
figure, plot(t, LTsol, 'ro-'); xlabel('t'), ylabel('solution values')
title('laplace/ilaplace vs. dsolve: ddy+dy=sin(t)'); hold on
% dsolve solution method
Y=dsolve('D2y+Dy=sin(t)', 'y(0)=1, Dy(0)=2', 't'); 
disp('Solution with dsolve:	');
pretty(Y) 
fplot(Y, [0, 13], 'b-', 'linewidth', 2); grid minor 
legend('laplace+ilaplace', 'dsolve', 'location', 'SE'); hold off
