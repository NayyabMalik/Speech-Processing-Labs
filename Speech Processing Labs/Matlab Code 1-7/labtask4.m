clc;
clear all;
close all;

%% Compute DFT by hand and using MATLAB for x and h
x = [1, 2, 3, 4];
h = [4, 3, 2, 1];
N = max(length(x), length(h));

% Manual DFT computation
X_manual = zeros(1, N);
H_manual = zeros(1, N);

for k = 0:N-1
    for n = 0:N-1
        X_manual(k+1) = X_manual(k+1) + x(n+1) * exp(-1j * 2 * pi * k * n / N);
        H_manual(k+1) = H_manual(k+1) + h(n+1) * exp(-1j * 2 * pi * k * n / N);
    end
end

% MATLAB Built-in DFT using fft()
X_fft = fft(x, N);
H_fft = fft(h, N);

% Plot Magnitude and Phase for both DFTs
figure;
subplot(2,2,1);
stem(abs(X_manual));
title('Magnitude of X (Manual DFT)');
xlabel('k'); ylabel('|X(k)|');

subplot(2,2,2);
stem(angle(X_manual) * 180 / pi);
title('Phase of X (Manual DFT)');
xlabel('k'); ylabel('Phase (degrees)');

subplot(2,2,3);
stem(abs(X_fft));
title('Magnitude of X (MATLAB FFT)');
xlabel('k'); ylabel('|X(k)|');

subplot(2,2,4);
stem(angle(X_fft) * 180 / pi);
title('Phase of X (MATLAB FFT)');
xlabel('k'); ylabel('Phase (degrees)');

%% Compute FFT for Step, Ramp, and Exponential Sequences
N = 16; % Length of FFT

% Step Sequence
step_seq = ones(1, N);
FFT_step = fft(step_seq, N);

% Ramp Sequence
ramp_seq = 0:N-1;
FFT_ramp = fft(ramp_seq, N);

% Exponential Sequence
exp_seq = exp(0.1 * (0:N-1));
FFT_exp = fft(exp_seq, N);

% Plot Step Sequence and its FFT
figure;
subplot(3,2,1);
stem(step_seq);
title('Step Sequence');
xlabel('n'); ylabel('Amplitude');

subplot(3,2,2);
stem(abs(FFT_step));
title('Magnitude of Step Sequence FFT');
xlabel('k'); ylabel('|X(k)|');

% Plot Ramp Sequence and its FFT
subplot(3,2,3);
stem(ramp_seq);
title('Ramp Sequence');
xlabel('n'); ylabel('Amplitude');

subplot(3,2,4);
stem(abs(FFT_ramp));
title('Magnitude of Ramp Sequence FFT');
xlabel('k'); ylabel('|X(k)|');

% Plot Exponential Sequence and its FFT
subplot(3,2,5);
stem(exp_seq);
title('Exponential Sequence');
xlabel('n'); ylabel('Amplitude');

subplot(3,2,6);
stem(abs(FFT_exp));
title('Magnitude of Exponential Sequence FFT');
xlabel('k'); ylabel('|X(k)|');
