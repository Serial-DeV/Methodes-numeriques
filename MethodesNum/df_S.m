function y = df_S(func,x1,x2,fxprec)
    y=(feval(func,x2)-fxprec)/(x2-x1);
end