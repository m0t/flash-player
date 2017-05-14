package com.adobe.tvsdk.mediacore.timeline.advertising
{
   import com.adobe.tvsdk.mediacore.TimelineItem;
   
   [native(instance="PSDKAdBreakTimelineItemObject",methods="auto",cls="PSDKAdBreakTimelineItemClass",construct="native")]
   [API("712")]
   public class AdBreakTimelineItem extends TimelineItem
   {
       
      
      public function AdBreakTimelineItem()
      {
         super();
      }
      
      native public final function get adBreak() : AdBreak;
      
      native public final function get items() : Vector.<AdTimelineItem>;
      
      native public final function get placementType() : int;
   }
}
