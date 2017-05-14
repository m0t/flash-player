package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.timeline.advertising.Ad;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdBreak;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdClick;
   
   [native(instance="PSDKAdClickEventObject",methods="auto",cls="PSDKAdClickEventClass")]
   [API("712")]
   public class AdClickEvent extends PSDKEvent
   {
      
      public static const AD_CLICK:int = 104;
       
      
      public function AdClickEvent(type:int, adBreak:AdBreak, ad:Ad, adClick:AdClick, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,adBreak,ad,adClick,target);
      }
      
      native private function ctor(param1:int, param2:AdBreak, param3:Ad, param4:AdClick, param5:PSDKEventTargetInterface = null) : void;
      
      native public final function get adBreak() : AdBreak;
      
      native public final function get ad() : Ad;
      
      native public final function get adClick() : AdClick;
   }
}
