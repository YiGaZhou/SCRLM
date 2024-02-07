clc;
clear;
m=[2,4,8,16,32,64,128,256,512,1024];
box on;
hold on;
E_p = [51,43,55,49,59,66,67,64,77,83];
plot(log2(m),log2(E_p),'-o',"color",'r','linewidth',2)
%T_p1= ceil(36*(2*log(20000)+log(16/0.01)));
T_p= ceil(48*(log(20000^2+m)+log(4/0.01)));
plot(log2(m),log2(T_p),'-',"color",'k','linewidth',2)
ylabel('$\log_2(p)$', 'interpreter','latex' ,'fontweight','bold', 'FontSize',18);
xlabel('$\log_2(m)$', 'interpreter','latex' ,'fontweight','bold','FontSize',18);
ylim([2,11])
xlim([1,10])
xticks([5,6,7,8,9,10,11,12,13,14,15,16,17])
legend("Experimental Guarantee","Theoretical Guarantee",'fontsize', 17,'location','south')
%title("Acc VS Sigma (sigma-max=0.25, p=100, m=20)",'fon,tsize', 15)
saveTightFigure(figure(1),"p_vs_m.png")