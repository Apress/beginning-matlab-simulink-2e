%% Bar_Plot_E13.m
D = [22.3  25.7   21.2  27.9  25.5  20.8  19.3];     % Data
S = [1.25   2.12  2.24  1.21  2.37   2.31  1.13];     % STD
n = 1:numel(D);
bar(n,D, 'y')                
hold on
er = errorbar(n,D,S,S, 'LineWidth', 2);    
er.Color = [1 0 0];                            
er.LineStyle = 'none';  
hold off
legend('Data', 'std'), shg
