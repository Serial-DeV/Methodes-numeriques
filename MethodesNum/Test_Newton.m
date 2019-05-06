clear all;close all;clc;
%Methode de Newton

%[x,k,err]=Newton(@fonction3,@df3,1,1e-10,nb);


l = 10;
verr=zeros(1,l); % Definit le vecteur ligne de longueur l
nb=1;

while nb <= l
    [x,k,err]=Newton(@fonction3,@df3,1,1e-3,nb);
    verr(nb)=err;
    nb=nb+1;
end


figure(1);
subplot(2,1,1);
plot(verr);
xlabel('k');
ylabel('Erreur');
title('Echelle Normale');

subplot(2,1,2);
semilogy(verr);
xlabel('k');
ylabel('Erreur');
title('Echelle Semilog en Y');