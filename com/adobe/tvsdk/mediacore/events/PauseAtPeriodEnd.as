package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   
   [native(instance="PSDKPauseAtPeriodEndObject",methods="auto",cls="PSDKPauseAtPeriodEndClass")]
   [API("712")]
   public class PauseAtPeriodEnd extends PSDKEvent
   {
       
      
      public function PauseAtPeriodEnd(eventType:int, adId:uint, target:PSDKEventTargetInterface = null)
      {
         super(eventType,target);
         this.ctor(eventType,adId,target);
      }
      
      native private function ctor(param1:int, param2:uint, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get adId() : uint;
   }
}
