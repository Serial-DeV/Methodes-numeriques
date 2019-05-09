function valt = TimeLoop(x0,v0,T,dt)
    altSurf=6360e3; %Altitude de la surface de la Terre
    n=round(T/dt);%Longueur des vecteur
    nvar=1;%Case actuelle vecteur
    valt=zeros(1,n);%Vecteur des altitudes
    vtps=zeros(1,n);%Vecteur du temps
    Tact=0;%Au debut on est a Tact=0s
    AuSol = 0;
    hold on;
    while n>=0
        valt(nvar)=x0-altSurf;
        vtps(nvar)=Tact;
        Tact=Tact+dt;
        [x0,v0]=Evol(x0,v0,dt);
        n=n-1;
        pause(dt/100);% Le /100 permet d'accelerer l'affichage
        plot(vtps(nvar),valt(nvar),':R.');
        axis([0 T 0 3000]);

        xlabel('Temps');
        ylabel('Altitude finale');
        title('AF apres chute pendant T');
        if AuSol == 0 && x0 <= altSurf
            disp(['La fusee a touche le sol apres ',num2str(vtps(nvar)),' seconde(s)']);
            AuSol = 1;
        end
        nvar=nvar+1;

    end
    
  
    
    
    
end

