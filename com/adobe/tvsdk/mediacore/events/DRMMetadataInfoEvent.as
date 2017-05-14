package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.info.DRMMetadataInfo;
   
   [native(instance="PSDKDRMMetadataInfoEventObject",methods="auto",cls="PSDKDRMMetadataInfoEventClass")]
   [API("712")]
   public class DRMMetadataInfoEvent extends PSDKEvent
   {
      
      public static const DRM_METADATA_INFO_AVAILABLE:int = 110;
       
      
      public function DRMMetadataInfoEvent(info:DRMMetadataInfo, target:PSDKEventTargetInterface = null)
      {
         super(PSDKEventType.DRM_METADATA_INFO_AVAILABLE,target);
         this.ctor(info,target);
      }
      
      native private function ctor(param1:DRMMetadataInfo, param2:PSDKEventTargetInterface = null) : void;
      
      native public final function get dRMMetadataInfo() : DRMMetadataInfo;
   }
}
