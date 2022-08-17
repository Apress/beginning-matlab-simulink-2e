%% Plot_EX13.m
D = [22.3  25.7   21.2  27.9  25.5  20.8  19.3];     % Data
S = [1.25   2.12  2.24  1.21  2.37   2.31  1.13];    % STD
n = 1:numel(D);
bar(n, D, 'y')              % Bar facecolor yellow               
hold on
EB = errorbar(n,D,S,S, 'LineWidth', 2);    
EB.Color = [1 0 0];        % STD line color                        
EB.LineStyle = 'none';     % No connection line for STD
hold off
legend('Data', 'std')
shg                        % Show the plotted graph 
