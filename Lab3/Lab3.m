%4.1. 
syms x
eqn = x^2 - 7*x + 6 == 0 ;
S = solve(eqn)

%4.2
syms x y z
eqns = [2*x + y - 2*z == 3, 2*x - y - 2*z == 0, x + y + 3*z == 12];
S2 = solve(eqns)

%4.3
syms x1 y1 x2 y2 
eqn1 = (4-x1)^2 + (1-y1)^2 == 6^2;
eqn2 = (6-x2)^2 + (1-y2)^2 == 6^2;
solution = vpasolve([eqn1,eqn2], [x1, y1, x2, y2]);
x1 = solution.x1
y1 = solution.y1
x2 = solution.x2
y2 = solution.y2

%4.4

ezplot('cos(x)', [-4,4])
hold on
ezplot('x^2 - 6',[-4,4])
title('plot of cos(x) = x^2 - 6')
xlabel('x')
ylabel('y')

syms x

eqn = cos(x) == x^2 - 6;

V1 = vpasolve(eqn,x,[-4,0])
V2 = vpasolve(eqn,x,[0,4])

%4.5
syms x
eqn = cos(x) == sin(x);

V3 = vpasolve(eqn,x,[0,3])
V4 = vpasolve(eqn,x,[3,6])
V5 = vpasolve(eqn,x,[6,9])

%4.6

figure;
ezplot('x^2 - 4', [-5,5])
hold on
ezplot('2*x - 1',[-5,5])
title('plot of f(x) = g(x)')
xlabel('x')
ylabel('y')

syms x
fx = x^2 - 4;
gx = 2*x -1;
eqn46 = fx == gx;

V6 = vpasolve(eqn46,x,[-4,0])
V7 = vpasolve(eqn46,x,[0,4])


