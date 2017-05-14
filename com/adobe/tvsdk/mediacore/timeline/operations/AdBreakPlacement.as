package com.adobe.tvsdk.mediacore.timeline.operations
{
   import com.adobe.tvsdk.mediacore.timeline.Placement;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdBreak;
   
   [native(instance="PSDKAdBreakPlacementObject",methods="auto",cls="PSDKAdBreakPlacementClass")]
   [API("712")]
   public class AdBreakPlacement implements TimelineOperation
   {
       
      
      public function AdBreakPlacement(adBreak:AdBreak, placement:Placement)
      {
         super();
         this.ctor(adBreak,placement);
      }
      
      native private function ctor(param1:AdBreak, param2:Placement) : void;
      
      native public final function setInvalid() : void;
      
      native public final function get adBreak() : AdBreak;
      
      native public final function get isValid() : Boolean;
      
      native public final function get placement() : Placement;
      
      native public final function set placement(param1:Placement) : void;
      
      native public final function get time() : Number;
      
      native public final function get duration() : Number;
   }
}
