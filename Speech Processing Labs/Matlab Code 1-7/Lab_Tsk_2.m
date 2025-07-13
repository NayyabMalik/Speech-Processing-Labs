clc; clear; close all;

% Define time index
n = 0:40;

% Define input signals
s1 = cos(2 * pi * 0.05 * n); % Low-frequency signal
s2 = cos(2 * pi * 0.4 * n);  % High-frequency signal
x = s1 + s2; % Combined input signal

% Implement the original system: y[n] = 0.5(x[n] + x[n-1])
y_orig = 0.5 * (x + [0 x(1:end-1)]); 

% Implement the modified system: y[n] = 0.5(x[n] - x[n-1])
y_mod = 0.5 * (x - [0 x(1:end-1)]);

% Plot input signal
subplot(3,1,1);
stem(n, x, 'filled');
title('Input Signal x[n] = s1[n] + s2[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

% Plot output of original system
subplot(3,1,2);
stem(n, y_orig, 'r', 'filled');
title('Output of Original System (Low-pass Filter)');
xlabel('n'); ylabel('Amplitude');
grid on;

% Plot output of modified system
subplot(3,1,3);
stem(n, y_mod, 'g', 'filled');
title('Output of Modified System (High-pass Filter)');
xlabel('n'); ylabel('Amplitude');
grid on; 