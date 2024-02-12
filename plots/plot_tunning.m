clc;
clear;
N=20000;
%p=100;
%p=10;
p=1000;
m=10;
w_min=0.7/m;
w_max=0.9/m;
sigma=linspace(1/16,1/4,m);
w1=linspace(w_min,w_max,m);
w=[w1,1-sum(w1)];
data=GMM_with_Outlier_fixed(N,p,m,sigma,w);
data=data(randperm(size(data, 1)), :);
x=data(:,1:p);
n= ceil(1/0.7*m*(log(4*m)-log(0.01)));
x_sub = x(1:n,:);
d = pdist2(x_sub,x);
d = d./sqrt(8/3*p);
histogram(d,30);
%xlim([0,1])
%xticks([0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0])
set(gca,'FontSize',15)
xlabel('$||d||/\sqrt{pF}$', 'interpreter','latex' ,'fontweight','bold', 'FontSize',20);
ylabel('frequency', 'interpreter','latex' ,'fontweight','bold','FontSize',20);
%legend("Experimental Guarantee","Theoretical Guarantee", 'fontsize', 15,'Location','south')
%title("Acc VS Sigma (sigma-max=0.25, p=100, m=20)",'fontsize', 15)
saveTightFigure(figure(1),"tunning_p1000.png")
