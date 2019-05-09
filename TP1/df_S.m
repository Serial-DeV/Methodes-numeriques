function y = df_S(func,xsuiv,x0,fxsuiv)
    y=(fxsuiv-feval(func,x0))/(xsuiv-x0);
end