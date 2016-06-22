classdef Gyro < matlab.System 

   methods (Access = protected)
       function [x y z] = stepImpl(~)
         x = 0.0;
         x = coder.ceval('GET_GYRO_X');

         y = 0.0;
         y = coder.ceval('GET_GYRO_Y');

         z = 0.0;
         z = coder.ceval('GET_GYRO_Z');
      end
   end
end 

