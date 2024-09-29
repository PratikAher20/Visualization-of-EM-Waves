z=-10*pi:0.01:10*pi;
t=0;
i=0;
j=0;

for k=1:200  
    %       phase                group
    E=2*cos(t*2*pi*5-z*5).*cos(t*4*pi*0.1-(0.1*z));
    x1=xline(i,'g',{'GROUP','VELOCITY'});
    x1.LabelVerticalAlignment='top';
    i=i+0.250;
    x2=xline(j,'b',{'PHASE','VELOCITY'});
    x2.LabelVerticalAlignment='bottom';
    j=j+0.125;
    f(k)=getframe(gcf);
    drawnow
    plot(z,E,'r');
    axis([-12 30 -4 4]);
    grid on;
    pause(0.05);
    t=t+0.02;
    
end

video= VideoWriter('GROUPGreaterThanPHASE','MPEG-4');
video.FrameRate=8;
open(video);
writeVideo(video,f);
close(video);


