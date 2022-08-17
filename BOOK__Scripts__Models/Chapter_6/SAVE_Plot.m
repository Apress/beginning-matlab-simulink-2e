%% SAVE_Plot.m 
% Part 1. Save in *.fig format 
fplot(@(x)exp(sin(2*x)), [-pi, pi]), grid on; 
 saveas(gcf, 'MY_fig.fig') 
 % Part 2. Save in *.png format 
[x, y]=meshgrid(linspace(-pi, pi, 75), linspace(-5, 5, 50));
F = exp(sin(x)+cos(y)); contour(x, y, F, '--') 
saveas(gcf, 'MY_Plot', 'png') 
% Part 3. Save in *.pdf format 
Theta = 0:0.01*pi:5*pi;
c = 2; a = 0.2; b=.5; 
R = a + b*Theta.^(1/c);
polarplot(Theta, R, 'LineWidth', 2);
saveas(gcf, 'Spiral', 'pdf')
% Part 4. Display saved graphs in subplots
H1=subplot(211); imshow('MY_Plot.png')
H2=subplot(212); 
C=hgload('MY_Fig.fig'); copyobj(allchild(get(C, 'CurrentAxes')), H2);
title(H1, "MY plot.fig")
title(H2, "MY fig.fig")
