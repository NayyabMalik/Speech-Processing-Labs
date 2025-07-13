clc;
clear;
close all;

%% STEP 1: Set folder path containing .wav vowel recordings
folderPath = '/MATLAB Drive/vowel_data';  % <--- update this
vowels = {'a', 'e', 'i', 'o', 'u'};

%% STEP 2: Loop through each vowel
for i = 1:length(vowels)
    vowel = vowels{i};
    wavFile = fullfile(folderPath, [vowel '.m4a']);
    
    if ~exist(wavFile, 'file')
        warning('File not found: %s', wavFile);
        continue;
    end

    fprintf('\nProcessing vowel: %s\n', upper(vowel));
    
    % Load audio
    [x, Fs] = audioread(wavFile);
    if size(x,2) == 2
        x = mean(x, 2);  % Convert stereo to mono
    end
    
    % Use exactly 1024 samples (pad if shorter)
    N = 1024;
    if length(x) < N
        x = [x; zeros(N - length(x), 1)];  % Zero-padding
    else
        x = x(1:N);
    end
    t = (0:N-1) / Fs;
    
    %% Step 3: Manual DFT
    X = manual_dft(x);
    f = (0:N-1) * Fs / N;
    
    %% Step 4: Log Magnitude Spectrum
    logMag = log(1 + abs(X));
    
    %% Step 5: Manual IDFT (Cepstrum)
    cepstrum = real(manual_idft(logMag));
    q = (0:N-1) / Fs;  % quefrency axis
    
    %% Step 6: Plot everything
    figure('Name', ['Cepstrum Analysis - ' upper(vowel)], 'NumberTitle', 'off');
    
    subplot(2,2,1);
    plot(t, x);
    title(['Original Signal - ' upper(vowel)]);
    xlabel('Time (s)'); ylabel('Amplitude'); grid on;
    
    subplot(2,2,2);
    plot(f, abs(X));
    title('Magnitude Spectrum (Manual DFT)');
    xlabel('Frequency (Hz)'); ylabel('|X(f)|'); grid on;
    
    subplot(2,2,3);
    plot(f, logMag);
    title('Log-Magnitude Spectrum');
    xlabel('Frequency (Hz)'); ylabel('log(1 + |X(f)|)'); grid on;
    
    subplot(2,2,4);
    plot(q, cepstrum);
    title('Cepstrum (Manual IDFT)');
    xlabel('Quefrency (s)'); ylabel('Amplitude'); grid on;

    drawnow;  % Make sure the figure updates
    shg;      % Show graphics window
end

%% === Manual DFT Function ===
function X = manual_dft(x)
    N = length(x);
    X = zeros(1, N);
    for k = 0:N-1
        for n = 0:N-1
            X(k+1) = X(k+1) + x(n+1) * exp(-1j * 2 * pi * k * n / N);
        end
    end
end

%% === Manual IDFT Function ===
function x = manual_idft(X)
    N = length(X);
    x = zeros(1, N);
    for n = 0:N-1
        for k = 0:N-1
            x(n+1) = x(n+1) + X(k+1) * exp(1j * 2 * pi * k * n / N);
        end
        x(n+1) = x(n+1) / N;
    end
end
