% The purpose of this file is to provide the functions needed to build a track
% for running our lap simulations on.

% Functions needed include functions to build straights and turns, as well
% as the entire courses themselves, built using the straights and turns
% functions
classdef track
    properties
       parts % the series of turns and straights that make up a lap 
    end
    methods
        function t = track()
            t.parts = [];
        end
    end
end

function turn = build_turn()

end

function acceleration_track = build_acc(length)
    acceleration_track = build_straight(length);
end

function endurance = build_endurance()

end

function skidpad = build_skidpad()

end

function autocross = build_autocross()

end

