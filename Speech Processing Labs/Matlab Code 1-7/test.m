syms n
x=1/1^n
ztrans(x)
syms Z 
 % Inverse Z-transform
 f =Z/(Z-1);
 iztrans(f)
 num=[1 0]
 den=[1,-1]
 [zeros, p, k] = tf2zp(num, den)