clear all
close all

%Här gör jag lite ändringar
test= 0;
testet= test+1;
%Nu gör jag en ändring HÄR


%HAHAHAHAHAH

fs= 1; %Hz
Ts=1/fs; % samplingstid
N= 100; %sample

t = (0:(N-1))*Ts; % samplingstillfallen (tidsvektor)
deltaf=0.0067;
f1 = 0.2;
f2 = f1 + deltaf; %och amplituderna 1. Lagg inte till nagot brus i denna simulering!
ynn = sin(2*pi*f1*t) + sin(2*pi*f2*t);
y=ynn;

L = N; % Zeropadding om L>N
Phi = abs(fft(y,L)).^2/N;
%Skapa en frekvensvektor for de positiva frekvenserna
f = (0:(L/2-1))*fs/L;

L2=10*N;
Phi2 = abs(fft(y,L2)).^2/N;
%Skapa en frekvensvektor for de positiva frekvenserna
f2 = (0:(L2/2-1))*fs/L2;

L3=100*N;
Phi3 = abs(fft(y,L3)).^2/N;
%Skapa en frekvensvektor for de positiva frekvenserna
f3 = (0:(L3/2-1))*fs/L3;


%Plotta spektrum
subplot(2,1,1)
plot(f, Phi(1:L/2))
grid on
xlabel('frequency, Hz')
ylabel('\Phi(f)')
subplot(2,1,2)
plot(f2, Phi2(1:L2/2))
grid on
xlabel('frequency, Hz')
ylabel('\Phi(f)')
figure
subplot(2,1,2)
plot(f3, Phi3(1:L3/2))
grid on
xlabel('frequency, Hz')
ylabel('\Phi(f)')

