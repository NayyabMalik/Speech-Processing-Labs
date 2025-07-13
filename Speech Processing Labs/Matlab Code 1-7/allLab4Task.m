clc; clear; close all;

N = 8; % Length of sequence
n = 0:N-1;
a = 0.2;

% Exponential Sequence
exp_seq = exp(a*n);
Exp_FFT = fft(exp_seq);

% Plot Exponential Sequence and FFT
figure;

subplot(3,1,1);
stem(n, exp_seq, 'filled'); title('Exponential Sequence');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,2);
stem(n, abs(Exp_FFT), 'filled'); title('Magnitude of FFT (Exponential)');
xlabel('Frequency index'); ylabel('|X(k)|');

subplot(3,1,3);
stem(n, angle(Exp_FFT), 'filled'); title('Phase of FFT (Exponential)');
xlabel('Frequency index'); ylabel('Phase(X(k))');
