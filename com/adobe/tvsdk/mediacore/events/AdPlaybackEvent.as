package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.timeline.advertising.Ad;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdBreak;
   
   [native(instance="PSDKAdPlaybackEventObject",methods="auto",cls="PSDKAdPlaybackEventClass")]
   [API("712")]
   public class AdPlaybackEvent extends PSDKEvent
   {
      
      public static const AD_STARTED:int = 105;
      
      public static const AD_PROGRESS:int = 106;
      
      public static const AD_COMPLETED:int = 107;
       
      
      public function AdPlaybackEvent(type:int, adBreak:AdBreak, ad:Ad, progress:Number, rate:Number, time:Number, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,adBreak,ad,progress,rate,time,target);
      }
      
      native private function ctor(param1:int, param2:AdBreak, param3:Ad, param4:Number, param5:Number, param6:Number, param7:PSDKEventTargetInterface = null) : void;
      
      native public final function get adBreak() : AdBreak;
      
      native public final function get ad() : Ad;
      
      native public final function get progress() : Number;
      
      native public final function get rate() : Number;
      
      native public final function get time() : Number;
   }
}
