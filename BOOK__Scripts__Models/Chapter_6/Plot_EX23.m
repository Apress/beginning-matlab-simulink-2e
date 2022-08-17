% Plot_EX23.m
close all
for omega=50:5:150
 handle=@(x,y)(0.5*cos(omega*pi*x/180)+0.75*sin(omega*y*pi/180));
    ezsurfc(handle, [-pi, pi], [-pi, pi]); 
end
%%  Part 2. Alternative Solution
for omega=50:5:150
 handle=@(x,y)(0.5*cos(omega*pi*x/180)+0.75*sin(omega*y*pi/180));
    fsurf(handle, [-pi, pi]); shg
end
xlabel('x')
ylabel('y')
title('0.5*cos(\omega*\pi*x/180)+0.75*sin(\omega*\pi*y/180)')
%%  Part 3. Alternative Solution
[x, y]=meshgrid(linspace(-pi,pi, 50), linspace(-pi,pi, 50));
for omega=50:5:150
    F=(0.5*cos(omega*pi*x/180)+0.75*sin(omega*y*pi/180));
    surfc(x, y, F); shg
end
xlabel('x')
ylabel('y')
title('0.5*cos(\omega*\pi*x/180)+0.75*sin(\omega*\pi*y/180)')