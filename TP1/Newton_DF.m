function [x,k,err] = Newton_DF( funct,x0,eps,kmax )
%funct est le fonction, x0 le point de depart, eps la tolerance et kmax le nombre d'iterations a ne pas depasser

    [x,k,err]=Descente(funct,1/df_DF(funct,x0),x0,eps,kmax );
end