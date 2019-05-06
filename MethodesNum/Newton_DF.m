function [x,k,err] = Newton_DF( funct,x0,eps,kmax )
    [x,k,err]=Descente(funct,1/df_DF(funct,x0),x0,eps,kmax );
end