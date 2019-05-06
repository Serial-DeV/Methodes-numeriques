function valt = TimeLoop(x0,v0,T,dt)
    altSurf=6360e3; %Altitude de la surface de la Terre
    n=round(T/dt);%Longueur des vecteur
    nvar=1;%Case actuelle vecteur
    valt=zeros(1,n);
    vtps=zeros(1,n); 
    Tact=0;%Au debut on est a Tact=0s
    while n>=0
        valt(nvar)=x0-altSurf;
        vtps(nvar)=Tact;
        Tact=Tact+dt;
        [x0,v0]=Evol(x0,v0,dt);
        n=n-1;
        pause(dt/100);
        plot(vtps(nvar),valt(nvar),'R*');
        axis([0 T 0 3000]);

        xlabel('Temps');
        ylabel('Altitude finale');
        title('AF apres chute pendant T');
        
        nvar=nvar+1;

    end
    
  
    
    
    
end

