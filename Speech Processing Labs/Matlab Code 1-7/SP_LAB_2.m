clc;
clear;
close all;
%Unit Implse 
n = -10:10; 
impulse = [zeros(1,10) 1 zeros(1,10)]; 
stem(n,impulse, 'filled');
title('Unit Impulse Sequence');
xlabel('n'); 
ylabel('Amplitude');
grid on;
% Delayed Unit Impulse
M=2
delay_impulse = (n == M);
stem(n,delay_impulse);
title ('Delayed Unit Impulse Sequence');
xlabel( 'n ' ); ylabel( 'Amplitude' );
grid on;
%Unit Step
n = -10:10;
unit_step = (n >= 0);
stem(n, unit_step );
title ( 'Unit Step Sequence' );
xlabel( 'n' ); ylabel( 'Amplitude');
grid on;
%Sinusoidal Sequences
n = 0:20;
x = sin(2*pi*0.1*n);
stem(n, x);
title ( 'Sinusoidal Sequence');
xlabel( 'n' ); ylabel( 'Amplitude');
grid on;
%Linear and Nonlinear Systems
