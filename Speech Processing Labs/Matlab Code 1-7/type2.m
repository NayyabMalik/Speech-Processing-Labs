function [Hr, w, b, L] = Hr_type(h)
    % Function to compute Hr(w) for a symmetrical impulse response h(n) with even M

    % Compute filter length
    M = length(h);
    
    % Ensure M is even
    if mod(M,2) ~= 0
        error('M must be even for this function.');
    end
    
    L = M / 2; % Define half-length

    % Generate coefficient vector b(n)
    b = 2 * h(L - (0:L-1)); % b(n) = 2*h(M/2 - n), for 1 ≤ n ≤ M/2
    
    % Frequency vector
    w = (0:500) * pi / 500; % 501 points from 0 to pi

    % Compute Hr(w)
    n = 1:L;
    Hr = b * cos(pi * (n - 1/2))'; % Matrix multiplication

end
