%% Section a
clear; clc; close all

t = -10:0.1:10;
%unit step plot
figure(1)
subplot(1,3,1)
y_u = u(t, 0);
plot(t, y_u, LineWidth=2);
ylim([-.1,1.1]); yticks([0 .2 .4 .6 .8 1]); grid on; axis normal;
xlabel('Time (s)'); ylabel('Amplitude'); title("Plot of u(t)")

%ramp plot
subplot(1,3,2)
y_r = r(t,0);
plot(t,y_r, LineWidth=2);
xlabel('Time (s)'); ylabel('Amplitude'); title("Plot of r(t)"); grid on; axis normal

%pulse plot
subplot(1,3,3)
y_p = p(t,1);
plot(t, y_p, LineWidth=2);
ylim([-.1,1.1]); yticks([0 .2 .4 .6 .8 1]); grid on; axis normal;
xlabel('Time (s)'); ylabel('Amplitude'); title("Plot of P(t)")

%% Section b

x1 = (r(t,0) - r(t,2)) + 3*u(t,2)+.4*p(t,9);
x2 = r(t,0) - 2*r(t,2) + 4*u(t,2) + r(t,4) - 4*u(t,4);

plot(t,x1, LineWidth=2, LineStyle="--");
grid on; axis normal;
xlabel('Time (s)'); ylabel('Amplitude'); title("Plot of x1(t) and x2(t)")
hold on

plot(t,x2, LineWidth=2);
grid on; axis normal;
xlabel('Time (s)'); ylabel('Amplitude');

legend('x1', 'x2', Location='southeast')

