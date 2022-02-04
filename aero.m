classdef aero
    properties
        area
        density % Base value for air density in normal conditions.
        cd % Base value for drag coefficient without aerodynamics for SAE
           % car.
    end
    methods(Static)
        function obj = aero(ar)
            obj.area = ar;
            obj.density = 0.0765;
            obj.cd = 0.73;
        end
        
        function drag = find_drag(ar, velocity)
            drag = ar.cd * (ar.density * velocity * velocity)/2 * ar.area;
        end
    end
end