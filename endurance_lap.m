function time = endurance_lap(track, c)
    distance = max(track.arclength)*3.28;
    turns = 0;
    increasing = 1;
    turn_list = [];
    [maximum,max_index] = findpeaks(track.curvature);
    [minimum,min_index] = findpeaks(-track.curvature);
    apexes = [maximum minimum; max_index min_index];
    radii = 1./apexes(1:1,:);
    apex_velocities = zeros(size(apexes));
    for (i = 1:size(apexes))
        apex_velocities(i) = find_turn_velocity(c, angle, radii(i), t);
    end

    time = lap_time * 16;
end