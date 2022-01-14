%% scorebaord.m
% This program calculates the score your car would get from your four best
% times in competion in the 2019 FSAE competion in Michigan.  

%Author: Drew Vitale
%Date: January 14,2022
%Collaborted with Fighting Irish Racing Team: VD and Suspension Subsystems 

% Clear memory
clear

%Clear Command Window
clc

%% Accelartion Event
clc
clear
%define needed variables
acc_t_your = input("What was your time for the accelation event?  ");
%Data recieved from 2019 FSAE Michigan
acc_t_min = 4.109; %seconds
acc_t_max = acc_t_min*1.5; %seconds
%Calculate the score recieved due to score
if (acc_t_your>acc_t_max) 
    %score if your run is above the maxium time and is very slow
    acc_score=4.5;
    disp("Your score was above the maxium time.")
    disp(acc_score);
else if (acc_t_your < acc_t_min) 
   %your score if your car was faster than any other car that year
   disp("Your time was faster than any other car.")
   acc_score = 100;
else 
    %equation for accelation score
acc_score = (95.5 * ((acc_t_max/acc_t_your)-1)/((acc_t_max/acc_t_min)-1))+4.5;
%Display score
disp("You recieved a: ")
disp(acc_score);
end
end
disp("----------------------------------");

%% Skidpad Events 
%define needed variables
skip_t_your = input("What was your time for the Skippad event?  ");
%Data recieved from 2019 FSAE Michigan
skip_t_min = 4.865; %seconds
skip_t_max = skip_t_min*1.25; %seconds
%Calculate the score recieved due to score
if (skip_t_your>skip_t_max) 
    %score if your run is above the maxium time and is very slow
    skip_score=3.5;
    disp("Your score was above the maxium time.")
    disp(skip_score);
else if (skip_t_your < skip_t_min) 
   %your score if your car was faster than any other car that year
   disp("Your time was faster than any other car.")
   skip_score = 75;
else 
    %equation for skippad score
skip_score = (71.5 * (((skip_t_max/skip_t_your)^2)-1)/( ...
    ((skip_t_max/skip_t_min)^2)-1))+3.5;
%Display score
disp("You recieved a: ")
disp(skip_score);
end
end
disp("----------------------------------");
%% Auto Cross Event
%define needed variables
auto_t_your = input("What was your time for the Auto Cross event?  ");
%Data recieved from 2019 FSAE Michigan
auto_t_min = 48.799; %seconds
auto_t_max = auto_t_min*1.45; %seconds
%Calculate the score recieved due to score
if (auto_t_your>auto_t_max) 
    %score if your run is above the maxium time and is very slow
    auto_score=6.5;
    disp("Your score was above the maxium time.")
    disp(auto_score);
else if (auto_t_your < auto_t_min) 
   %your score if your car was faster than any other car that year
   disp("Your time was faster than any other car.")
   auto_score = 125;
else 
    %equation for Auto Cross score
auto_score = (118.5 * ((auto_t_max/auto_t_your)-1)/((auto_t_max/auto_t_min)-1))+6.5;
%Display score
disp("You recieved a: ")
disp(auto_score);
end
end
disp("----------------------------------");
%% Endurance Event
%define needed variables
endu_t_your = input("What was your time for the Endurance event?  ");
%Data recieved from 2019 FSAE Michigan
endu_t_min = 1267.742; %seconds
endu_t_max = endu_t_min*1.45; %seconds
%Calculate the score recieved due to score
if (endu_t_your>endu_t_max) 
    %score if your run is above the maxium time and is very slow
    endu_score=25;
    disp("Your score was above the maxium time.")
    disp(endu_score);
else if (endu_t_your < endu_t_min) 
   %your score if your car was faster than any other car that year
   disp("Your time was faster than any other car.")
   endu_score=275;
else 
    %equation for Endurance score
    endu_score = (250 * ((endu_t_max/endu_t_your)-1)/((endu_t_max/endu_t_min)-1))+25;
%Display score
disp("You recieved a: ")
disp(endu_score);
end
end
disp("----------------------------------");

%% Adding all the Scores
tot_score = acc_score+skip_score+auto_score+endu_score;
disp("Your final total score is: ");
disp(tot_score);