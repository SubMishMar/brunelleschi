
subplot(321)
plot(time, mocap_data(:,1),'r','LineWidth',1);
hold on;
plot(time, realsense_data(:,1),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: X axis');
xlabel('Time[s] since epoch')
ylabel('X[m]');

subplot(323)
plot(time, mocap_data(:,2),'r','LineWidth',1);
hold on;
plot(time, realsense_data(:,2),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: Y axis');
xlabel('Time[s] since epoch')
ylabel('Y[m]');

subplot(325)
plot(time, mocap_data(:,3),'r','LineWidth',1);
hold on;
plot(time, realsense_data(:,3),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: Z axis');
xlabel('Time[s] since epoch')
ylabel('Z[m]');

subplot(322)
plot(time, mocap_data(:,4),'r','LineWidth',1);
hold on;
plot(time, realsense_data(:,4),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\phi^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\phi^{\circ}$','Interpreter','latex');

subplot(324)
plot(time, mocap_data(:,5),'r','LineWidth',1);
hold on;
plot(time, realsense_data(:,5),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\theta^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\theta^{\circ}$','Interpreter','latex');

subplot(326)
plot(time, mocap_data(:,6),'r','LineWidth',1);
hold on;
plot(time, realsense_data(:,6),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\psi^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\psi^{\circ}$','Interpreter','latex');