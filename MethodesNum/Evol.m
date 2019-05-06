function [x,v] = Evol(x0,v0,dt)
G=6.7e-11; %Constante gravitationnelle
M=6e24; %Masse de la Terre
%v=v0+(-dt*G*M/(x0*x0));
x=x0+dt*(v0+(-dt*G*M/(x0*x0)));
v=(x-x0)/dt;

if x < 6360e3 %Imposible d'aller sous la surface de la Terre (pour une fusee)
    x=6360e3;
    v=0;
end
end

