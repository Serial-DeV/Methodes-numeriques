function [x1,x2,k,err] = Descente2D( funct,p,x0,x0bis,eps,kmax )
    
    k=0;%Initialisation de k a 0
    x1=x0;%Point de depart
    x2=x0bis;
    err=feval(funct,x0,x0bis);%Calcul de l'erreur initiale
    
    while abs(err) > eps && k < kmax % tant que l'erreur est superieure a la tolerance eps et le nombre d'iterations inferieur a celui en parametre 
        [y1,y2]=feval(funct,x1,x2);
        err=sqrt(y1*y1+y2*y2);%Calcul de la nouvelle erreur
        x1=x1-p*y1;
        x2=x2-p*y2;
        k=k+1;
    end
    
    if abs(err) > eps %Si la valeur absolue de l'erreur est superieure a la tolerance (et le nombre max d'iterations est depasse) : pas de convergence
        warning('kmax depasse : pas convergent');
    end
    
    %Le warning suivant n'est pas demandé, mais permet de verifier s'il y a
    %bien convergence
    if abs(err) <= eps %Si la valeur absolue de l'erreur est inferieure a la tolerance : convergence
        warning('convergent');
    end

end

