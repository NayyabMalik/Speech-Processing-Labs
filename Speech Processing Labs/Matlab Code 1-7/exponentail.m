clc;
clear all;
close all;

% Define the given sequences
x = [1, 2, 3, 4];
h = [4, 3, 2, 1];

% Define an exponential sequence
n = 0:3; % Time indices
exp_seq = exp(0.5 * n); % Exponential sequence e^(0.5n)

% Compute FFT length (take max of all sequence lengths)
N = max([length(x), length(h), length(exp_seq)]);

% Compute FFT for the sequences
X_fft = fft(x, N);
H_fft = fft(h, N);
Exp_fft = fft(exp_seq, N);

% Compute Magnitude and Phase
mag_X = abs(X_fft);
phase_X = angle(X_fft) * 180 / pi; % Convert phase to degrees

mag_H = abs(H_fft);
phase_H = angle(H_fft) * 180 / pi; % Convert phase to degrees

mag_Exp = abs(Exp_fft);
phase_Exp = angle(Exp_fft) * 180 / pi; % Convert phase to degrees

% Plot x[n] and its FFT
figure;
subplot(3,3,1);
stem(n, x, 'filled');
title('Input Sequence x[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,3,4);
stem(0:N-1, mag_X, 'filled');
title('Magnitude Spectrum of x[n]');
xlabel('k'); ylabel('|X(k)|');
grid on;

subplot(3,3,7);
stem(0:N-1, phase_X, 'filled');
title('Phase Spectrum of x[n]');
xlabel('k'); ylabel('Phase (degrees)');
grid on;

% Plot h[n] and its FFT
subplot(3,3,2);
stem(n, h, 'filled');
title('Impulse Response h[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,3,5);
stem(0:N-1, mag_H, 'filled');
title('Magnitude Spectrum of h[n]');
xlabel('k'); ylabel('|H(k)|');
grid on;

subplot(3,3,8);
stem(0:N-1, phase_H, 'filled');
title('Phase Spectrum of h[n]');
xlabel('k'); ylabel('Phase (degrees)');
grid on;

% Plot exponential sequence and its FFT
subplot(3,3,3);
stem(n, exp_seq, 'filled');
title('Exponential Sequence e^{0.5n}');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,3,6);
stem(0:N-1, mag_Exp, 'filled');
title('Magnitude Spectrum of e^{0.5n}');
xlabel('k'); ylabel('|Exp(k)|');
grid on;

subplot(3,3,9);
stem(0:N-1, phase_Exp, 'filled');
title('Phase Spectrum of e^{0.5n}');
xlabel('k'); ylabel('Phase (degrees)');
grid on;
