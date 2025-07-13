 n = -10:10;
 impulse = [zeros(1,10) 1 zeros(1,20)];
 stem(n, impulse );
 title ( 'Unit Impulse Sequence');
 xlabel( 'n' ); ylabel( 'Amplitude' );
 grid on;