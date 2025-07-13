 clc;
 clear all;
 close all;
 a=input('Enter the sequence :');
 N=length(a);
 disp('The length of the sequence is:');N
 for n=1:N
 y(n)=0;
 for k=1:N
 y(n)=y(n)+a(k)*exp((2*pi*j*(k-1)*(n-1))/N);
 end;
 end;
 n=1:N
 y1=1/N*y(n);
 disp('The result is:');y1
 figure(1);
 stem(n,y1);
 xlabel('Sample values n');
 ylabel('Amplitude');
 title(Magnitude response of the IDFT');