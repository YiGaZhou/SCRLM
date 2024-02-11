m =      [4,8,16,32,64,128,256];
Acc_CL =   [86.145,74.585,52.25,57.865,58.865,57.41,57.005];
Acc_SC =   [89.0243,89.1287,96.0700,98.6460,96.5570,96.1228,94.2450];
%Acc_tsne=  [96.6675,94.118,84.6677,79.8585,76.0875,74.4847,74.3525];
Acc_em =   [84.5485,87.1125,87.2325,82.323,76.9865,70.3577,68.3838];
Acc_kmeans=[ 87.5398,87.4955,80.472,78.4987,78.3198,74.562,75.2587];
Acc_tensor=[100,100,100,99.885,100,99.754,99.9617];
Acc_scrlm =[100,100,100,100,100,100,100];
plot(log2(m),Acc_CL,"color",'#2ad4c8','Marker',"+",'MarkerSize',6,'linewidth',2)
hold on;
box on;
grid on;
plot(log2(m),Acc_SC,"color",'m','Marker',"*",'MarkerSize',6,'linewidth',2)
plot(log2(m),Acc_em,"color",'#ee9a4d','Marker',"x",'MarkerSize',6,'linewidth',2)
plot(log2(m),Acc_tensor,"color",'#a45ee5','Marker',"s",'MarkerSize',6,'linewidth',2)
plot(log2(m),Acc_scrlm,"color",'b','Marker',"h",'MarkerSize',6,'linewidth',2)
plot(log2(m),Acc_kmeans,"color",'g','Marker',"o",'MarkerSize',6,'linewidth',2)
%plot(log2(m),Acc_tsne,"color",'#4aa82c','Marker',"hexagram",'MarkerSize',3.6,'linewidth',2)
%plot(m,Acc_scrlm_kmeans,"color",'r','Marker',"o",'MarkerSize',3.6,'linewidth',2)
xlim([2,8])
ylim([0,100])
ylabel("Accuracy (%)",'fontsize', 15)
xlabel("$\log_2(m)$",'interpreter','latex' ,'fontweight','bold','fontsize', 15)
legend("CL",'SC',"EM","TD","SCRLM","$k$-means++",'interpreter','latex' ,'fontweight','bold','Location','best','fontsize', 15)
%title(" Accuracy vs m in MNIST training dataset",'fontsize', 15)
%saveas(figure(1),"Acc_vs_m_gmm.png")
saveTightFigure(figure(1),"Acc_vs_m_gmm.png")