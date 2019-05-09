function [x,k,err] = Descente( funct,p,x0,eps,kmax )
    
    k=0;%Initialisation de k a 0
    x=x0;%Point de depart
    err=feval(funct,x0);%Calcul de l'erreur
    
    while abs(err) > eps && k < kmax
        xtmp=x-p*feval(funct,x);
        err=feval(funct,x);
        x=xtmp;
        k=k+1;
    end
    
    if abs(err)<=eps
        warning('convergent');
    end
    
    if abs(err) > eps %Si l'erreur est trop elevee  : pas de convergence
        warning('kmax depasse : pas convergent');
    end

end

