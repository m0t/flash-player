package com.adobe.tvsdk.mediacore.timeline
{
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKPlacementObject",methods="auto",cls="PSDKPlacementClass")]
   [API("712")]
   public class Placement
   {
      
      public static const UNKNOWN_DURATION:Number = -1;
      
      public static const UNKNOWN_POSITION:Number = -1;
       
      
      public function Placement(type:int = 0, time:Number = -1, duration:Number = -1, mode:int = 0)
      {
         super();
         this.ctor(type,time,duration,mode);
      }
      
      native private function ctor(param1:int = 0, param2:Number = -1, param3:Number = -1, param4:int = 0) : void;
      
      native public final function compareTo(param1:Placement) : int;
      
      native public final function get isValid() : Boolean;
      
      native public final function get type() : int;
      
      native public final function get time() : Number;
      
      native public final function get duration() : Number;
      
      native public final function get mode() : int;
      
      native public final function get range() : TimeRange;
   }
}
