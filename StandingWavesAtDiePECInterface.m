z=-8:0.001:0;
t=0;
Emax=5;
h=animatedline;

for k=1:200
     
    E=2*Emax.*sin(t*pi*5).*sin(z*5);
    H=2*(Emax/1.33)*cos(t*pi*5).*cos(z*5);
    plot(z,E,'r',z,H,'b'),legend('E','H');
    axis([-8 5 -20 20]);
    xlabel('Z-Distance');
    ylabel('RED-> E Field & BLUE-> H Field');
    x1=xline(0,'b',{'DIELECTRIC','MEDIUM'});
    x1.LabelHorizontalAlignment='left';
    f(k)=getframe(gcf);
    grid on;
    pause(0.05);
    t=t+0.005;
end
video= VideoWriter('StandingWavesAtDiePECInterface','MPEG-4');
video.FrameRate=8;
open(video);
writeVideo(video,f);
close(video);

