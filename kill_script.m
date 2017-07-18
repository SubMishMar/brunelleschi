%% Killing components
old_env = getenv('LD_LIBRARY_PATH'); % Storing the path that MATLAB uses
% Forcing a new path to LD_LIBRARY_PATH
setenv('LD_LIBRARY_PATH','/opt/ros/indigo/lib:/opt/ros/indigo/lib/x86_64-linux-gnu');
% launching required packages 
status1 = system('sys_script/kill_script.sh'); 
setenv('LD_LIBRARY_PATH',old_env); %Restoring the old path of LD_LIBRARY_PATH