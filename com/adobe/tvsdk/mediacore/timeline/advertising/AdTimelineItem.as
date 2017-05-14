package com.adobe.tvsdk.mediacore.timeline.advertising
{
   import com.adobe.tvsdk.mediacore.TimelineItem;
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKAdTimelineItemObject",methods="auto",cls="PSDKAdTimelineItemClass")]
   [API("712")]
   public class AdTimelineItem extends TimelineItem
   {
       
      
      public function AdTimelineItem(id:uint, virtualRange:TimeRange, localRange:TimeRange, adbreak:AdBreak, ad:Ad)
      {
         super();
         this.ctor(id,virtualRange,localRange,adbreak,ad);
      }
      
      native private function ctor(param1:uint, param2:TimeRange, param3:TimeRange, param4:AdBreak, param5:Ad) : void;
      
      native public final function get adBreak() : AdBreak;
      
      native public final function get ad() : Ad;
   }
}
