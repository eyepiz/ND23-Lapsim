clear
clc


%% Car 1
% Aero Parameters
front_area = 9.68;
a1 = aero(front_area);
% Brake Parameters
torque = 800;
b1 = brakes(torque);
% Engine Parameters
horse_power = 25;
e1 = engine(horse_power);
% Tire Parameters
tire_camber = 1;
tire_pressure = 1;
tire_circumference = 4.2;
tire_front_load = 0.49;
tire_rear_load = 0.51;
t1 = tire(tire_camber, tire_pressure, tire_circumference, tire_front_load, tire_rear_load);
% Car Parameters
car_mass = 400;
car_w_b = 5;
car_rear_dist = 0.51;
car_wheel_radius = 0.49;
car_cg = 0.2;
car_front_width = 2;
car_rear_width = 3;
c1 = car(car_mass, car_w_b, car_rear_dist, car_wheel_radius, car_cg,...
    car_front_width, car_rear_width, t1, a1, e1, b1);



%% Car 2
% Aero Parameters
front_area = 9.68;
a2 = aero(front_area);
% Brake Parameters
torque = 800;
b2 = brakes(torque);
% Engine Parameters
horse_power = 25;
e2 = engine(horse_power);
% Tire Parameters
tire_camber = 1;
tire_pressure = 1;
tire_circumference = 4.2;
tire_front_load = 0.49;
tire_rear_load = 0.51;
t2 = tire(tire_camber, tire_pressure, tire_circumference, tire_front_load, tire_rear_load);
% Car Parameters
car_mass = 500;
car_w_b = 5;
car_rear_dist = 0.51;
car_wheel_radius = 0.49;
car_cg = 0.2;
car_front_width = 2;
car_rear_width = 3;
c2 = car(car_mass, car_w_b, car_rear_dist, car_wheel_radius, car_cg,...
    car_front_width, car_rear_width, t2, a2, e2, b2);


%% Car 3
% Aero Parameters
front_area = 9.68;
a3 = aero(front_area);
% Brake Parameters
torque = 800;
b3 = brakes(torque);
% Engine Parameters
horse_power = 25;
e3 = engine(horse_power);
% Tire Parameters
tire_camber = 1;
tire_pressure = 1;
tire_circumference = 4.2;
tire_front_load = 0.49;
tire_rear_load = 0.51;
t3 = tire(tire_camber, tire_pressure, tire_circumference, tire_front_load, tire_rear_load);
% Car Parameters
car_mass = 600;
car_w_b = 5;
car_rear_dist = 0.51;
car_wheel_radius = 0.49;
car_cg = 0.2;
car_front_width = 2;
car_rear_width = 3;
c3 = car(car_mass, car_w_b, car_rear_dist, car_wheel_radius, car_cg,...
    car_front_width, car_rear_width, t3, a3, e3, b3);

%% Run LapTimes

[acceleration_time1, vs1] = acceleration(246.063, c1, e1, a1); % all times in seconds
skidpad_time1 = skidpad(60, c1, t1);

[acceleration_time2, vs2] = acceleration(246.063, c2, e2, a2); % all times in seconds
skidpad_time2 = skidpad(60, c2, t2);

[acceleration_time3, vs3] = acceleration(246.063, c3, e3, a3); % all times in seconds
skidpad_time3 = skidpad(60, c3, t3);


%% Plot Results
p = plotter();
p.plot_velocity(vs1, vs2, vs3);
