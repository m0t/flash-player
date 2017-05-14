package com.adobe.tvsdk.mediacore
{
   import flash.utils.ByteArray;
   
   [native(instance="PSDKDRMLicenseObject",methods="auto",cls="PSDKDRMLicenseClass",construct="native")]
   [API("712")]
   public class DRMLicense
   {
       
      
      public function DRMLicense()
      {
         super();
      }
      
      native public final function toBytes() : ByteArray;
      
      native public final function get customProperties() : Object;
      
      native public final function get licenseStartDate() : Date;
      
      native public final function get licenseEndDate() : Date;
      
      native public final function get offlineStorageStartDate() : Date;
      
      native public final function get offlineStorageEndDate() : Date;
      
      native public final function get serverUrl() : String;
      
      native public final function get licenseID() : String;
      
      native public final function get policyID() : String;
      
      native public final function get playbackTimeWindow() : DRMPlaybackTimeWindow;
   }
}
