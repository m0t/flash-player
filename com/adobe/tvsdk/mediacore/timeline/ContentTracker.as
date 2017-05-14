package com.adobe.tvsdk.mediacore.timeline
{
   import com.adobe.tvsdk.mediacore.timeline.advertising.Ad;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdBreak;
   
   [native(instance="PSDKContentTrackerObject",methods="auto",cls="PSDKContentTrackerClass",construct="native")]
   [API("712")]
   public class ContentTracker
   {
       
      
      public function ContentTracker()
      {
         super();
      }
      
      native public final function onAdStart(param1:Ad) : void;
      
      native public final function onAdComplete(param1:Ad) : void;
      
      native public final function onAdProgress(param1:Ad, param2:Number) : void;
      
      native public final function onAdClick(param1:Ad) : void;
      
      native public final function onAdBreakStart(param1:AdBreak) : void;
      
      native public final function onAdBreakComplete(param1:AdBreak) : void;
      
      native public final function onAdError(param1:Ad) : void;
   }
}
