N = 40;
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
y = impz(num,den,N);
 % Plot the impulse response stem(y);
xlabel ( 'Time index n');
ylabel ('Amplitude');
title( 'Impulse Response') ;
grid ;