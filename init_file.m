%% Launching Components
old_env = getenv('LD_LIBRARY_PATH'); % Storing the path that MATLAB uses
% Forcing a new path to LD_LIBRARY_PATH
setenv('LD_LIBRARY_PATH','/opt/ros/indigo/lib:/opt/ros/indigo/lib/x86_64-linux-gnu');
% launching required packages 
status1 = system('sys_script/init_script.sh'); 
setenv('LD_LIBRARY_PATH',old_env); %Restoring the old path of LD_LIBRARY_PATH

%% Initialize path for dependencies and libraries
disp('Linking Libraries and Dependencies');

% Openrobots
openrobots_folder=[getenv('ROBOTPKG_BASE'),'/lib/matlab'];
addpath(genpath(openrobots_folder));

%% Linking Optitrack to Matlab via genomix
client = genomix.client();

%%
opti=client.load('optitrack');
pause(2);
result = opti.connect('marey','1510','239.192.168.30','1511');
string = ['Connecting to MoCap: ',result.status];
disp(string);

% pom = client.load('pom');
% pause(2);
% result = pom.connect_port('measure/mocap', 'optitrack/bodies/brunelleschi');
% pause(2);
% string = ['Initializing 1st connection of POM: ',result.status];
% pom.add_measurement('mocap');
% disp(string);