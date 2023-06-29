close all;
clear all;
clc;

Fs = tf(1,[1 1]);
Gs = tf(100,[1 5 100]);
Cs = tf([20 20 1200],[1 40 400 0]);
Ss = tf(10,[1 10]);

Gserie = series(Cs,Gs);
Gretorno = feedback(Gserie,Ss);
Gserie1 = series(Gretorno,Fs)

% Item (a)

[Y,t] = step(Gserie1, 8);
figure(1),plot(t,Y), grid
title('Resposta ao degrau unitario');
xlabel('t [s]');
ylabel('y(t)');

[F,t] = impulse(Gserie1, 8);
figure(2),plot(t,F), grid
title('Resposta ao impulso');
xlabel('t [s]');
ylabel('F(t)');

% item (b)

t = [0:0.1:10];
r = t + e.^(-3.*t);
h = lsim(Gserie1, r, t);
figure(3), plot(t,h), grid
title('Resposta a entrada t + e^(-3t)');
xlabel('t [s]');
ylabel('y(t)');

%item (c)

figure(4),bode(Gserie1)
