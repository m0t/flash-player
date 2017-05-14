package com.adobe.tvsdk.mediacore.info
{
   [native(instance="PSDKTrackObject",methods="auto",cls="PSDKTrackClass")]
   [API("712")]
   public class Track
   {
       
      
      public function Track(name:String, language:String, isDefault:Boolean, autoSelect:Boolean)
      {
         super();
         this.ctor(name,language,isDefault,autoSelect);
      }
      
      native private function ctor(param1:String, param2:String, param3:Boolean, param4:Boolean) : void;
      
      native public final function get name() : String;
      
      native public final function get language() : String;
      
      native public final function get isDefault() : Boolean;
      
      native public final function get isAutoSelect() : Boolean;
   }
}
