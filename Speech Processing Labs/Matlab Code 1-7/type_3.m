function [Hr, w, c, L] = Hr_type(h)
    % Function to compute Hr(w) for an antisymmetric impulse response h(n) with odd M

    % Compute filter length
    M = length(h);
    
    % Ensure M is odd
    if mod(M,2) == 0
        error('M must be odd for this function.');
    end
    
    L = (M-1)/2; % Define half-length
    n = 1:L;  % Index range from 1 to L

    % Generate coefficient vector c(n)
    c = 2 * h(L - n + 1); % c(n) = 2*h((M-1)/2 - n)

    % Frequency vector
    w = (0:500) * pi / 500; % 501 points from 0 to pi

    % Compute Hr(w) using summation formula
    Hr = c * sin(w' * n); % Matrix multiplication for summation

end
