package com.adobe.tvsdk.mediacore.info
{
   [native(instance="PSDKAudioTrackObject",methods="auto",cls="PSDKAudioTrackClass")]
   [API("712")]
   public class AudioTrack extends Track
   {
       
      
      public function AudioTrack(name:String, language:String, isDefault:Boolean, isAutoSelect:Boolean, pid:int)
      {
         super(name,language,isDefault,isAutoSelect);
         this.ctor(name,language,isDefault,isAutoSelect,pid);
      }
      
      native public final function equals(param1:AudioTrack) : Boolean;
      
      native private function ctor(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:int) : void;
      
      native public final function get pID() : int;
      
      native public final function get isValid() : Boolean;
   }
}
