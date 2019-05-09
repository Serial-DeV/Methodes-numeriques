clear all;close all;clc;

l = 10000;
vpos=zeros(1,l); % Vecteur des altitudes finales par rapport a la surface
vdep=zeros(1,l); % Vecteur des altitudes de lancer par rapport a la surface
altSurf=6360e3; %Altitude de la surface de la Terre
nb=altSurf;%On part de la surface
nb2=1;%Indice case vecteur
dt=1000; %Duree du lacher
v0=50000;

while nb2 <= l
        [x,v]=Evol(nb,v0,dt);
        vpos(nb2)=x-altSurf;%Altitude finale par rapport a la surface de la Terre
        vdep(nb2)=nb-altSurf;%Altitude initiale par rapport a la surface de la Terre
        nb=nb+1e3;%On teste en lachant de 1000km plus haut
        nb2=nb2+1;
end


figure(1);
plot(vdep,vpos);
xlabel('Altitude du lacher');
ylabel('Altitude finale');
title('AF apres chute depuis A0 pendant dt');