function [Hr, w, a, L] = Hr_type(h)
    % Function to compute Hr for a given impulse response h
    
    % Compute filter length
    M = length(h);
    L = (M-1)/2; % Ensure M is odd
    
    % Generate coefficients
     = [h(L+1), 2*h(L:-1:1)]; % Construct coefficient vector

    % Frequency vector
    w = (0:500) * pi / 500; % 501 points from 0 to pi

    % Compute Hr(w)
    n = 0:L;
    Hr = cos(w' * n) * a'; % Matrix multiplication to compute response

end
