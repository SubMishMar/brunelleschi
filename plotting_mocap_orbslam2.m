subplot(321)
plot(time, mocap_data(:,1));
hold on;
plot(time, orbslam2_data(:,1));
hold off;
subplot(322)
plot(time, mocap_data(:,2));
hold on;
plot(time, orbslam2_data(:,2));
hold off;
subplot(323)
plot(time, mocap_data(:,3));
hold on;
plot(time, orbslam2_data(:,3));
hold off;
subplot(324)
plot(time, mocap_data(:,4));
hold on;
plot(time, orbslam2_data(:,4));
hold off;
subplot(325)
plot(time, mocap_data(:,5));
hold on;
plot(time, orbslam2_data(:,5));
hold off;
subplot(326)
plot(time, mocap_data(:,6));
hold on;
plot(time, orbslam2_data(:,6));
hold off;
