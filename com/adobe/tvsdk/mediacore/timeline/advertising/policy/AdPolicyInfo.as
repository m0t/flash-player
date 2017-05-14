package com.adobe.tvsdk.mediacore.timeline.advertising.policy
{
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdBreakTimelineItem;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdTimelineItem;
   
   [native(instance="PSDKAdPolicyInfoObject",methods="auto",cls="PSDKAdPolicyInfoClass")]
   [API("712")]
   public class AdPolicyInfo
   {
       
      
      public function AdPolicyInfo()
      {
         super();
      }
      
      native public final function get adBreakTimelineItems() : Vector.<AdBreakTimelineItem>;
      
      native public final function get adTimelineItem() : AdTimelineItem;
      
      native public final function get currentTime() : Number;
      
      native public final function get seekToTime() : Number;
      
      native public final function get rate() : Number;
      
      native public final function get mode() : int;
   }
}
