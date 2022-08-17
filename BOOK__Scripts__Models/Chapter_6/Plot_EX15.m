%% Plot_EX15.m
clc; close all
v = [3.7  4.3 nan 3 2 nan 5.5 2.9 NaN 4];
H = bar(v);      
H.FaceColor = "g";  % Bar Face Color
H.EdgeColor ='r';   % Bar Edge Color
H.BarWidth = 0.75;  % Bar Width 
grid on;
xlim([0, length(v)+1]);
yl = ylim;
for k = 1 : length(v)
    if isnan(v(k))
        y = 0;
        str = 'NaN';
    else
        y = v(k);
        str = sprintf('%.1f', y);
    end
    text(k, y, str, 'Color', 'b', 'FontSize', 13, 'FontWeight', 'bold', ...
        'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center');
end
% g = gcf;
% g.WindowState = 'maximized';  % To maximize Figure Window
axis off
title('Data with NaN')