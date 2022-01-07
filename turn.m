classdef turn
   properties
      radius
      
      % 0 indicates a left turn, 1 indiciates a right turn
      direction
      
      turn_angle
      
      distance
      
   end
   methods
       function t = turn(rad, dir, angle)
           t.radius = rad;
           t.direction = dir;
           t.turn_angle = angle;
           t.distance = 2*rad*pi*(angle/360);
       end
   end
end