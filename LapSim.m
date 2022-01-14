%% Clear command window and memory
clear
clc
%% Define Parameters
% All the variables that may be tweaked for scripting will be defined
% here

car_mass = 1000; % in kilograms
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
acceleration_time = 0; % all times in seconds
skidpad_time = 0;
endurance_time = 0;
autocross_time = 0;

%% Calculate Scores for Each Lap
% Finds the scores each lap would score and adds them up for a total
% score
acceleration_score = 0;
skidpad_score = 0;
endurance_score = 0;
autocross_score = 0;
total_score = 0;

%% Display Results
% print the times of each lap in the command window, as well as the
% associated scores for each one and the total score. Then display our
% performance visually to better understand the scores.
fprintf("Program ran successfully \n");

% Acceleration
fprintf("Car completed the acceleration circuit in %f seconds,\n",...
    acceleration_time);
fprintf("scoring %f points.\n", acceleration_score);

% Skidpad
fprintf("Car completed the skidpad circuit in %f seconds,\n",...
    skidpad_time);
fprintf("scoring %f points.\n", skidpad_score);

% Autocross
fprintf("Car completed the autocross circuit in %f seconds,\n",...
    autocross_time);
fprintf("scoring %f points.\n", autocross_score);

% Endurance
fprintf("Car completed the endurance circuit in %f seconds,\n",...
    endurance_time);
fprintf("scoring %f points.\n", endurance_score);

% Total
fprintf("Car scored %f total points over all four evens.\n", ...
    total_score);