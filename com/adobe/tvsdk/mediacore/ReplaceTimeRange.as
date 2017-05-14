package com.adobe.tvsdk.mediacore
{
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKReplaceTimeRangeObject",methods="auto",cls="PSDKReplaceTimeRangeClass")]
   [API("712")]
   public class ReplaceTimeRange extends TimeRange
   {
       
      
      public function ReplaceTimeRange(begin:Number, duration:Number, replaceDuration:Number)
      {
         super(begin,duration);
         this.ctor(begin,duration,replaceDuration);
      }
      
      native private function ctor(param1:Number, param2:Number, param3:Number) : void;
      
      native public final function get replaceDuration() : Number;
   }
}
