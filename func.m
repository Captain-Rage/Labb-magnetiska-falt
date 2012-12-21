% 
% Usage: func. This function does not take any input arguments. 
% 

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Ingående parametrar, konstanter, övrigt
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Ingående storheter
I=1.04;		% Ström, Ampere
r=0.155;	% Spolens radie, Meter
N=130;		% Spolens antal lindningar
mVtoGauss=1/4.92;	% Faktor för omvandling mellan mV och Gauss

% Parametrar för teoretiska beräkningar
xstep=0.00005;
zstep=0.00005;
xt=[0:xstep:0.2];
y=0;
zt=[-0.2:zstep:0.5];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Mätserie nummer 1, Bz
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Numeriskt längs z-axeln
%dBzn=10^-3*

% Analytiskt längs z-axeln
A=(r^2)*pi;			% Spolens area, m^2
d=sqrt(r^2+zt.^2);		% Avstånd från spole till mätpunkt, meter
Bza=10^-3*(2*I*N*A)./(d.^3);	% Magnetisk fältstyrka [1 Gauss = 10^-4 Tesla]

% Mätdata längs z-axeln
% Det här är inte beräknande kod, bara en massa värden definierade som variabler. 
zm=[-0.20:0.02:0.50];
Bzm=mVtoGauss.*[7.1 8.7 10.7 13.0 15.8 18.8 20 24.4 26.3 27 26.3 25.5 22.8 19.7 16.6 13.7 11.4 9.3 7.7 6.3 5.1 4.2 3.5 2.8 2.4 1.9 1.6 1.3 1.1 1 0.8 0.6 0.5 0.3 0.2 0.1];

% Plot längs z-axeln
plot(zm,Bzm,'k',zt,Bza,'g');
xlabel('Distance from the solenoid center, meters');
ylabel('Magnetic field strength, Gauss [1 Gauss = Tesla*10^-4]');
title('Magnetic field strength along the z axis');
legend('Measured values','Analytically calculated values','Location','NorthEast');

% Numeriskt längs x-axeln


% Mätdata längs x-axeln
% Det här är inte beräknande kod, bara en massa värden definierade som variabler. 


% Plot längs x-axeln


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Mätserie nummer 2, aka the meshgrid
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Beräknad fältstyrka, tredimensionellt


% Mätdata


% Skitsnygg plot


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Mätserie nummer 3, Bx
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Numeriskt längs x-axeln


% Mätdata längs x-axeln


% Plot längs x-axeln
