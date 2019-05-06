function [x,k,err] = Newton_S( funct,xprec,fxprec,x0,eps,kmax )
    y=df_S(funct,xprec,x0,fxprec);
    y=1/y;
    [x,k,err]=Descente(funct,y,x0,eps,kmax );
end