p =      [64,128,256,512,1024,2048,4096];
Acc_CL =   [51.625,52.45,67.545,53.355,57.325,58.6,61.665];
Acc_SC =   [99.165,97.1,99.555,95.96,93.59,87.365,84.3805];
Acc_tsne=  [90.7905,94.462,93.8752,91.907,95.2943,94.3402,93.358];
Acc_em =   [73.3982,70.8203,88.4853,85.7838,89.6852,81.073,80.6187];
Acc_kmeans=[73.7808,71.1345,78.4513,80.2277,87.5593,86.1067,91.6745];
Acc_tensor=[90.8592,99.999,100,100,100,100,100];
Acc_scrlm =[100,100,100,100,100,100,100];
plot(log2(p),Acc_CL,"color",'#2ad4c8','Marker',"+",'MarkerSize',6,'linewidth',2)
hold on;
box on;
grid on;
plot(log2(p),Acc_SC,"color",'m','Marker',"*",'MarkerSize',6,'linewidth',2)
plot(log2(p),Acc_em,"color",'#ee9a4d','Marker',"x",'MarkerSize',6,'linewidth',2)
plot(log2(p),Acc_tensor,"color",'#a45ee5','Marker',"s",'MarkerSize',6,'linewidth',2)
plot(log2(p),Acc_scrlm,"color",'b','Marker',"h",'MarkerSize',6,'linewidth',2)
plot(log2(p),Acc_kmeans,"color",'g','Marker',"o",'MarkerSize',6,'linewidth',2)
%plot(log2(p),Acc_tsne,"color",'#4aa82c','Marker',"hexagram",'MarkerSize',3.6,'linewidth',2)
%plot(m,Acc_scrlm_kmeans,"color",'r','Marker',"o",'MarkerSize',3.6,'linewidth',2)
xlim([6,12])
ylim([0,100])
%xticks([500,1000,2000,4000])
ylabel("Accuracy (%)",'fontsize', 15)
xlabel("$\log_2(p)$",'interpreter','latex' ,'fontweight','bold','fontsize', 15)
legend("CL","SC","EM","TD","SCRLM","$k$-means++",'interpreter','latex' ,'fontweight','bold','Location','best','fontsize', 15)
%title(" Accuracy vs m in MNIST training dataset",'fontsize', 15)
%saveas(figure(1),"Acc_vs_p_gmm.png")
saveTightFigure(figure(1),"Acc_vs_p_gmm.png")