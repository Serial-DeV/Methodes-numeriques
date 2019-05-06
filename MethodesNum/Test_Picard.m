clear all;close all;clc;


%[x,k,err]=Descente(@fonction1,1.5,10,1e-10,100);
%Converge


%[x,k,err]=Descente(@fonction1,1.,10,1e-30,100);
%Ne converge pas

%[x,k,err]=Descente(@fonction1,1.,10,1e-25,100);
%Converge


%[x,k,err]=Descente(@fonction2,0.15,10,1e-10,nb);
%Converge

%[x,k,err]=Descente(@fonction3,0.05,10,1e-10,nb);
%Ne Converge pas

l = 90;
verr=zeros(1,l); % Définit le vecteur ligne de longueur l
nb=1;

while nb <= l
    [x,k,err]=Descente(@fonction2,0.5,10,1e-10,nb);
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





