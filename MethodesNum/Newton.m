function [x,k,err] = Newton( funct,df,x0,eps,kmax )
    [x,k,err]=Descente(funct,1/feval(df,x0),x0,eps,kmax );
end