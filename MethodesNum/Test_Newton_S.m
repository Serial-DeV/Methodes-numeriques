clear all;close all;
%Methode de Newton S

%[x,k,err]=Newton(@fonction3,@df3,1,1e-10,nb);


l = 11;
verr=zeros(1,l); % Dzfinit le vecteur ligne de longueur l
nb=1;
vk=zeros(1,l);


eps=1e-15;
x0=1;
xprec=x0+eps;
fxprec=feval(@fonction3,xprec);

while nb <= l
    disp(['Test avec un maximum de ',num2str(nb),' iteration(s)']);
    [x,k,err]=Newton_S(@fonction3,xprec,fxprec,x0,1e-5,nb);
    verr(nb)=err;vk(nb)=k;
    nb=nb+1;
end

semilogy(verr);
xlabel('k');
ylabel('Erreur');
title('Echelle Semilog en Y');