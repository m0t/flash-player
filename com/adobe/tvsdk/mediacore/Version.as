package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKVersionObject",methods="auto",cls="PSDKVersionClass",construct="native")]
   [API("712")]
   public final class Version
   {
       
      
      public function Version()
      {
         super();
      }
      
      native public static function get version() : String;
      
      native public static function get description() : String;
      
      native public static function get major() : uint;
      
      native public static function get minor() : uint;
      
      native public static function get revision() : uint;
      
      native public static function get apiVersion() : uint;
   }
}
