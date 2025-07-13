% Define numerator and denominator coefficients
b = [0 1 1]; % Coefficients of numerator
a = [1 -2 3]; % Coefficients of denominator

% Compute and display the roots (zeros and poles)
zero_roots = roots(b);
pole_roots = roots(a);

disp('Zeros:');
disp(zero_roots);
disp('Poles:');
disp(pole_roots);

% Plot the pole-zero diagram
figure;
zplane(b, a);
title('Pole-Zero Plot');

% Compute and display the frequency response
Fs = 1000; % Sampling frequency
figure;
freqz(b, a, Fs);
title('Frequency Response');

% Compute and plot the impulse response
figure;
impz(b, a);
title('Impulse Response');
