num = input('Enter the Trial no:');

load (['Trial',num2str(num),'/posedata.mat'])
twist = 0;
%%
figure('Name','Pose Comparison','NumberTitle','off');
subplot(321)
plot(time, realsense_pose(:,1),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,1),'b','LineWidth',1);
hold off;
grid;
legend('RealSenseSlam','ORB\_SLAM2');
title('Comparison: X axis','Interpreter','latex');
xlabel('Time[s] since epoch','Interpreter','latex')
ylabel('X[m]','Interpreter','latex');

subplot(323)
plot(time, realsense_pose(:,2),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,2),'b','LineWidth',1);
hold off;
grid;
legend('RealSenseSlam','ORB\_SLAM2');
title('Comparison: Y axis','Interpreter','latex');
xlabel('Time[s] since epoch','Interpreter','latex')
ylabel('Y[m]','Interpreter','latex');

subplot(325)
plot(time, realsense_pose(:,3),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,3),'b','LineWidth',1);
hold off;
grid;
legend('RealSenseSlam','ORB\_SLAM2');
title('Comparison: Z axis','Interpreter','latex');
xlabel('Time[s] since epoch','Interpreter','latex')
ylabel('Z[m]','Interpreter','latex');

subplot(322)
plot(time, realsense_pose(:,4),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,4),'b','LineWidth',1);
hold off;
grid;
legend('RealSenseSlam','ORB\_SLAM2');
title('Comparison: Roll $\phi^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch','Interpreter','latex')
ylabel('$\phi^{\circ}$','Interpreter','latex');

subplot(324)
plot(time, realsense_pose(:,5),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,5),'b','LineWidth',1);
hold off;
grid;
legend('RealSenseSlam','ORB\_SLAM2');
title('Comparison: Pitch $\theta^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch','Interpreter','latex')
ylabel('$\theta^{\circ}$','Interpreter','latex');

subplot(326)
plot(time, realsense_pose(:,6),'g','LineWidth',1);
hold on;
plot(time, orbslam2_pose(:,6),'b','LineWidth',1);
hold off;
grid;
legend('RealSenseSlam','ORB\_SLAM2');
title('Comparison: Yaw $\psi^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch','Interpreter','latex')
ylabel('$\psi^{\circ}$','Interpreter','latex');

%%
figure('Name','Position Comparison 3D','NumberTitle','off');

plot3(realsense_pose(1,1), realsense_pose(1,2), realsense_pose(1,3),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
plot3(realsense_pose(end,1), realsense_pose(end,2), realsense_pose(end,3),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
p2=plot3(realsense_pose(:,1), realsense_pose(:,2), realsense_pose(:,3), 'g', 'LineWidth', 1);
hold on;
plot3(orbslam2_pose(1,1), orbslam2_pose(1,2), orbslam2_pose(1,3),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10);
hold on;
plot3(orbslam2_pose(end,1), orbslam2_pose(end,2), orbslam2_pose(end,3),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10);
hold on;
p3=plot3(orbslam2_pose(:,1), orbslam2_pose(:,2), orbslam2_pose(:,3), 'b', 'LineWidth', 1);
hold off;
grid;
legend([p2, p3],'RealSenseSlam','ORB\_SLAM2');
title('3D-Trajectory', 'Interpreter','latex');
xlabel('X[m]', 'Interpreter','latex')
ylabel('Y[m]', 'Interpreter','latex')
zlabel('Z[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison XY Plane','NumberTitle','off');

plot(realsense_pose(1,1), realsense_pose(1,2),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
plot(realsense_pose(end,1), realsense_pose(end,2),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
q2=plot(realsense_pose(:,1), realsense_pose(:,2), 'g', 'LineWidth', 1);
hold on;
plot(orbslam2_pose(1,1), orbslam2_pose(1,2),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10);
hold on;
plot(orbslam2_pose(end,1), orbslam2_pose(end,2),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10);
hold on;
q3=plot(orbslam2_pose(:,1), orbslam2_pose(:,2),  'b', 'LineWidth', 1);
hold off;
grid;
legend([q2,q3],'RealSenseSlam','ORB\_SLAM2');
title('XY-Trajectory', 'Interpreter','latex');
xlabel('X[m]', 'Interpreter','latex')
ylabel('Y[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison YZ Plane','NumberTitle','off');

plot(realsense_pose(1,2), realsense_pose(1,3),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
plot(realsense_pose(end,2), realsense_pose(end,3),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
r2=plot(realsense_pose(:,2), realsense_pose(:,3), 'g', 'LineWidth', 1);
hold on;
plot(orbslam2_pose(1,2), orbslam2_pose(1,3),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10);
hold on;
plot(orbslam2_pose(end,2), orbslam2_pose(end,3),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10);
hold on;
r3=plot(orbslam2_pose(:,2), orbslam2_pose(:,3),  'b', 'LineWidth', 1);
hold off;
grid;
legend([r2,r3],'RealSenseSlam','ORB\_SLAM2');
title('YZ-Trajectory', 'Interpreter','latex');
xlabel('Y[m]', 'Interpreter','latex')
ylabel('Z[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison ZX Plane','NumberTitle','off');

plot(realsense_pose(1,3), realsense_pose(1,1),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
plot(realsense_pose(end,3), realsense_pose(end,1),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
s2=plot(realsense_pose(:,3), realsense_pose(:,1), 'g', 'LineWidth', 1);
hold on;
plot(orbslam2_pose(1,3), orbslam2_pose(1,1),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10);
hold on;
plot(orbslam2_pose(end,3), orbslam2_pose(end,1),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10);
hold on;
s3=plot(orbslam2_pose(:,3), orbslam2_pose(:,1),  'b', 'LineWidth', 1);
hold off;
grid;
legend([s2,s3],'RealSenseSlam','ORB\_SLAM2');
title('ZX-Trajectory', 'Interpreter','latex');
xlabel('Z[m]', 'Interpreter','latex')
ylabel('X[m]', 'Interpreter','latex')