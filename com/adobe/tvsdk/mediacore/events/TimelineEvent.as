package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.timeline.Timeline;
   
   [native(instance="PSDKTimelineEventObject",methods="auto",cls="PSDKTimelineEventClass")]
   [API("712")]
   public class TimelineEvent extends PSDKEvent
   {
      
      public static const TIMELINE_UPDATED:int = 129;
       
      
      public function TimelineEvent(type:int, timeline:Timeline, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,timeline,target);
      }
      
      native private function ctor(param1:int, param2:Timeline, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get timeline() : Timeline;
   }
}
