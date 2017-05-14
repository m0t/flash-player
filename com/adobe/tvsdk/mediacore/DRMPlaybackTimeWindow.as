package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKDRMPlaybackTimeWindowObject",methods="auto",cls="PSDKDRMPlaybackTimeWindowClass")]
   [API("712")]
   public class DRMPlaybackTimeWindow
   {
       
      
      public function DRMPlaybackTimeWindow()
      {
         super();
      }
      
      native public final function get playbackPeriodInSeconds() : int;
      
      native public final function get playbackStartDate() : Date;
      
      native public final function get playbackEndDate() : Date;
   }
}
