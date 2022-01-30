classdef tire
    properties
        camber
        pressure
        circumference
        front_load
        rear_load
    end
    methods
        function obj = tire(c, p, circum)
            obj.camber = c;
            obj.pressure = p;
            obj.circumference = circum;
        end
    end
end