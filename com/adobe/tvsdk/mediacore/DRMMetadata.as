package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKDRMMetadataObject",methods="auto",cls="PSDKDRMMetadataClass")]
   [API("712")]
   public class DRMMetadata
   {
       
      
      public function DRMMetadata()
      {
         super();
      }
      
      native public final function get serverUrl() : String;
      
      native public final function get licenseID() : String;
      
      native public final function get policies() : Vector.<DRMPolicy>;
   }
}
