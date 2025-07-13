clc;
clear;
close all;
[signal,sample_freq]=audioread("segment_4.wav");
% Plot the original signal
t = (0:length(signal)-1) / sample_freq; % Time vector
figure;
plot(t, signal);
title('Original Audio Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%% Task 2
f_max=8000;
signal_downsample=resample(signal,f_max,sample_freq);
% Plot the downsampled signal
t_new = (0:length(signal_downsample)-1)/f_max;
figure;
plot(t_new, signal_downsample);
title('Downsampled Audio Signal (8 kHz)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
%% Task 3
n=8;
l=2^n;
max_q=max(signal_downsample);
min_q=min(signal_downsample);
step_size=max_q-min_q/l;
quantize_signal=round((signal_downsample - min_q) / step_size) * step_size + min_q;
% Plot quantized signal
figure;
plot(t_new, quantize_signal);
title('Quantized Audio Signal (8-bit)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
%% Task 4:Encoding
encoding=dec2bin(floor(quantize_signal-min_q)/step_size,n);
% Display first few binary-encoded samples
disp('First few binary-encoded samples:');
disp(encoding(1:10, :));
%% Task 5:Audio write
audiowrite(quantize_audio.wav,quantize_signal,f_max);
disp('Quantized audio saved as quantized_audio.wav');
