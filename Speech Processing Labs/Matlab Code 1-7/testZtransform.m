syms z
x=2*z^4+16*z^3+44*z^2+56*z+32/3*z^4+3*z^3-15*z^2+18*z-12
ztrans(x);
num=[2,16,44,56,32];
den=[3,3,-15,18,-12];
[zeros,pole,k]=tf2zp(num,den);