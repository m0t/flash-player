package com.adobe.tvsdk.mediacore.info
{
   [native(instance="PSDKClosedCaptionsTrackObject",methods="auto",cls="PSDKClosedCaptionsTrackClass")]
   [API("712")]
   public class ClosedCaptionsTrack extends Track
   {
      
      public static const SERVICE_608_CAPTIONS:int = 0;
      
      public static const SERVICE_708_CAPTIONS:int = 1;
      
      public static const SERVICE_WEB_VTT_CAPTIONS:int = 2;
       
      
      public function ClosedCaptionsTrack(name:String, language:String, isDefault:Boolean, isAutoSelect:Boolean, serviceType:int, isForced:Boolean)
      {
         super(name,language,isDefault,isAutoSelect);
         this.ctor(name,language,isDefault,isAutoSelect,serviceType,isForced);
      }
      
      native private function ctor(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:int, param6:Boolean) : void;
      
      native public final function get serviceType() : int;
      
      native public final function get isForced() : Boolean;
      
      native public final function get isValid() : Boolean;
   }
}
