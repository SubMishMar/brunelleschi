num = input('Enter the Trial no:');

load (['Trial',num2str(num),'/posedata.mat'])


%%
figure('Name','Pose Estimate Comparison','NumberTitle','off');
subplot(322)
plot(time, mocap_pose(:,1),'--r','LineWidth',1);
hold on;
plot(time, realsense_position_velocity_estimate(:,1),'g','LineWidth',1);
hold on;
plot(time, orbslam2_position_velocity_estimate(:,1),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam Estimate','ORB\_SLAM2 Estimate');
title('Comparison: X axis', 'Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('X[m]');

subplot(324)
plot(time, mocap_pose(:,2),'--r','LineWidth',1);
hold on;
plot(time, realsense_position_velocity_estimate(:,2),'g','LineWidth',1);
hold on;
plot(time, orbslam2_position_velocity_estimate(:,2),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam Estimate','ORB\_SLAM2 Estimate');
title('Comparison: Y axis', 'Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('Y[m]');

subplot(326)
plot(time, mocap_pose(:,3),'--r','LineWidth',1);
hold on;
plot(time, realsense_position_velocity_estimate(:,3),'g','LineWidth',1);
hold on;
plot(time, orbslam2_position_velocity_estimate(:,3),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam Estimate','ORB\_SLAM2 Estimate');
title('Comparison: Z axis', 'Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('Y[m]');

subplot(321)
plot(time, mocap_pose(:,1),'--r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,1),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,1),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: X axis','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('X[m]','Interpreter','latex');

subplot(323)
plot(time, mocap_pose(:,2),'--r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,2),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,2),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam ','ORB\_SLAM2 ');
title('Comparison: Y axis','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('Y[m]','Interpreter','latex');

subplot(325)
plot(time, mocap_pose(:,3),'--r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,3),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,3),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam ','ORB\_SLAM2 ');
title('Comparison: Z axis','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$Z[m]$','Interpreter','latex');