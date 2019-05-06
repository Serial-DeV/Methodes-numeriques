function [x,y,z,vx,vy,vz] = Evol3D(x0,y0,z0,vx0,vy0,vz0,dt)

    G=6.7e-11; %Constante gravitationnelle
    M=6e24; %Masse de la Terre

   
    vx=vx0-(dt*G*M*x0/(sqrt(x0^2+y0^2+z0^2))^3);
    x=x0+dt*vx;
    
    vy=vy0-(dt*G*M*y0/(sqrt(x0^2+y0^2+z0^2))^3);
    y=y0+dt*vy;
    
    vz=vz0-(dt*G*M*z0/(sqrt(x0^2+y0^2+z0^2))^3);
    z=z0+dt*vz;
    
    
    if x0 == 0
        vx=vx0;
        x=dt*vx;
    end
    
    if y0 == 0
        vy=vy0;
        y=dt*vy;
    end
    
    if z0 == 0
        vz=vz0;
        z=dt*vz;
    end
    
    
    
end

