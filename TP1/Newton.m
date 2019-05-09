function [x,k,err] = Newton( funct,df,x0,eps,kmax )
%funct est le fonction,df sa derivee calculee a la main, x0 le point de depart, eps la tolerance et kmax le nombre d'iterations a ne pas depasser

    [x,k,err]=Descente(funct,1/feval(df,x0),x0,eps,kmax );
end