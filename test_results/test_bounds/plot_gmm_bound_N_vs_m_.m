clc;
clear;
m=[2,4,8,16,32,64,128,256,512,1024];
E_N=[20,43,93,201,433,929,1983,4220,8946,18905];
box on;
hold on;
T_N= ceil(1/0.7*m.*(log(m)+log(4/0.01)))+1;
plot(log2(m),log2(E_N),'-o',"color",'r','linewidth',2)
plot(log2(m),log2(T_N),'-',"color",'k','linewidth',2)
%plot(log2(m),log2(a1),"color",'r','linewidth',1.5)
ylabel('$\log_2(N)$', 'interpreter','latex' ,'fontweight','bold', 'FontSize',18);
xlabel('$\log_2(m)$', 'interpreter','latex' ,'fontweight','bold','FontSize',18);
legend("Experimental Guarantee","Theoretical Guarantee", 'fontsize', 17,'Location','south')
%title("Acc VS Sigma (sigma-max=0.25, p=100, m=20)",'fontsize', 15)
saveTightFigure(figure(1),"N_vs_m_.png")
