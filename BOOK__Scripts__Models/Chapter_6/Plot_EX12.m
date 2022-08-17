%% Plot_EX12.m
% Version 1
close all; clearvars
t=0:.001*pi:1*pi;
% Line color, type and marker specifiers are defined:
Labelit  = {};
Colorit  = 'krgbmk';
Lineit   = '--:-:--:-:-';
Markit  = '-+xdoshv<p>';
for ii=1:5
% Line and marker specifier are taken for each iteration:
    Stylo = [Colorit(ii) Lineit(ii) Markit(ii)];
    F     = sqrt(sin(ii*t.*sqrt(t+t.^2+t.^3))).*sin(2*t);
    subplot(211)
    plot(t, real(F), Stylo,'markersize', 3)  % Real Part 
    hold on; grid on; ylabel('$$RE(F(\mu, t))$$', 'Interpreter','latex')
    Labelit{ii} = ['\mu = ' num2str(ii)];
    legend(Labelit{:})
    subplot(212)
    plot(t, imag(F), Stylo,'markersize', 3) % Imaginary Part 
    hold on
    Labelit{ii} = ['\mu = ' num2str(ii)];
    legend(Labelit{:})
end
ylabel('$$IM(F(\mu, t))$$', 'Interpreter','latex')
xlabel('$$t$$', 'Interpreter','latex')
axis tight; grid on
%% Version 2. No loop for calculations
close all; clearvars
t=0:.001*pi:1*pi;
[ts, mu]=meshgrid(t, 1:5);
F = sqrt(sin(mu.*ts.*sqrt(ts+ts.^2+t.^3))).*sin(2*ts);
% Line color, type and marker specifiers are defined:
Labelit  = {};
Colorit  = 'krgbmk';
Lineit   = '--:-:--:-:-';
Markit  = '-+xdoshv<p>';
for ii=1:5
% Line and marker specifier are taken for each iteration:
    Stylo = [Colorit(ii) Lineit(ii) Markit(ii)];
    subplot(211)
    plot(t, real(F(ii,:)), Stylo, 'markersize', 3)  % Real Part
    hold on; grid on
    Labelit{ii} = ['\mu = ' num2str(ii)];
    legend(Labelit{:})
    subplot(212)
    plot(t, imag(F(ii,:)), Stylo, 'MarkerSize',3) % Imaginary Part 
    hold on
    Labelit{ii} = ['\mu = ' num2str(ii)];
    legend(Labelit{:})
end
axis tight; shg
grid on
