package com.adobe.tvsdk.mediacore.timeline
{
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdTimelineItem;
   
   [native(instance="PSDKTimelineObject",methods="auto",cls="PSDKTimelineClass",construct="native")]
   [API("712")]
   public class Timeline
   {
       
      
      public function Timeline()
      {
         super();
      }
      
      native public final function convertToLocalTime(param1:Number) : Number;
      
      native public final function convertToVirtualTime(param1:Number) : Number;
      
      native public final function checkIfPositionIsReserved(param1:Number) : Boolean;
      
      native public final function get timelineMarkers() : Vector.<TimelineMarker>;
      
      native public final function get timelineItems() : Vector.<AdTimelineItem>;
   }
}
