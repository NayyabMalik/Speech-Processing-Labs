 clc;
 clear all;
 close all;
 a=input('Enter the sequence :');
 N=length(a);
 disp('The length of the sequence is:');N
 for k=1:N
    y(k)=0;
    for i=1:N
        y(k)=y(k)+a(i)*exp((-2*pi*j/N)*((i-1)*(k-1)));
    end;
 end;
 k=1:N
 disp('The result is:');y
 figure(1);
 subplot(211);
 stem(k,abs(y(k)));
 xlabel('Sample values n');
 ylabel('Amplitude');
 title('Magnitude response of the DFT');
 subplot(212);
 stem(angle(y(k))*180/pi);
 xlabel('Sample values n');
 ylabel('Phase');
 title('Phase response of the DFT')