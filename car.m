classdef car
   properties
      mass
      wheel_base
      tire
      engine % class for the engine subsystem
      chassis % class for the chassis subsytem
      electrical % class for the electrical subsystem
      brake % class for the brakes subsystem
      drivetrain % class for the drivetrain subsystem
      % Add all other properties to the default constructor function
   end
   methods
       % Default Constructor
       function obj = car(mass, wb, tire, eng, chass, ele, brake, d_t)
          obj.mass = mass;
          obj.wheel_base = wb;
          obj.tire = tire;
          obj.engine = eng;
          obj.chassis = chass;
          obj.electrical = ele;
          obj.brake = brake;
          obj.drivetrain = d_t;
       end
      %% Functions Needed:
      
   end
end