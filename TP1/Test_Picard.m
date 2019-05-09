clear all;close all;


l = 100;
verr=zeros(1,l); % Definit le vecteur ligne de longueur
nb=1;
x0 = 10;
eps = 1e-3;

p1 = 0.11;
p2 = 0.1;
p3 = 0.09;
p4 = 0.08;

while nb <= l
    [x,k,err]=Descente(@fonction3,p1,x0,eps,nb);
     verr(nb)=abs(err);
     nb=nb+1;
end

verr2=zeros(1,l); % Definit le vecteur ligne de longueur l
nb=1;

while nb <= l
    [x,k,err]=Descente(@fonction3,p2,x0,eps,nb);
     verr2(nb)=abs(err);
     nb=nb+1;
end

verr3=zeros(1,l); % Définit le vecteur ligne de longueur l
nb=1;

while nb <= l
    [x,k,err]=Descente(@fonction3,p3,x0,eps,nb);
     verr3(nb)=abs(err);
     nb=nb+1;
end

verr4=zeros(1,l); % Definit le vecteur ligne de longueur l
nb=1;

while nb <= l
    [x,k,err]=Descente(@fonction3,p4,x0,eps,nb);
     verr4(nb)=abs(err);
     nb=nb+1;
end


figure(1);

subplot(4,1,1);
semilogy(verr);
xlabel('k');
ylabel('Erreur');
title(['Erreur en fonction de k pour p = ',num2str(p1)]);

subplot(4,1,2);
semilogy(verr2);
xlabel('k');
ylabel('Erreur');
title(['Erreur en fonction de k pour p = ',num2str(p2)]);

subplot(4,1,3);
semilogy(verr3);
xlabel('k');
ylabel('Erreur');
title(['Erreur en fonction de k pour p = ',num2str(p3)]);

subplot(4,1,4);
semilogy(verr4);
xlabel('k');
ylabel('Erreur');
title(['Erreur en fonction de k pour p = ',num2str(p4)]);

p = 0.0933; % Pente
pf = 0.0935; % Pente finale
inc = 0.000001; % Incrément


while p < pf
    
    pause(0.01);
    verr5=zeros(1,l); % Definit le vecteur ligne de longueur
    nb=1;

    while nb <= l
        [x,k,err]=Descente(@fonction3,p,x0,eps,nb);
        verr5(nb)=abs(err);
        nb=nb+1;
    end
    
    figure(2);
    semilogy(verr5);
    axis([0 l min(verr5) max(verr5)]);
    xlabel('k');
    ylabel('Erreur');
    title(['Erreur en fonction de k pour p = ',num2str(p)]);
    
    p = p + inc;
    
end


