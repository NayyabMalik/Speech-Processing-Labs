function [Hr, w, d, L] = Hr_type4(h)
    % Function to compute Hr(w) for a Type-4 FIR filter (antisymmetric, even M)
    %
    % [Hr, w, d, L] = Hr_type4(h)
    % Hr = Frequency response (real part should be zero)
    % w  = Frequency vector (0 to π)
    % d  = Coefficients used in summation formula
    % L  = Half-length of filter (M/2)
    %
    % Input:
    %  h = Impulse response of the Type-4 FIR filter (M must be even)
    
    % Compute filter length
    M = length(h);
    
    % Ensure M is even
    if mod(M,2) ~= 0
        error('M must be even for a Type-4 FIR filter.');
    end
    
    L = M / 2; % Half-length of filter
    n = 1:L;   % Index range from 1 to L

    % Generate coefficient vector d(n)
    d = 2 * h(L - n + 1); % d(n) = 2 * h(M/2 - n)

    % Frequency vector (501 points from 0 to pi)
    w = (0:500)' * pi / 500; 

    % Compute Hr(w) using summation formula
    Hr = d * sin(w * (n - 0.5)); % Matrix multiplication for summation

end
