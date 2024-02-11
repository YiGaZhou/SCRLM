clc;
clear;
box on;
hold on;
%% CL
plot(1293,10.05,"+",'MarkerSize',8,'MarkerFaceColor','#2ad4c8'); 
%% SC
plot(1840,61.37,"*","MarkerSize",8,"MarkerFaceColor","m",'MarkerEdgeColor','m');
%% EM
plot(163,62.82,"x","MarkerSize",8,'MarkerFaceColor','#ee9a4d','MarkerEdgeColor','#ee9a4d');
%% TD
plot(1522,64.47,"s","MarkerSize",8,'MarkerFaceColor','#a45ee5','MarkerEdgeColor','#a45ee5'); 
%% T-SNE+KMEANS
plot(1912,70.57,"d","MarkerSize",8,'MarkerFaceColor','#4aa82c','MarkerEdgeColor','#4aa82c'); 
%% KMEANS
plot(31.5,57.17,"o","MarkerSize",8,'MarkerFaceColor','g','MarkerEdgeColor','g');
%% SCRLM
plot(5.55,34.62,"hexagram","MarkerSize",8,'MarkerFaceColor','b','MarkerEdgeColor','b');
%% SCRLM+KMEANS
plot(27.6,57.32,"p","MarkerSize",8,'MarkerFaceColor','r','MarkerEdgeColor','r');
%% Robust kmeans++
plot(33.7,57.80,"<","MarkerSize",8,'MarkerFaceColor','y','MarkerEdgeColor','r');

set(gca,'FontSize',12)
ylabel("Accuracy (%)",'fontsize', 12)
ylim([0,100]);
xlabel("Time (s)",'fontsize', 12)
%title("Scatter plot of Accuracy vs Time in CIFAR-100 training dataset",'interpreter','latex' ,'fontsize', 15)
legend("CL","SC","EM","TD","t-SNE+$k$-means++","$k$-means++","SCRLM","SCRLM+$k$-means","Robust $k$-means++",'interpreter','latex' ,'fontweight','bold','Location','best','fontsize', 12)
saveTightFigure(figure(1),"CIFAR_10.png")