package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   
   [native(instance="PSDKPlaybackRateEventObject",methods="auto",cls="PSDKPlaybackRateEventClass")]
   [API("712")]
   public class PlaybackRateEvent extends PSDKEvent
   {
      
      public static const RATE_SELECTED:int = 119;
      
      public static const RATE_PLAYING:int = 120;
       
      
      public function PlaybackRateEvent(eventType:int, newRate:Number, target:PSDKEventTargetInterface = null)
      {
         super(eventType,target);
         this.ctor(eventType,newRate,target);
      }
      
      native private function ctor(param1:int, param2:Number, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get rate() : Number;
   }
}
