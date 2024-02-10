clc;
clear;
box on;
hold on;
%% CL
plot(257,29.83,"+",'MarkerSize',8,'MarkerFaceColor','#2ad4c8'); 
%% SC
plot(1537,43.32,"*","MarkerSize",8,"MarkerFaceColor","m",'MarkerEdgeColor','m');
%% EM
plot(2366,42.42,"x","MarkerSize",8,'MarkerFaceColor','#ee9a4d','MarkerEdgeColor','#ee9a4d');
%% T-SNE+KMEANS
plot(366,50.36,"d","MarkerSize",8,'MarkerFaceColor','#4aa82c','MarkerEdgeColor','#4aa82c'); 
%% KMEANS
plot(54.8,44.38,"o","MarkerSize",8,'MarkerFaceColor','g','MarkerEdgeColor','g');
%% SCRLM
plot(22.8,34.05,"hexagram","MarkerSize",8,'MarkerFaceColor','b','MarkerEdgeColor','b');
%% SCRLM+KMEANS
plot(35.4,45.79,"p","MarkerSize",8,'MarkerFaceColor','r','MarkerEdgeColor','r');
%% Robust kmeans++
plot(31.3,45.10,"<","MarkerSize",8,'MarkerFaceColor','y','MarkerEdgeColor','r');
set(gca,'FontSize',12)
ylabel("Accuracy (%)",'fontsize', 12)
ylim([0,100]);
xlabel("Time (s)",'fontsize', 12)
%title("Scatter plot of Accuracy vs Time in CIFAR-100 training dataset",'interpreter','latex' ,'fontsize', 15)
legend("CL","SC","EM","t-SNE+$k$-means++","$k$-means++","SCRLM","SCRLM+$k$-means","Robust $k$-means++",'interpreter','latex' ,'fontweight','bold','Location','best','fontsize', 12)
saveTightFigure(figure(1),"ImageNet_val.png")