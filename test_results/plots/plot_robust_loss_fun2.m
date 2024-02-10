x = [-200:1:200]
a = min(x.^2/(1*(3^2))-8/3,0);
plot(x,a, "linewidth",4)
hold on;
x = [-200:1:200]
a = min(x.^2/(10*(3^2))-8/3,0);
plot(x,a, "linewidth",3)
hold on;
x = [-200:1:200]
a = min(x.^2/(100*(3^2))-8/3,0);
plot(x,a, "linewidth",2)
x = [-200:1:200]
a = min(x.^2/(1000*(3^2))-8/3,0);
plot(x,a, "linewidth",1)
ylim([-3,1])
xlim([-200,200])
xlabel('$\|$d$\|$','interpreter','latex' ,'fontweight','bold','FontSize',18);
legend('p=1','p=10','p=100','p=1000','Location','best','fontsize', 15)
saveTightFigure(figure(1),"robust_loss_fun2.png")