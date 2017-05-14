package com.adobe.tvsdk.mediacore.info
{
   [native(instance="PSDKProfileObject",methods="auto",cls="PSDKProfileClass")]
   [API("712")]
   public class Profile
   {
       
      
      public function Profile()
      {
         super();
      }
      
      native public final function isEqual(param1:Profile) : Boolean;
      
      native public final function notEqual(param1:Profile) : Boolean;
      
      native public final function get bitRate() : uint;
      
      native public final function get width() : uint;
      
      native public final function get height() : uint;
      
      native public final function get isAudioOnly() : Boolean;
      
      native public final function get isIFrame() : Boolean;
      
      native public final function get codecs() : String;
      
      native public final function get isValid() : Boolean;
   }
}
