function display_scores(s, acceleration_time, skidpad_time,...
    endurance_time, autocross_time)
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
end