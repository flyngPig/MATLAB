classdef Motors < matlab.System 
    
    methods (Access = protected)
 

        function stepImpl(obj,roll,pitch,yaw,throttle)
            if coder.target('Rtw')
                 coder.cinclude('MyCopter.h'); 
                 coder.ceval('copter.motors.set_roll',roll);
                 coder.ceval('copter.motors.set_pitch',pitch);
                 coder.ceval('copter.motors.set_yaw',yaw);
                 coder.ceval('copter.motors.set_throttle',throttle);
            end
        end
        
        
        
        
    end
end
