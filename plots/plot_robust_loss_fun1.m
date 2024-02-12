x = [-200:1:200]
a = min(x.^2/(500*(0.5^2))-8/3,0);
plot(x,a, "linewidth",4)
hold on
x = [-200:1:200]
a = min(x.^2/(500*(1^2))-8/3,0);
plot(x,a, "linewidth",3)
hold on;
x = [-200:1:200]
a = min(x.^2/(500*(2^2))-8/3,0);
plot(x,a, "linewidth",2)
hold on;
x = [-200:1:200]
a = min(x.^2/(500*(4^2))-8/3,0);
plot(x,a, "linewidth",1)
ylim([-3,1])
xlim([-200,200])
ylabel('$\ell$(d;$\rho$)', 'interpreter','latex' ,'fontweight','bold','FontSize',18);
xlabel('$\|$d$\|$','interpreter','latex' ,'fontweight','bold','FontSize',18);
legend('\rho=0.5','\rho=1','\rho=2','\rho=4','Location','best','fontsize', 15)
saveTightFigure(figure(1),"robust_loss_fun1.png")
