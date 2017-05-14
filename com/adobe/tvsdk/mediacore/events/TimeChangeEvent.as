package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   
   [native(instance="PSDKTimeChangeEventObject",methods="auto",cls="PSDKTimeChangeEventClass")]
   [API("712")]
   public class TimeChangeEvent extends PSDKEvent
   {
      
      public static const TIME_CHANGED:int = 127;
       
      
      public function TimeChangeEvent(time:Number, target:PSDKEventTargetInterface = null)
      {
         super(PSDKEventType.TIME_CHANGED,target);
         this.ctor(time,target);
      }
      
      native private function ctor(param1:Number, param2:PSDKEventTargetInterface = null) : void;
      
      native public final function get time() : Number;
   }
}
