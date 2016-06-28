classdef Yaw_state < matlab.System 

   methods (Access = protected)
   
       function yaw = stepImpl(~)
          if coder.target('Rtw')
            coder.cinclude('MyCopter.h');
            
            yaw = 0.0;
            yaw = coder.ceval('GET_YAW_STATE');
         end
      end
      
   end
end 
