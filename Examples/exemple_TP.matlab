clear all	% vide le workspace
close all 	% ferme les fenêtres
clc 		% vide l'invité de commande

N = 100; 	% nombre de points
Fe = 1e3; 	% fréquence d'échantillonage
Te = 1/Fe;

t=0:Te: (N-1)*Te;	% vecteur temps		% t = 0 à Te par pas de (N-1)*Te
f=0:Fe/N: Fe - Fe/N; 	% vecteur fréquence

f0 = 60;		% fréquence du signal
xt = sin (2*pi*f0*t);	% signal
xf = fft(xt); 		% FFT du signal

figure
set (gcf, 'color', 'white') 	% fond blanc

subplot (2, 1, 1)
plot (t, xt, '*-')
xlabel ('t (s)', 'fontsize', 14)
ylabel ('xt', 'fontsize', 14)
set (gca, 'fontsize', 14) 	% taille des polices des axes


subplot (2, 1, 2)
plot (f, xf, '*-')
xlabel ('f (Hz)', 'fontsize', 14)
ylabel ('|xf|', 'fontsize', 14)
set (gca, 'fontsize', 14) 	% taille des polices des axes


%%%%% Section code Antoine
clear all;
close all;
fe = 8000;
N = 100;
axe_f = (0:N-1)*fe/N;
t = (1:N)/fe;
f = 1000;
a = 1;
f1 = 100;
y = a*sin(2*pi*f*t);
TFy = fft(y);
subplot(2,1,1);
plot(t,y);
subplot(2,1,2);
plot(axe_f,TFy);
