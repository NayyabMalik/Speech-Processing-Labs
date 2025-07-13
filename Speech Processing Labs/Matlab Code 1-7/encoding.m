clc;
clear;
close all;

file_path = '/MATLAB Drive/segment_4.wav';



% Read the selected audio file
[audioData, fs] = audioread(file_path);

% Step 1: Perform Sampling (Downsampling the audio)
% Define new sampling rate
newSamplingRate = 8000; % 8kHz as an example for downsampling
audioDataDownsampled = resample(audioData, newSamplingRate, fs);
fsDownsampled = newSamplingRate;

% Step 2: Quantization
% Define the number of bits for quantization (e.g., 8-bit quantization)
nBits = 8; % 8-bit quantization
maxVal = max(abs(audioDataDownsampled)); % Find the maximum amplitude in the audio
quantizationLevels = 2^nBits; % Total number of quantization levels
quantizationStep = maxVal / (quantizationLevels / 2); % Calculate step size for quantization
quantizedAudio = round(audioDataDownsampled / quantizationStep); % Apply quantization

% Step 3: Encoding (Storing quantized audio as integer values)
encodedAudio = quantizedAudio;

% Plot original and quantized audio for comparison
subplot(2, 1, 1);
plot(audioDataDownsampled);
title('Downsampled Audio');

subplot(2, 1, 2);
plot(encodedAudio);
title('Quantized and Encoded Audio');

% Step 4: Save the encoded (quantized) audio to a new file
% Prepare the file name for saving
encodedFileName = strcat('encoded_', file);
encodedFilePath = fullfile(path, encodedFileName);

% Save the quantized audio to a new file (use 'audiowrite' for saving as WAV)
audiowrite(encodedFilePath, encodedAudio, fsDownsampled);

disp(['Encoded audio saved to: ', encodedFilePath]);