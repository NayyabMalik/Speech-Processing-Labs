% Define numerator and denominator coefficients
num = [2 16 44 56 32]; % Coefficients of numerator
den = [3 3 -15 18 -12]; % Coefficients of denominator

% Convert to factored form using zero-pole representation
[z, p, k] = tf2zp(num, den);

% Display zeros, poles, and gain
disp('Zeros:');
disp(z);
disp('Poles:');
disp(p);
disp('Gain:');
disp(k);

% Plot pole-zero diagram
figure;
zplane(num, den);
title('Pole-Zero Plot of G(z)');

% Determine the ROC (Region of Convergence)
% ROC depends on system stability:
if all(abs(p) < 1)
    disp('ROC: Outside the outermost pole (causal system)');
elseif all(abs(p) > 1)
    disp('ROC: Inside the innermost pole (anti-causal system)');
else
    disp('ROC: Bilateral (two-sided) system');
end
