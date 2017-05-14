package com.adobe.tvsdk.mediacore.utils
{
   [native(instance="PSDKTimeRangeObject",methods="auto",cls="PSDKTimeRangeClass")]
   [API("712")]
   public class TimeRange
   {
       
      
      public function TimeRange(begin:Number, duration:Number)
      {
         super();
         this.ctor(begin,duration);
      }
      
      native public final function contains(param1:Number) : Boolean;
      
      native public final function intersects(param1:TimeRange) : Boolean;
      
      native public final function expandTimeRange(param1:TimeRange) : void;
      
      native public final function compareTo(param1:TimeRange) : int;
      
      native private function ctor(param1:Number, param2:Number) : void;
      
      native public final function get begin() : Number;
      
      native public final function get end() : Number;
      
      native public final function get duration() : Number;
      
      native public final function get isValid() : Boolean;
   }
}
