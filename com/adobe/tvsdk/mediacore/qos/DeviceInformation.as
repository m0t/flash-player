package com.adobe.tvsdk.mediacore.qos
{
   [native(instance="PSDKDeviceInformationObject",methods="auto",cls="PSDKDeviceInformationClass",construct="native")]
   [API("712")]
   public class DeviceInformation
   {
       
      
      public function DeviceInformation()
      {
         super();
      }
      
      native public final function get runtimeVersion() : String;
      
      native public final function get runtimeType() : String;
      
      native public final function get os() : String;
      
      native public final function get densityDPI() : int;
      
      native public final function get heightPixels() : int;
      
      native public final function get widthPixels() : int;
      
      native public final function get isSeekToKeyFrame() : Boolean;
   }
}
