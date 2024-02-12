x1=[1,1.2,0.8,0.75,0.6,0.9,1.1,0.65];
y1=[1,0.8,0.9,1.2,1,0.6,0.7,0.65];
%plot(x1,y1,'k.','MarkerSize',20)
hold on
box on;
%plot([1 0.698138], [1 1.76242],'k','linewidth',2)
%text(1.02,1,'x$_k=\mu_1$', 'Interpreter', 'latex', 'fontsize', 18);
%text(1,1.25,'$\rho\sqrt{pF}$', 'Interpreter', 'latex', 'fontsize', 18);
%circle(1,1,0.82);
x2=[-1.1,-1.2,-0.85,-0.9,-1.5,-1.4];
y2=[-0.3,-0.8,-0.9,-0.5,-0.8,-0.4];
%plot(x2,y2,'k.','MarkerSize',20)
hold on
%plot([-1.2 -0.760622], [-0.8 -1.49235],"k",'linewidth',2)
%text(-1.5,-0.65,'x$_k=\mu_2$', 'Interpreter', 'latex', 'fontsize', 18);
%text(-1.8,-1.15,'$\rho\sqrt{pF}$', 'Interpreter', 'latex', 'fontsize', 18);
%circle1(-1.2,-0.8,0.82);
x=[-1.9,  0, -2.8, -2.6, 1.1, 2.8, -0.7,  -2.8, 2.8,  1.5];
y=[1.2,  2.6, -2.5, 2.8,  -1,  2.7, -2.5,  -0.2,  0.5, -2.7];
plot(x,y,'k.','MarkerSize',20) 
ylim([-3,3])
xlim([-3,3])
box on;
set(gcf,'Position',[100 100 600 600])
set(gca,'linewidth',1,'xcolor','k','ycolor','k','xtick',[],'ytick',[])

saveTightFigure(figure(1),"scrlm4.png")
function h = circle(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit,"color",'k','linewidth',2);
end
function h = circle1(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit,"color",'k','linewidth',2);
end