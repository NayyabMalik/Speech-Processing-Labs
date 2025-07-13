clc;
clear all;
close all;

% Define given sequences
x = [1, 2, 3, 4];  % Step sequence for x
h = [4, 3, 2, 1];  % Step sequence for h

% Compute FFT length (max sequence length)
N = max(length(x), length(h));

% Compute FFT for the sequences
X_fft = fft(x, N);
H_fft = fft(h, N);

% Compute Magnitude and Phase
mag_X = abs(X_fft);
phase_X = angle(X_fft) * 180 / pi; % Convert phase to degrees

mag_H = abs(H_fft);
phase_H = angle(H_fft) * 180 / pi; % Convert phase to degrees

% Define time indices
n = 0:N-1; 

% Plot x[n] and its FFT
figure;
subplot(3,2,1);
stem(n, x, 'filled');
title('Step Sequence x[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,2,3);
stem(0:N-1, mag_X, 'filled');
title('Magnitude Spectrum of x[n]');
xlabel('k'); ylabel('|X(k)|');
grid on;

subplot(3,2,5);
stem(0:N-1, phase_X, 'filled');
title('Phase Spectrum of x[n]');
xlabel('k'); ylabel('Phase (degrees)');
grid on;

% Plot h[n] and its FFT
subplot(3,2,2);
stem(n, h, 'filled');
title('Step Sequence h[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,2,4);
stem(0:N-1, mag_H, 'filled');
title('Magnitude Spectrum of h[n]');
xlabel('k'); ylabel('|H(k)|');
grid on;

subplot(3,2,6);
stem(0:N-1, phase_H, 'filled');
title('Phase Spectrum of h[n]');
xlabel('k'); ylabel('Phase (degrees)');
grid on;
