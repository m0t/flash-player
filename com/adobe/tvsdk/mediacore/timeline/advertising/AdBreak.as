package com.adobe.tvsdk.mediacore.timeline.advertising
{
   import com.adobe.tvsdk.mediacore.timeline.ContentTracker;
   
   [native(instance="PSDKAdBreakObject",methods="auto",cls="PSDKAdBreakClass")]
   [API("712")]
   public class AdBreak
   {
       
      
      public function AdBreak(adsArray:Vector.<Ad>, tracker:ContentTracker)
      {
         super();
         this.ctor(adsArray,tracker);
      }
      
      native private function ctor(param1:Vector.<Ad>, param2:ContentTracker) : void;
      
      native public final function get duration() : Number;
      
      native public final function get ads() : Vector.<Ad>;
      
      native public final function get tracker() : ContentTracker;
      
      native public final function get insertionType() : int;
   }
}
