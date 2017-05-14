package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.metadata.TimedMetadata;
   
   [native(instance="PSDKTimedMetadataEventObject",methods="auto",cls="PSDKTimedMetadataEventClass")]
   [API("712")]
   public class TimedMetadataEvent extends PSDKEvent
   {
      
      public static const TIMED_METADATA_AVAILABLE:int = 128;
      
      public static const TIMED_METADATA_IN_BACKGROUND:int = 132;
       
      
      public function TimedMetadataEvent(type:int, timedMetadata:TimedMetadata, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,timedMetadata,target);
      }
      
      native private function ctor(param1:int, param2:TimedMetadata, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get timedMetadata() : TimedMetadata;
   }
}
