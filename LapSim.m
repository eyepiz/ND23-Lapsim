%% Clear command window and memory
clear
clc
%% Define Parameters
% All the variables that may be tweaked for scripting will be defined
% here
driver_weight = 75;
wheel_radius = 1;
car_mass = 1000; % in kilograms, does not include driver
front_mass = 500;
rear_mass = 500;
wheel_base = 2; % in meters
aero_surface_area = 8; % in meters

%% Initialize Lapsim
% Declare all the variables needed to set up the car, tracks and scoring
% system

%acceleration = build_acceleration_function(75);
%skidpad = build_skidpad_function(parameters);
%endurance = build_endurance_function(parameters);
%autocross = build_autocross_function(parameters);

%% Run Lap Simulations
% Calls the functions that simulate the running of each lap
acceleration_time = 1; % all times in seconds
skidpad_time = 1;
endurance_time = 1;
autocross_time = 1;

%% Calculate Scores for Each Lap
% Finds the scores each lap would score and adds them up for a total
% score
s = scoreboard;
s = calc_acc(s, acceleration_time);
s = calc_skid(s, skidpad_time);
s = calc_auto(s, endurance_time);
s = calc_endure(s, autocross_time);
s = calc_total(s);


%% Display Results
% print the times of each lap in the command window, as well as the
% associated scores for each one and the total score. Then display our
% performance visually to better understand the scores.
fprintf("Program ran successfully \n");

% Acceleration
fprintf("Car completed the acceleration circuit in %f seconds,\n",...
    acceleration_time);
fprintf("scoring %f points.\n", s.acceleration_score);

% Skidpad
fprintf("Car completed the skidpad circuit in %f seconds,\n",...
    skidpad_time);
fprintf("scoring %f points.\n", s.skidpad_score);

% Autocross
fprintf("Car completed the autocross circuit in %f seconds,\n",...
    autocross_time);
fprintf("scoring %f points.\n", s.autocross_score);

% Endurance
fprintf("Car completed the endurance circuit in %f seconds,\n",...
    endurance_time);
fprintf("scoring %f points.\n", s.endurance_score);

% Total
fprintf("Car scored %f total points over all four events.\n", ...
    s.total_score);