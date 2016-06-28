classdef Roll_state < matlab.System 

   methods (Access = protected)
   
       function roll = stepImpl(~)
          if coder.target('Rtw')
            coder.cinclude('MyCopter.h');
            
            roll = 0.0;
            roll = coder.ceval('GET_ROLL_STATE');
         end
      end
      
   end
end 
