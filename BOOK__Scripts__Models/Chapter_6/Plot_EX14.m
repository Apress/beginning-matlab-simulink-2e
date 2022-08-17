%% Plot_EX14.m
V = [12 13 16 17 15; 
     25 21 23 26 24; 
     31 33 30 35 37];
n = 1:length(V);
b = bar(n,V);
for ii=1:3
xtips1 = b(ii).XEndPoints;
ytips1 = b(ii).YEndPoints;
labels1 = string(b(ii).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')
end
shg     % Sow the plotted graph
