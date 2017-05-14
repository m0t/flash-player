package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.info.Profile;
   
   [native(instance="PSDKProfileEventObject",methods="auto",cls="PSDKProfileEventClass")]
   [API("712")]
   public class ProfileEvent extends PSDKEvent
   {
      
      public static const PROFILE_CHANGED:int = 121;
       
      
      public function ProfileEvent(profileIndex:int, time:Number, profile:Profile, sFactor:int, description:String, target:PSDKEventTargetInterface = null)
      {
         super(PSDKEventType.PROFILE_CHANGED,target);
         this.ctor(profileIndex,time,profile,sFactor,description,target);
      }
      
      native private function ctor(param1:int, param2:Number, param3:Profile, param4:int, param5:String, param6:PSDKEventTargetInterface = null) : void;
      
      native public final function get profileIndex() : int;
      
      native public final function get time() : Number;
      
      native public final function get description() : String;
      
      native public final function get width() : int;
      
      native public final function get height() : int;
      
      native public final function get isAudioOnly() : Boolean;
      
      native public final function get isIFrame() : Boolean;
      
      native public final function get skipFactor() : int;
      
      native public final function get codecs() : String;
      
      native public final function get profile() : Profile;
   }
}
