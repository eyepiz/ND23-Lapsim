function [time, apexes, radii] = autocross_lap(track, c)
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
    
    
%     for i = 2:9999
%         if (track.curvature(i) - track.curvature(i-1) > 0)
%             increasing = 1;
%         elseif (track.curvature(i) - track.curvature(i-1) > 0)
%             increasing = 0;
%         end
%         
%         if (increasing == 1)
%             if(track.curvature(i) > track.curvature(i+1))
%                 turn_list(end+1) = i;
%             end
%         elseif (increasing == 0)
%             if(track.curvature(i) < track.curvature(i+1))
%                 turn_list(end+1) = i;
%             end
%         end
%         if (track.curvature(i) >= track.curvature(i-1) && track.curvature(i) <= track.curvature(i+1)...
%                 && track.curvature(i-1) ~= track.curvature(i+1))
%             turn_list(end+1) = i;
%         elseif (track.curvature(i) <= track.curvature(i-1) && track.curvature(i) >= track.curvature(i+1)...
%                 && track.curvature(i-1) ~= track.curvature(i+1))
%             turn_list(end+1) = i;
%         end
        
%     end
    time = 0;
end