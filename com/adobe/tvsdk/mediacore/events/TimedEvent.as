package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   
   [native(instance="PSDKTimedEventObject",methods="auto",cls="PSDKTimedEventClass")]
   [API("712")]
   public class TimedEvent extends PSDKEvent
   {
      
      public static const TIMED_EVENT:int = 133;
       
      
      public function TimedEvent(type:int, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
      }
      
      native public final function get name() : String;
      
      native public final function get description() : String;
      
      native public final function get duration() : Number;
      
      native public final function get childsDuration() : Number;
      
      native public final function get id() : uint;
      
      native public final function get parent() : TimedEvent;
   }
}
