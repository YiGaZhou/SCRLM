clc;
clear;
box on;
hold on;
%% CL
plot(1296,10.29,"+",'MarkerSize',8,'MarkerFaceColor','#2ad4c8'); 
%% SC
plot(2026,25.23,"*","MarkerSize",8,"MarkerFaceColor","m",'MarkerEdgeColor','m');
%% EM
plot(1770,34.09,"x","MarkerSize",8,'MarkerFaceColor','#ee9a4d','MarkerEdgeColor','#ee9a4d');
%% TD
plot(1617,37.43,"s","MarkerSize",8,'MarkerFaceColor','#a45ee5','MarkerEdgeColor','#a45ee5'); 
%% T-SNE+KMEANS
plot(2095,38.78,"d","MarkerSize",8,'MarkerFaceColor','#4aa82c','MarkerEdgeColor','#4aa82c'); 
%% KMEANS
plot(232,33.64,"o","MarkerSize",8,'MarkerFaceColor','g','MarkerEdgeColor','g');
%% SCRLM
plot(27.7,18.28,"hexagram","MarkerSize",8,'MarkerFaceColor','b','MarkerEdgeColor','b');
%% SCRLM+KMEANS
plot(218,35.69,"p","MarkerSize",8,'MarkerFaceColor','r','MarkerEdgeColor','r');
%% Robust kmeans++
plot(444,34.48,"<","MarkerSize",8,'MarkerFaceColor','y','MarkerEdgeColor','r');

set(gca,'FontSize',12)
ylabel("Accuracy (%)",'fontsize', 12)
ylim([0,100]);
xlabel("Time (s)",'fontsize', 12)
%title("Scatter plot of Accuracy vs Time in CIFAR-100 training dataset",'interpreter','latex' ,'fontsize', 15)
legend("CL","SC","EM","TD","t-SNE+$k$-means++","$k$-means++","SCRLM","SCRLM+$k$-means","Robust $k$-means++",'interpreter','latex' ,'fontweight','bold','Location','best','fontsize', 12)
saveTightFigure(figure(1),"CIFAR_100.png")