function [valtx,valty,valtz,vdist,vtps] = TimeLoop3d(x0,y0,z0,vx0,vy0,vz0,T,dt)

    altSurf=6360e3; %Altitude de la surface de la Terre
    n=round(T/dt);%Longueur des vecteur
    nvar=1;%Case actuelle vecteur
    valtx=zeros(1,n);
    valty=zeros(1,n);
    valtz=zeros(1,n);
    vtps=zeros(1,n); 
    vdist=zeros(1,n);
    Tact=0;%Au debut on est a Tact=0s
    k=1;
    
    
    
    while n>=0
        valtx(nvar)=x0;
        valty(nvar)=y0;
        valtz(nvar)=z0;
        vdist(nvar)=sqrt(x0^2+y0^2+z0^2)-altSurf;
        
        if vdist(nvar)<0 %Imposible d'aller sous la surface de la Terre (pour une fusee)
            warning('La fusee est a 0m')
        end
        
        if nvar>=100
            k=k+1;
        end
            
        
        vtps(nvar)=Tact;
        Tact=Tact+dt;
        
        figure(1)
        pause(dt/10000);
        nvarm=nvar-1;
        
        if nvarm == 0
            nvarm = 1;
        end
        
        subplot(1,2,1)
        
        
        th = 0:pi/50:2*pi;
        xunit = altSurf * cos(th);
        yunit = altSurf * sin(th);
        
        
        
        %plot3(valtx(k:nvarm),valty(k:nvarm),valty(k:nvarm),':.',valtx(nvar),valty(nvar),valty(nvar),':r*',0,0,0,'ro');
        %plot(vtps(nvar),valty(nvar),'*');
        plot(valtx(k:nvarm),valty(k:nvarm),'.',valtx(nvar),valty(nvar),'*',xunit,yunit,'r',0,0,'ro');
        
        %valAx=2e40;
        %axis([-valAx valAx -valAx valAx -valAx valAx]);
        %view([0 0 1]);
        
        grid on;
        distAff = vdist(nvar)+2*altSurf;
        axis([-distAff distAff -distAff distAff]);
        %xlabel('TEMPS');
        xlabel('X');
        ylabel('Y');
        %zlabel('Z');
        title('Evolution de la position');
        
        subplot(1,2,2)
        plot(vtps(1:nvar),vdist(1:nvar),'R');
        axis([0 1+1.1*vtps(nvar) min(vdist) 1.1*max(vdist)+1]);
        xlabel('TEMPS');
        ylabel('Distance Terre Fusee');
        title('Evolution distance Terre Fusee');
        
        
        nvar=nvar+1;
        [x0,y0,z0,vx0,vy0,vz0]=Evol3D(x0,y0,z0,vx0,vy0,vz0,dt);
        n=n-1;
    end
    
   
    
    
end

