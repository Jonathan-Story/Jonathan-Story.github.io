clc, clear all, close all

%% 1)
clc, clear all, close all

H = tf([1 3],[1 4 3])

% Poles and zeros
[p,z] = pzmap(H)

% pole-zero map
pzmap(H)

% Impulse response

figure (2)
impulse(H)

%% 2)
clc, clear all, close all

H = tf([1 -7 12],[1 3 1 -5])

% Poles and zeros
[p,z] = pzmap(H)

% pole-zero map
pzmap(H)

% Impulse response

figure (2)
impulse(H)

%% 3)
clc, clear all, close all

H = tf([1 -10 21],[1 5 9 5 0])

% Poles and zeros
[p,z] = pzmap(H)

% pole-zero map
pzmap(H)

% Impulse response

figure (2)
impulse(H)

%% 
clc, clear all, close all

H = tf([8 18 32], [1 6 14 24])
pzmap(H)
grid on
[p,z] = pzmap(H)
impulse(H)
step(H)

%% 5) Asymptotically stable
clear all, close all, clc

syms s

p1 = -1-j;
p2 = -1+j;
p3 = -2;

z1 = 1;
z2 = 2;

TF = expand(((s-z1)*(s-z2)))/expand(((s-p1)*(s-p2)*(s-p3)))

H = tf([1 -3 2], [1 4 6 4])

figure (1)
impulse(H)

figure (2)
pzmap(H)

%% 4) stable 
clear all, clc, close all
syms s

p1 = -1;
p2 = -2;
p3 = 0;

z1 = 1;
z2 = 2;

TF = expand(((s-z1)*(s-z2)))/expand(((s-p1)*(s-p2)*(s-p3)))

H = tf([1 -3 2], [1 3 2 0])

figure (1)
impulse(H)

figure (2)
pzmap(H)

%% 6) unstable 
clear all, clc, close all
syms s

p1 = -1;
p2 = -2;
p3 = 1;

z1 = 3;
z2 = 4;

TF = expand(((s-z1)*(s-z2)))/expand(((s-p1)*(s-p2)*(s-p3)))

H = tf([1 -7 12], [1 2 -1 -2])

figure (1)
impulse(H)

figure (2)
pzmap(H)

%% 8,9,10) RLC

clear all, clc, close all

R = 40; L = 3*10^-3; C = 5*10^-6;
% R = 1; L = 3*10^-3; C = 5*10^-6;
% R = 2; L = 3*10^-3; C = 5*10^-6;
% R = 3; L = 3*10^-3; C = 5*10^-6;
% R = 10; L = 3*10^-3; C = 5*10^-6;


H = tf(1/(L*C), [1 R/L 1/(L*C)])


figure (1)
impulse(H)

figure (2)
step(H)

[p,z] = pzmap(H)
figure (3)
pzmap(H)

%% 11,12) Zero pole cancelation 
clear all, clc, close all
syms s

H = tf([1 -7 12], [1 1 0 -2])

[p,z] = pzmap(H)
impulse(H)

%% 13
clear all, clc, close all
syms s


z1 = 4;
z2 = 3;

p1 = -1+i;
p2 = -1-i;

expand((s-z1)*(s-z2))/expand((s-p1)*(s-p2))

H = tf([1 -7 12], [1 2 2])

impulse(H)




