package com.adobe.tvsdk.mediacore.qos
{
   import com.adobe.tvsdk.mediacore.MediaPlayer;
   
   [native(instance="PSDKQOSProviderObject",methods="auto",cls="PSDKQOSProviderClass")]
   [API("712")]
   public class QOSProvider
   {
       
      
      public function QOSProvider()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native public final function attachMediaPlayer(param1:MediaPlayer) : void;
      
      native public final function detachMediaPlayer() : void;
      
      native public final function get deviceInformation() : DeviceInformation;
      
      native public final function get playbackInformation() : PlaybackInformation;
   }
}
