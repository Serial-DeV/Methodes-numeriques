function [x,y,z,vx,vy,vz] = Evol3D(x0,y0,z0,vx0,vy0,vz0,dt)

    G=6.7e-11; %Constante gravitationnelle
    M=6e24; %Masse de la Terre

   
    x=x0+dt*(vx0-(dt*G*M*x0/(sqrt(x0^2+y0^2+z0^2))^3));
    vx=(x-x0)/dt;
    
    y=y0+dt*(vy0-(dt*G*M*y0/(sqrt(x0^2+y0^2+z0^2))^3));
    vy=(y-y0)/dt;
    
    z=z0+dt*(vz0-(dt*G*M*z0/(sqrt(x0^2+y0^2+z0^2))^3));
    vz=(z-z0)/dt;
    
    
    if x0 == 0
        x=dt*vx0;
        vx=x/dt;
    end
    
    if y0 == 0
        y=dt*vy0;
        vy=y/dt;
    end
    
    if z0 == 0
        z=dt*vz0;
        vz=z/dt;
    end
    
    if sqrt(x0^2+y0^2+z0^2) < 6360e3
        vx = 0;
        vy = 0;
        vz = 0;
        x = x0;
        y = y0;
        z = z0;
    end
    
    
    
end

