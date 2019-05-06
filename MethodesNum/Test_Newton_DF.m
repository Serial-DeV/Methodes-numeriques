clear all;close all;
%Methode de Newton DF

%[x,k,err]=Newton(@fonction3,@df3,1,1e-10,nb);


l = 10;
verr=zeros(1,l); % Definit le vecteur ligne de longueur l
nb=1;

while nb <= l
    [x,k,err]=Newton_DF(@fonction3,1,1e-3,nb);
    verr(nb)=err;
    nb=nb+1;
end

semilogy(verr);
xlabel('k');
ylabel('Erreur');
title('Echelle Semilog en Y');