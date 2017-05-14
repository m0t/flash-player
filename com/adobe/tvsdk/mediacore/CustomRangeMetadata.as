package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKCustomRangeMetadataObject",methods="auto",cls="PSDKCustomRangeMetadataClass")]
   [API("712")]
   public class CustomRangeMetadata
   {
       
      
      public function CustomRangeMetadata()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native public final function get type() : int;
      
      native public final function set type(param1:int) : void;
      
      native public final function get adjustSeekPosition() : Boolean;
      
      native public final function set adjustSeekPosition(param1:Boolean) : void;
      
      native public final function get timeRangeList() : Vector.<ReplaceTimeRange>;
      
      native public final function set timeRangeList(param1:Vector.<ReplaceTimeRange>) : void;
   }
}
