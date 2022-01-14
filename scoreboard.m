%% scorebaord.m
% This program calculates the score your car would get from your four best
% times in competion in the 2019 FSAE competion in Michigan.  

%Author: Drew Vitale
%Date: January 13,2022
%Collaborted with Fighting Irish Racing Team: VD and Suspension Subsysttems 

% Clear memory
clear

%Clear Command Window
clc

%% Accelartion Event
%define needed variables
t_your = input("What was your time for the accelation event?  ");
%Data recieved from 2019 FSAE Michigan
t_min = 4.109; %seconds
t_max = t_min*1.5;
%Calculate the score recieved due to score
if (t_your>t_max) 
    acc_score=4.5;
    disp(acc_score);
else if (t_your < t_min) 
   disp("Your time was faster than any other car")
else 
acc_score = (95.5 * ((t_max/t_your)-1)/((t_max/t_min)-1))+4.5;
%Display score
disp("You recieved a: ")
disp(acc_score);
end
end













%% Slidpad Events 
%% Auto Cross Event
%% Endurance Event
 