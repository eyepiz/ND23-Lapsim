classdef tire
    properties
        camber
        pressure
    end
    methods
        function obj = tire(c, p)
            obj.camber = c;
            obj.pressure = p;
        end
    end
end