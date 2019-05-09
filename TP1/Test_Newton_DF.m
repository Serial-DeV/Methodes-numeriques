clear all;close all;
%Methode de Newton DF

l = 150;
verr=zeros(1,l); % Definit le vecteur ligne de longueur l
nb=1;

while nb <= l
    disp(['Test avec un maximum de ',num2str(nb),' iteration(s)']);
    [x,k,err]=Newton_DF(@fonction3,10,1e-3,nb);
    verr(nb)=abs(err);
    nb=nb+1;
end

semilogy(verr);
xlabel('k');
ylabel('Erreur');
title('Erreur en fonction de k');