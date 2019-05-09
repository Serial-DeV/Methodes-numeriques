function [x,k,err] = Newton_S( funct,xsuiv,fxsuiv,x0,eps,kmax )
%funct est le fonction, xsuiv est le x suivant, fxsuiv son image par la fonction funct, x0 le point de depart, eps la tolerance et kmax le nombre d'iterations a ne pas depasser

    y=1/df_S(funct,xsuiv,x0,fxsuiv);
    [x,k,err]=Descente(funct,y,x0,eps,kmax );
end