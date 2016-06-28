classdef Pitch_state < matlab.System 

   methods (Access = protected)
       function pitch = stepImpl(~)
         if coder.target('Rtw')
            coder.cinclude('MyCopter.h');
            
            pitch = 0.0;
            pitch = coder.ceval('GET_PITCH_STATE');
         end
      end
   end
end 
