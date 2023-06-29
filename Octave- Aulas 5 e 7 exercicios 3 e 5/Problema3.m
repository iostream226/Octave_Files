close all;
clear all;
clc;

T = pi;
W = (-10:0.01:10);

X = T * sinc((W*T)/(2*pi));
modulo = abs(X);
fase = angle(X);

figure(1),plot(W,modulo);
title('Modulo x Tempo');
ylabel('Modulo');
xlabel('Tempo [s]')

figure(2),plot(W,fase);
title('Fase x Tempo');
ylabel('Fase');
xlabel('Tempo [s]')

