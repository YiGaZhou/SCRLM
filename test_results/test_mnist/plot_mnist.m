clc;
clear;
box on;
hold on;
%% CL
plot(337,26.5,"+",'MarkerSize',8,'MarkerFaceColor','#2ad4c8'); 
%% SC
plot(381,82.46,"*","MarkerSize",8,"MarkerFaceColor","m",'MarkerEdgeColor','m');
%% EM
plot(34.3,73.42,"x","MarkerSize",8,'MarkerFaceColor','#ee9a4d','MarkerEdgeColor','#ee9a4d');
%% TD
plot(23.3,72.9,"s","MarkerSize",8,'MarkerFaceColor','#a45ee5','MarkerEdgeColor','#a45ee5'); 
%% T-SNE+KMEANS
plot(479,92.71,"d","MarkerSize",8,'MarkerFaceColor','#4aa82c','MarkerEdgeColor','#4aa82c'); 
%% KMEANS
plot(4.88,79.45,"o","MarkerSize",8,'MarkerFaceColor','g','MarkerEdgeColor','g');
%% SCRLM
plot(0.42,51.54,"hexagram","MarkerSize",8,'MarkerFaceColor','b','MarkerEdgeColor','b');
%% SCRLM+KMEANS
plot(6.8,81.44,"p","MarkerSize",8,'MarkerFaceColor','r','MarkerEdgeColor','r');
%% Robust kmeans++
plot(8.97,76.62,"<","MarkerSize",8,'MarkerFaceColor','y','MarkerEdgeColor','r');

set(gca,'FontSize',12)
ylabel("Accuracy (%)",'fontsize', 12)
ylim([0,100]);
xlabel("Time (s)",'fontsize', 12)
%title("Scatter plot of Accuracy vs Time in CIFAR-100 training dataset",'interpreter','latex' ,'fontsize', 15)
legend("CL","SC","EM","TD","t-SNE+$k$-means++","$k$-means++","SCRLM","SCRLM+$k$-means","Robust $k$-means++",'interpreter','latex' ,'fontweight','bold','Location','best','fontsize', 12)
saveTightFigure(figure(1),"mnist.png")