clc;
clear;
n=       [32,  64, 128, 256, 512,1024,2048,4096,8192,16384];
rho_min=[0.24,0.23,0.23,0.23,0.23,0.23,0.23,0.23,0.23,0.23];
rho_max=[0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8];
a=[0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25];
b=[sqrt(0.5),sqrt(0.5),sqrt(0.5),sqrt(0.5),sqrt(0.5),sqrt(0.5),sqrt(0.5),sqrt(0.5),sqrt(0.5),sqrt(0.5)];
%contour(log2(m),log2(N),result,[99.5,99.5])
hold on;
box on;
plot(log2(n),rho_max,'-o',"color",'r','linewidth',1.5)
plot(log2(n),b,'-x',"color",'k','linewidth',1.5)
plot(log2(n),rho_min,'-d',"color",'r','linewidth',1.5)
plot(log2(n),a,'-',"color",'k','linewidth',1.5)
ylim([0,1])
ylabel('$\rho$', 'interpreter','latex' ,'fontweight','bold', 'FontSize',18);
xlabel('$\log_2(n)$', 'interpreter','latex' ,'fontweight','bold','FontSize',18);
legend("Experimental Upper Bound","Theoretical Upper Bound","Experimental Lower Bound","Theoretical Lower Bound",'fontsize', 15,'Location','best')
%title("Acc VS Sigma (sigma-max=0.25, p=100, m=20)",'fontsize', 15)
saveTightFigure(figure(1),"rho_vs_n_.png")