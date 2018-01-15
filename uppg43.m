
clear all
%close all

load('prob3_data.mat')

Ts=1/fs; % samplingstid

P=2; %til bartletts
P2=4;
P3= 8;
P4= 25;

t = (0:(N-1))*Ts; % samplingstillfallen (tidsvektor)
L = N; % Zeropadding om L>N
phi=bartlettse(y,P,L);
phi2=bartlettse(y,P2,L);
phi3=bartlettse(y,P3,L);
phi4=bartlettse(y,P4,L);

%Phi = abs(fft(y,L)).^2/N;
%Skapa en frekvensvektor for de positiva frekvenserna
f = (0:(L/2-1))*fs/L;

%Plotta spektrum
subplot(2,2,1)
plot(f, phi(1:L/2))
grid on
xlabel('frequency, Hz')
ylabel('\Phi(f)')
subplot(2,2,2)
plot(f, phi2(1:L/2))
grid on
xlabel('frequency, Hz')
ylabel('\Phi(f)')
subplot(2,2,4)
plot(f, phi3(1:L/2))
grid on
xlabel('frequency, Hz')
ylabel('\Phi(f)')
subplot(2,2,3)
plot(f, phi4(1:L/2))
grid on
xlabel('frequency, Hz')
ylabel('\Phi(f)')
