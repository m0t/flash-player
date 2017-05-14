package com.adobe.tvsdk.mediacore.qos
{
   [native(instance="PSDKLoadInformationObject",methods="auto",cls="PSDKLoadInformationClass")]
   [API("712")]
   public class LoadInformation
   {
       
      
      public function LoadInformation()
      {
         super();
      }
      
      native public final function get type() : int;
      
      native public final function get url() : String;
      
      native public final function get periodIndex() : int;
      
      native public final function get size() : int;
      
      native public final function get mediaDuration() : Number;
      
      native public final function get downloadDuration() : Number;
      
      native public final function get trackName() : String;
      
      native public final function get trackType() : String;
      
      native public final function get trackIndex() : int;
   }
}
