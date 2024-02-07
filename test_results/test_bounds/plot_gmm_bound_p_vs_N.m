clc;
clear;
N=[32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072];
box on;
hold on;
E_p = [12,20,20,22,35,34,33,38,41,40,52,50,53];
plot(log2(N),log2(E_p),'-o',"color",'r','linewidth',2)
T_p1= ceil(36*(2*log(N)+log(16/0.01)));
T_p= ceil(48*(log(N.^2+3)+log(4/0.01)));
plot(log2(N),log2(T_p),'-',"color",'k','linewidth',2)
ylabel('$\log_2(p)$', 'interpreter','latex' ,'fontweight','bold', 'FontSize',18);
xlabel('$\log_2(N)$', 'interpreter','latex' ,'fontweight','bold','FontSize',18);
ylim([2,11])
xlim([5,17])
xticks([5,6,7,8,9,10,11,12,13,14,15,16,17])
legend("Experimental Guarantee","Theoretical Guarantee",'fontsize', 17,'location','south')
%title("Acc VS Sigma (sigma-max=0.25, p=100, m=20)",'fon,tsize', 15)
saveTightFigure(figure(1),"p_vs_N.png")