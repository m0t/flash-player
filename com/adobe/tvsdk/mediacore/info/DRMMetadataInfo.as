package com.adobe.tvsdk.mediacore.info
{
   import com.adobe.tvsdk.mediacore.DRMMetadata;
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKDRMMetadataInfoObject",methods="auto",cls="PSDKDRMMetadataInfoClass")]
   [API("712")]
   public class DRMMetadataInfo
   {
       
      
      public function DRMMetadataInfo()
      {
         super();
      }
      
      native public final function get drmMetadata() : DRMMetadata;
      
      native public final function get prefetchTimestamp() : Number;
      
      native public final function get timeRange() : TimeRange;
   }
}
