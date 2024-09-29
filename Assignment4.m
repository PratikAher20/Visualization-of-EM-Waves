teta_i=-1:pi/128:pi/2;
n1=1.5;
n2=1.33;
teta_t=asin((n1./n2)*sin(teta_i));
h1=animatedline('LineWidth',1,'Color','r');
h2=animatedline('LineWidth',1,'Color','b');
N_per=-1*sin(teta_i-teta_t);
D_per=sin(teta_i+teta_t);
N_par=tan(teta_i-teta_t);
D_par=tan(teta_i+teta_t);
RF_per=(N_per)./(D_per);
RF_par=(N_par)./(D_par);
xlabel('INCIDENCE ANGLE(IN RADIANS)');
ylabel('SQARE OF REFLECTION COEFFICIENT');
title('GLASS WATER INTERFACE:-RED=Perpendicular BLUE=Parallel');
for i=1:length(teta_i)
    
 addpoints(h1,teta_i(i),abs(RF_per(i)).^2,0);
   
 addpoints(h2,teta_i(i),abs(RF_par(i)).^2,0);
  
drawnow
pause(0.05);
grid on;
hold on;
axis([-0.5 pi/2 -1 1.2]);
end


