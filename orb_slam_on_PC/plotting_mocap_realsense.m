load Trial1/posedata.mat
twist = 0;
%%
figure('Name','Pose Comparison','NumberTitle','off');

subplot(321)
plot(time, mocap_pose(:,1),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,1),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: X axis', 'Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('X[m]');

subplot(323)
plot(time, mocap_pose(:,2),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,2),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: Y axis', 'Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('Y[m]');

subplot(325)
plot(time, mocap_pose(:,3),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,3),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: Z axis','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('Z[m]');

subplot(322)
plot(time, mocap_pose(:,4),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,4),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\phi^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\phi^{\circ}$','Interpreter','latex');

subplot(324)
plot(time, mocap_pose(:,5),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,5),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\theta^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\theta^{\circ}$','Interpreter','latex');

subplot(326)
plot(time, mocap_pose(:,6),'r','LineWidth',1);
hold on;
plot(time, realsense_pose(:,6),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\psi^{\circ}$','Interpreter','latex');
xlabel('Time[s] since epoch')
ylabel('$\psi^{\circ}$','Interpreter','latex');

%%
if twist == 1
figure('Name','Twist Comparison','NumberTitle','off');

subplot(321)
plot(time, mocap_twist(:,1),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,1),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $V_x$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$V_x$ [m/s]', 'Interpreter','latex');

subplot(323)
plot(time, mocap_twist(:,2),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,2),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $V_y$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$V_y$ [m/s]', 'Interpreter','latex');

subplot(325)
plot(time, mocap_twist(:,3),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,3),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $V_z$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$V_z$ [m/s]', 'Interpreter','latex');

subplot(322)
plot(time, mocap_twist(:,4),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,4),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\omega_x$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$\omega_x$ [rad/s]', 'Interpreter','latex');

subplot(324)
plot(time, mocap_twist(:,5),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,5),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\omega_y$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$\omega_y$ [rad/s]', 'Interpreter','latex');

subplot(326)
plot(time, mocap_twist(:,6),'r','LineWidth',1);
hold on;
plot(time, realsense_twist(:,6),'g','LineWidth',1);
hold off;
grid;
legend('MoCap','RealSenseSlam');
title('Comparison: $\omega_z$ ', 'Interpreter','latex');
xlabel('Time[s] since epoch', 'Interpreter','latex')
ylabel('$\omega_z$ [rad/s]', 'Interpreter','latex');
end

%%
figure('Name','Position Comparison 3D','NumberTitle','off');
plot3(mocap_pose(1,1), mocap_pose(1,2), mocap_pose(1,3),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',10);
hold on;
plot3(mocap_pose(end,1), mocap_pose(end,2), mocap_pose(end,3),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',10);
hold on;
p1=plot3(mocap_pose(:,1), mocap_pose(:,2), mocap_pose(:,3), '--r', 'LineWidth', 1);
hold on;
plot3(realsense_pose(1,1), realsense_pose(1,2), realsense_pose(1,3),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
plot3(realsense_pose(end,1), realsense_pose(end,2), realsense_pose(end,3),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
p2=plot3(realsense_pose(:,1), realsense_pose(:,2), realsense_pose(:,3), 'g', 'LineWidth', 1);
hold off;
grid;
legend([p1, p2],'MoCap','RealSenseSlam');
title('3D-Trajectory', 'Interpreter','latex');
xlabel('X[m]', 'Interpreter','latex')
ylabel('Y[m]', 'Interpreter','latex')
zlabel('Z[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison XY Plane','NumberTitle','off');
plot(mocap_pose(1,1), mocap_pose(1,2),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',10);
hold on;
plot(mocap_pose(end,1), mocap_pose(end,2),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',10);
hold on;
q1=plot(mocap_pose(:,1), mocap_pose(:,2), '--r', 'LineWidth', 1);
hold on;
plot(realsense_pose(1,1), realsense_pose(1,2),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
plot(realsense_pose(end,1), realsense_pose(end,2),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
q2=plot(realsense_pose(:,1), realsense_pose(:,2), 'g', 'LineWidth', 1);
hold off;
grid;
legend([q1,q2],'MoCap','RealSenseSlam');
title('XY-Trajectory', 'Interpreter','latex');
xlabel('X[m]', 'Interpreter','latex')
ylabel('Y[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison YZ Plane','NumberTitle','off');
plot(mocap_pose(1,2), mocap_pose(1,3),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',10);
hold on;
plot(mocap_pose(end,2), mocap_pose(end,3),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',10);
hold on;
r1=plot(mocap_pose(:,2), mocap_pose(:,3), '--r', 'LineWidth', 1);
hold on;
plot(realsense_pose(1,2), realsense_pose(1,3),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
plot(realsense_pose(end,2), realsense_pose(end,3),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
r2=plot(realsense_pose(:,2), realsense_pose(:,3), 'g', 'LineWidth', 1);
hold off;
grid;
legend([r1,r2],'MoCap','RealSenseSlam');
title('YZ-Trajectory', 'Interpreter','latex');
xlabel('Y[m]', 'Interpreter','latex')
ylabel('Z[m]', 'Interpreter','latex')

%%
figure('Name','Position Comparison ZX Plane','NumberTitle','off');
plot(mocap_pose(1,3), mocap_pose(1,1),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',10);
hold on;
plot(mocap_pose(end,3), mocap_pose(end,1),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',10);
hold on;
s1=plot(mocap_pose(:,3), mocap_pose(:,1), '--r', 'LineWidth', 1);
hold on;
plot(realsense_pose(1,3), realsense_pose(1,1),'-ko','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
plot(realsense_pose(end,3), realsense_pose(end,1),'-s','MarkerEdgeColor','k',...
    'MarkerFaceColor',[0 1 0],...
    'MarkerSize',10);
hold on;
s2=plot(realsense_pose(:,3), realsense_pose(:,1), 'g', 'LineWidth', 1);
hold off;
grid;
legend([s1,s2],'MoCap','RealSenseSlam');
title('ZX-Trajectory', 'Interpreter','latex');
xlabel('Z[m]', 'Interpreter','latex')
ylabel('X[m]', 'Interpreter','latex')