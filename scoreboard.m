%% scoreboard.m
% This program calculates the score your car would get from your four best
% times in competion in the 2019 FSAE competion in Michigan.  

%Author: Drew Vitale
%Date: January 14,2022
%Collaborated with Fighting Irish Racing Team: VD and Suspension Subsystems 


%% Class Definition
classdef scoreboard
    properties
        acceleration_score
        skidpad_score
        autocross_score
        endurance_score
        total_score
    end
    methods
        function obj = calc_acc(obj, acc_t_your)
            acc_t_min = 4.109; %seconds
            acc_t_max = acc_t_min*1.5; %seconds
            if (acc_t_your>acc_t_max) 
                %score if your run is above the maxium time and is very slow
                acc_score = 4.5;
            elseif (acc_t_your < acc_t_min) 
                %your score if your car was faster than any other car that year
                acc_score = 100;
            else 
                %equation for accelation score
                acc_score = (95.5 * ((acc_t_max/acc_t_your)-1)/((acc_t_max/acc_t_min)-1))+4.5;
            end
            obj.acceleration_score = acc_score;
        end
        
        function obj = calc_skid(obj, skip_t_your)
            skip_t_min = 4.865; %seconds
            skip_t_max = skip_t_min*1.25; %seconds
            %Calculate the score recieved due to score
            if (skip_t_your>skip_t_max)
                %score if your run is above the maxium time and is very slow
                skip_score = 3.5;
            elseif (skip_t_your < skip_t_min)
                %your score if your car was faster than any other car that year
                skip_score = 75;
            else
                %equation for skippad score
                skip_score = (71.5 * (((skip_t_max/skip_t_your)^2)-1)/( ...
                    ((skip_t_max/skip_t_min)^2)-1))+3.5;
            end
            obj.skidpad_score = skip_score;
        end
        
        function obj = calc_auto(obj, auto_t_your)
            auto_t_min = 48.799; %seconds
            auto_t_max = auto_t_min*1.45; %seconds
            %Calculate the score recieved due to score
            if (auto_t_your > auto_t_max)
                %score if your run is above the maxium time and is very slow
                auto_score = 6.5;
            elseif (auto_t_your < auto_t_min)
                %your score if your car was faster than any other car that year
                auto_score = 125;
            else
                %equation for Auto Cross score
                auto_score = (118.5 * ((auto_t_max/auto_t_your)-1)...
                    /((auto_t_max/auto_t_min)-1))+6.5;
            end
            obj.autocross_score = auto_score;
        end
        
        function obj = calc_endure(obj, endu_t_your)
            %Data recieved from 2019 FSAE Michigan
            endu_t_min = 1267.742; %seconds
            endu_t_max = endu_t_min*1.45; %seconds
            %Calculate the score recieved due to score
            if (endu_t_your>endu_t_max)
                %score if your run is above the maxium time and is very slow
                endu_score=25;
            elseif (endu_t_your < endu_t_min)
                %your score if your car was faster than any other car that year
                endu_score=275;
            else
                %equation for Endurance score
                endu_score = (250 * ((endu_t_max/endu_t_your)-1)...
                    /((endu_t_max/endu_t_min)-1))+25;
            end
            obj.endurance_score = endu_score;
        end
        
        function obj = calc_total(obj)
            obj.total_score = obj.acceleration_score + ...
                obj.skidpad_score + obj.autocross_score + ...
                obj.endurance_score;
        end
    end
end
