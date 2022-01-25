%% turnsim.m
% this program estimates the amount of time it takes for a car to go
% through a turn given the turn radius and angle
% Assumptions:
%   -all turns are constant radius
%   -all braking done before turn
%   -all turns lack camber/banking
%
% Author: Jack Zagrocki
% Collaborated with: Notre Dame FSAE

clear
clc

%% Set Parameters
% turn characteristics
turn_rad = 10; %turn radius (m)
turn_angle = 10; %turn angle (degrees)
turn_len = 2*pi*turn_rad*(turn_angle/360); %turn length (m)

% car characteristics (most are placeholder values)
m = 1000; % mass in kg
tire_rad = 0.2; % lowest possible tire radius according to fsae rules
torque = 1000; % avg val, 80% of peak, in Nm

%% forces
% drag force
rho = 1.225; %density of air, kg/m^3
v = ;%velocity
cd = ;%coefficient of drag
a = ;%cross sectional area of car
drag = 0.5*rho*v^2*cd*a;

% friction
g = 9.81; %m/s^2
muk = %coefficent of friction between slick tires and dry pavement
friction = muk*m*g
