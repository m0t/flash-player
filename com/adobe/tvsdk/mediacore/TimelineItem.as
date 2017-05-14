package com.adobe.tvsdk.mediacore
{
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKTimelineItemObject",methods="auto",cls="PSDKTimelineItemClass",construct="native")]
   [API("712")]
   public class TimelineItem implements TimelineMarker
   {
       
      
      public function TimelineItem()
      {
         super();
      }
      
      native public final function get time() : Number;
      
      native public final function get duration() : Number;
      
      native public final function get id() : uint;
      
      native public final function get virtualRange() : TimeRange;
      
      native public final function get localRange() : TimeRange;
      
      native public final function get watched() : Boolean;
      
      native public final function get isTemporary() : Boolean;
   }
}
