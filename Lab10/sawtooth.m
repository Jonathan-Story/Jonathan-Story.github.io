%% CODE 2 - Square Wave
% clc, syms n x
% L = pi; N_TERMS = input('Number of terms: '); n = 1:N_TERMS;
% % Calculating the coefficients of the Fourier Series
% % tic
% a0 = (1/L)*int(1, x, 0, pi);
% an = (1/L)*int(1*cos(n*x), x, 0, pi);
% bn = (1/L)*int(1*sin(n*x), x, 0, pi);
% % Plugging the coefficient values in the Fourier Series
% f = 0;
% for n = 1:N_TERMS
% f = f+ (an(n)*cos(n*x) + bn(n)*sin(n*x));
% end
% % toc
% fprintf('Approximation using %d terms\n', n)
% f_approx = (a0/2)+ f
% ezplot(f_approx, [-10,10])
% title('Fourier Series Approximation')
% xlabel('x')
% ylabel('F(x) approximated')
%% Sawtooth Wave
clc, syms n x
L = pi; N_TERMS = input('Number of terms: '); n = 1:N_TERMS;
% Calculating the coefficients of the Fourier Series
% tic
a0 = (1/L)*int(1, x, 0, pi);
an = (2/L)*int((1/L)*x*cos(2*L*n*x/L), x, 0, pi);
bn = (2/L)*int((1/L)*x*sin(2*L*n*x/L), x, 0, pi);
% Plugging the coefficient values in the Fourier Series
f = 0;
for n = 1:N_TERMS
f = f+ (an(n)*cos(n*x) + bn(n)*sin(n*x));
end
% toc
fprintf('Approximation using %d terms\n', n)
f_approx = (a0/2)+ f
ezplot(f_approx, [-10,10])
title('Fourier Series Approximation')
xlabel('x')
ylabel('F(x) approximated')
legend('f(N=10)','f`(N=20)', 'f(N=30)');
hold on