%% Clear command window and memory
clear
clc
%% Define Parameters
% All the variables that may be tweaked for scripting will be defined
% here
% Aero Parameters
front_area = 1;
a = aero(front_area);
% Engine Parameters
horse_power = 1;
e = engine(horse_power);
% Tire Parameters
tire_camber = 1;
tire_pressure = 1;
tire_circumference = 1;
t = tire(tire_camber, tire_pressure, tire_circumference);
% Car Parameters
car_mass = 1000;
car_w_b = 1.5;
car_rear_dist = 0.5;
car_wheel_radius = 0.5;
car_cg = 0.2;
car_front_width = 1;
car_rear_width = 1;
c = car(car_mass, car_w_b, car_rear_dist, car_wheel_radius, car_cg,...
    car_front_width, car_rear_width, t, a, e);
%% Initialize Lapsim
% Declare all the variables needed to set up the car, tracks and scoring
% system

%acceleration = build_acceleration_function(75);
%skidpad = build_skidpad_function(parameters);
%endurance = build_endurance_function(parameters);
%autocross = build_autocross_function(parameters);

%% Run Lap Simulations
% Calls the functions that simulate the running of each lap
acceleration_time = acceleration(75, c, e); % all times in seconds
skidpad_time = skidpad(18.25, c);
endurance_time = 100;
autocross_time = 100;

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
display_scores(s, acceleration_time, skidpad_time, endurance_time,...
    autocross_time);
%% Plotting
%plot_scores(s);
