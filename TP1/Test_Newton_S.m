clear all;close all;
%Methode de Newton S

%[x,k,err]=Newton(@fonction3,@df3,1,1e-10,nb);


l = 150;
verr=zeros(1,l); % Definit le vecteur ligne de longueur l
nb=1;
vk=zeros(1,l);


dx=1e-8;
x0=10;
xsuiv=x0-dx;
fxsuiv=feval(@fonction3,xsuiv);

while nb <= l
    disp(['Test avec un maximum de ',num2str(nb),' iteration(s)']);
    [x,k,err]=Newton_S(@fonction3,xsuiv,fxsuiv,x0,1e-3,nb);
    verr(nb)=abs(err);
    vk(nb)=k;
    nb=nb+1;
end

semilogy(verr);
xlabel('k');
ylabel('Erreur');
title('Erreur en fonction de k');