clc
clear
close all

%Create Array t
t = -10:0.001:10;

%Make Outputs
y_u = u(t,1);
y_r = r(t,0);

figure('WindowState','maximized')
subplot(1,2,1);
%x=linspace(-10,10);
plot(t, y_u, LineWidth=2);
ylim([-.1,1.1])
xlabel('Time (s)')
ylabel('Amplitude')
title("Plot of u(t)")
yticks([0 .2 .4 .6 .8 1])
grid on
axis normal

subplot(1,2,2);
plot(t, y_r, LineWidth=2);
xlabel('Time (s)')
ylabel('Amplitude')
title("Plot of r(t)")
grid on
axis normal