package com.adobe.tvsdk.mediacore.timeline.operations
{
   import com.adobe.tvsdk.mediacore.timeline.Placement;
   
   [native(instance="PSDKDeleteRangeTimelineOperationObject",methods="auto",cls="PSDKDeleteRangeTimelineOperationClass")]
   [API("712")]
   public class DeleteRangeTimelineOperation implements TimelineOperation
   {
       
      
      public function DeleteRangeTimelineOperation(placement:Placement)
      {
         super();
         this.ctor(placement);
      }
      
      native private function ctor(param1:Placement) : void;
      
      native public final function get isValid() : Boolean;
      
      native public final function get placement() : Placement;
      
      native public final function set placement(param1:Placement) : void;
   }
}
