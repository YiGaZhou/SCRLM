N =      [2048,4096,8192,16384,32768,65536,131072];
Acc_CL =   [65.0879,59.6680,53.8086,60.7727,58.4686,59.6069,60.0868];
Acc_SC =   [76.7798,85.4492,86.8042,86.3596,89.2545,93.2267,93.75];
Acc_tsne=  [94.3701,90.3174,95.2386,95.7980,93.3675,96.2605,95.7310];
Acc_em =   [80.7471,79.5410,80.1880,80.6448,80.1056,80.1300,80.0232];
Acc_kmeans=[86.5308,82.8479,83.2745,85.8823,82.3071,80.3288,87.3658];
Acc_tensor=[100,100,100,100,100,99.5892,100];
Acc_scrlm =[100,100,100,100,100,100,100];
plot(log2(N),Acc_CL,"color",'#2ad4c8','Marker',"+",'MarkerSize',6,'linewidth',2)
hold on;
box on;
grid on;
plot(log2(N),Acc_SC,"color",'m','Marker',"*",'MarkerSize',6,'linewidth',2)
plot(log2(N),Acc_em,"color",'#ee9a4d','Marker',"x",'MarkerSize',6,'linewidth',2)
plot(log2(N),Acc_tensor,"color",'#a45ee5','Marker',"s",'MarkerSize',6,'linewidth',2)
plot(log2(N),Acc_scrlm,"color",'b','Marker',"h",'MarkerSize',6,'linewidth',2)
plot(log2(N),Acc_kmeans,"color",'g','Marker',"o",'MarkerSize',6,'linewidth',2)
%plot(log2(N),Acc_tsne,"color",'#4aa82c','Marker',"hexagram",'MarkerSize',3.6,'linewidth',2)
xlim([11,17])
ylim([0,100])
ylabel("Accuracy (%)",'fontsize', 15)
xlabel("$\log_2(N)$",'interpreter','latex' ,'fontweight','bold','fontsize', 15)
legend("CL","SC","EM","TD","SCRLM","$k$-means++",'interpreter','latex' ,'fontweight','bold','Location','best','fontsize', 15)
%title(" Accuracy vs m in MNIST training dataset",'fontsize', 15)
%saveas(figure(1),"Acc_vs_N_gmm.png")
saveTightFigure(figure(1),"Acc_vs_N_gmm.png")