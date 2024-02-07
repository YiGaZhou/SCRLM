clc;
clear;
m=[4,8,16,32,64,128,256,512,1024];
E_n=[26,65,133,355,612,1366,3833,7639,13618];
%a1= [37,67,144,359,620,1484,3898,8406,14464];
%T_n=[43,93,201,433,929,1983,4220,8946,18905];
%E_n=[10,26,68,174,363,858,2146,4440,9600];
box on;
hold on;
T_n= ceil(1/0.7*m.*(log(m)+log(5/0.01)));
plot(log2(m),log2(E_n),'-o',"color",'r','linewidth',2)
plot(log2(m),log2(T_n),'-',"color",'k','linewidth',2)
%plot(log2(m),log2(a1),"color",'r','linewidth',1.5)
ylabel('$\log_2(n)$', 'interpreter','latex' ,'fontweight','bold', 'FontSize',18);
xlabel('$\log_2(m)$', 'interpreter','latex' ,'fontweight','bold','FontSize',18);
legend("Experimental Guarantee","Theoretical Guarantee", 'fontsize', 17,'Location','south')
%title("Acc VS Sigma (sigma-max=0.25, p=100, m=20)",'fontsize', 15)
saveTightFigure(figure(1),"n_vs_m_rho_0_5.png")
