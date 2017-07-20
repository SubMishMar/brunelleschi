%%
figure('Name','Pose Comparison','NumberTitle','off');

subplot(321)
plot(time, mocap_pose(:,1),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,1),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,1),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: X axis', 'Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('X[m]');

subplot(323)
plot(time, mocap_pose(:,2),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,2),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,2),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: Y axis', 'Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('Y[m]');

subplot(325)
plot(time, mocap_pose(:,3),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,3),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,3),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: Z axis','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('Z[m]');

subplot(322)
plot(time, mocap_pose(:,4),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,4),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,4),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $\phi^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\phi^{\circ}$','Interpreter','latex');

subplot(324)
plot(time, mocap_pose(:,5),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,5),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,5),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $\theta^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\theta^{\circ}$','Interpreter','latex');

subplot(326)
plot(time, mocap_pose(:,6),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,6),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,6),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $\psi^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\psi^{\circ}$','Interpreter','latex');

%%
figure('Name','Twist Comparison','NumberTitle','off');

subplot(321)
plot(time, mocap_twist(:,1),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,1),'g','LineWidth',1);
hold on;
plot(time, orbslam2_twist(:,1),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $V_x$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$V_x$ [m/s]', 'Interpreter','latex');

subplot(323)
plot(time, mocap_twist(:,2),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,2),'g','LineWidth',1);
hold on;
plot(time, orbslam2_twist(:,2),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $V_y$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$V_y$ [m/s]', 'Interpreter','latex');

subplot(325)
plot(time, mocap_twist(:,3),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,3),'g','LineWidth',1);
hold on;
plot(time, orbslam2_twist(:,3),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $V_z$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$V_z$ [m/s]', 'Interpreter','latex');

subplot(322)
plot(time, mocap_twist(:,4),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,4),'g','LineWidth',1);
hold on;
plot(time, orbslam2_twist(:,4),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $\omega_x$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$\omega_x$ [rad/s]', 'Interpreter','latex');

subplot(324)
plot(time, mocap_twist(:,5),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,5),'g','LineWidth',1);
hold on;
plot(time, orbslam2_twist(:,5),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $\omega_y$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$\omega_y$ [rad/s]', 'Interpreter','latex');

subplot(326)
plot(time, mocap_twist(:,6),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,6),'g','LineWidth',1);
hold on;
plot(time, orbslam2_twist(:,6),'b','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('Comparison: $\omega_z$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$\omega_z$ [rad/s]', 'Interpreter','latex');

%%
figure('Name','Position Comparison 3D','NumberTitle','off');
plot3(mocap_pose(:,1), mocap_pose(:,2), mocap_pose(:,3), 'r', 'LineWidth', 1);
hold on;
plot3(realsense_pose(:,1), realsense_pose(:,2), realsense_pose(:,3), 'g', 'LineWidth', 1);
hold on;
plot3(orbslam2_pose(:,1), orbslam2_pose(:,2), orbslam2_pose(:,3), 'b', 'LineWidth', 1);
hold off;
grid;
legend('','MoCap','RealSenseSlam','ORB\_SLAM2');
title('3D-Trajectory', 'Interpreter','latex');
xlabel('X[m]', 'Interpreter','latex')
ylabel('Y[m]', 'Interpreter','latex')
zlabel('Z[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison XY Plane','NumberTitle','off');
plot(mocap_pose(:,1), mocap_pose(:,2), 'r', 'LineWidth', 1);
hold on;
plot(realsense_pose(:,1), realsense_pose(:,2), 'g', 'LineWidth', 1);
hold on;
plot(orbslam2_pose(:,1), orbslam2_pose(:,2),  'b', 'LineWidth', 1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('XY-Trajectory', 'Interpreter','latex');
xlabel('X[m]', 'Interpreter','latex')
ylabel('Y[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison YZ Plane','NumberTitle','off');
plot(mocap_pose(:,2), mocap_pose(:,3), 'r', 'LineWidth', 1);
hold on;
plot(realsense_pose(:,2), realsense_pose(:,3), 'g', 'LineWidth', 1);
hold on;
plot(orbslam2_pose(:,2), orbslam2_pose(:,3),  'b', 'LineWidth', 1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('YZ-Trajectory', 'Interpreter','latex');
xlabel('Y[m]', 'Interpreter','latex')
ylabel('Z[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison ZX Plane','NumberTitle','off');
plot(mocap_pose(:,3), mocap_pose(:,1), 'r', 'LineWidth', 1);
hold on;
plot(realsense_pose(:,3), realsense_pose(:,1), 'g', 'LineWidth', 1);
hold on;
plot(orbslam2_pose(:,3), orbslam2_pose(:,1),  'b', 'LineWidth', 1);
hold off;
grid;
legend('MoCap','RealSenseSlam','ORB\_SLAM2');
title('ZX-Trajectory', 'Interpreter','latex');
xlabel('Z[m]', 'Interpreter','latex')
ylabel('X[m]', 'Interpreter','latex')