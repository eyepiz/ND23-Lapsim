classdef brakes
    properties
       torque 
    end
    methods(Static)
        function obj = brakes(t)
            obj.torque = t;
        end
        
        function braking_force = brake_force(t, b)
           braking_force = b.torque/t.radius;
        end
    end
end