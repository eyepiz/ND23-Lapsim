%% Clear command window and memory
clear
clc
%% Define Parameters
% All the variables that may be tweaked for scripting will be defined
% here all dimensions are in feet or pounds
% Aero Parameters
front_area = 9.68;
a = aero(front_area);
% Brake Parameters
torque = 800;
b = brakes(torque);
% Engine Parameters
horse_power = 30;
e = engine(horse_power);
% Tire Parameters
tire_camber = 1; % pointing inside (meaning it's negative)
tire_pressure = 15;
tire_circumference = 4.2;
tire_front_load = 0.49;
tire_rear_load = 0.51;
t = tire(tire_camber, tire_pressure, tire_circumference, tire_front_load, tire_rear_load);
% Car Parameters
car_mass = 600;
car_w_b = 5;
car_rear_dist = 0.51;
car_wheel_radius = 0.49;
car_cg = 0.2;
car_front_width = 2;
car_rear_width = 3;
c = car(car_mass, car_w_b, car_rear_dist, car_wheel_radius, car_cg,...
    car_front_width, car_rear_width, t, a, e, b);
%% Initialize Lapsim
% Declare all the variables needed to set up the car, tracks and scoring
% system
endurance = load("track_endurance_2019.mat");
autocross = load("track_autocross_2019.mat");
%% Run Lap Simulations
% Calls the functions that simulate the running of each lap
acceleration_time = acceleration(246.063, c, e, a); % all times in seconds
skidpad_time = skidpad(60, c, t);
endurance_time = 10000;
autocross_time = 10000;
% Normal function calls, currently being fixed
% endurance_time = endurance_lap(endurance, c);
% autocross_time = autocross_lap(autocross, c);

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
p = plotter;
p.plot_scores(s);
% p.plot_velocity(e, c, a);
% a.cd = 0.56;
% p.plot_velocity(e, c, a);