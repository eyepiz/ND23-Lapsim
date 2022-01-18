%% straight line acceleration/deceleration
% this is a simplified model and requires additional work

% clear command window and memory
clear
clc

%% set parameters
mass = 1000; % of the vehicle (kg)

% SPECIFY
torque = 1000; % this is an average value (roughly 80% of the peak) (N*m)

tire_radius = 0.2; % minimum value according to FSAE rules (m) 0.2032

% SPECIFY
drag_force = 1000; % this varies as the car accelerates (N)

initial_velo = 0; % initial velocity (m/s)
final_velo = 60; % final velocity (m/s)

track_len = 2000; % track/straight length (m)

%% calculations
contact_force = torque/tire_radius; % tractive force that the wheels generate

net_force = contact_force - drag_force; % net accelerating force

disp(num2str(net_force)); % display net force to double check

net_acc = net_force/mass; % net acceleration value

disp(num2str(net_acc)); % display net acceleration to double check

time = sqrt((2 * track_len)/net_acc); % calculate the time

disp(num2str(time)); % display the time



