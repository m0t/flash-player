package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdBreak;
   
   [native(instance="PSDKAdBreakPlaybackEventObject",methods="auto",cls="PSDKAdBreakPlaybackEventClass")]
   [API("712")]
   public class AdBreakPlaybackEvent extends PSDKEvent
   {
      
      public static const AD_BREAK_STARTED:int = 101;
      
      public static const AD_BREAK_COMPLETED:int = 102;
      
      public static const AD_BREAK_SKIPPED:int = 103;
       
      
      public function AdBreakPlaybackEvent(type:int, adBreak:AdBreak, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,adBreak,target);
      }
      
      native private function ctor(param1:int, param2:AdBreak, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get adBreak() : AdBreak;
   }
}
