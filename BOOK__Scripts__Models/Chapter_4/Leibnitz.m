function N = Leibnitz(E0)
S=0;         % Initial value of summation
Error=pi/4;  % Initial Error value
k=0;
while abs(Error)>E0
    p=(-1)^k;
    S=S+p/(2*k+1);
    Error=pi/4-S; % Accumulates all of the values of the Error from all iterations
    k=k+1;
end
N=k;