% Ingående storheter
I=1.04;		% Ström, Ampere
r=0.155;	% Spolens radie, Meter
N=130;		% Spolens antal lindningar

% Parametrar för teoretiska beräkningar
xstep=0.00005;
zstep=0.00005;
xt=[0:xstep:0.2];
y=0;
zt=[-0.2:zstep:0.5];

% Mätdataplot längs z-axeln
% Det här är inte beräknande kod, bara en massa värden definierade som variabler. 
zm=[-0.20:0.02:0.50];
Bzminput=[7.1 8.7 10.7 13.0 15.8 18.8 20 24.4 26.3 27 26.3 25.5 22.8 19.7 16.6 13.7 11.4 9.3 7.7 6.3 5.1 4.2 3.5 2.8 2.4 1.9 1.6 1.3 1.1 1 0.8 0.6 0.5 0.3 0.2 0.1];
Bzm=Bzminput./4.92;

% Numeriskt längs z-axeln
%dBzn=10^-3*

% Analytiskt längs z-axeln
A=(r^2)*pi;			% Spolens area, m^2
d=sqrt(r^2+zt.^2);		% Avstånd från spole till mätpunkt, meter
Bza=10^-3*(2*I*N*A)./(d.^3);	% Magnetisk fältstyrka [1 Gauss = 10^-4 Tesla]

% z-plot, naturligtvis skitsnygg eftersom jag kodat den //Togald
plot(zm,Bzm,'k',zt,Bza,'g');
xlabel('Distance from the solenoid center, meters');
ylabel('Magnetic field strength, Gauss [1 Gauss = Tesla*10^-4]');
title('Magnetic field strength along the z axis');
legend('Measured values','Analytically calculated values','Location','NorthEast');
