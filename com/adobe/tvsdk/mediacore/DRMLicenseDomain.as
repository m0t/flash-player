package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKDRMLicenseDomainObject",methods="auto",cls="PSDKDRMLicenseDomainClass")]
   [API("712")]
   public class DRMLicenseDomain
   {
       
      
      public function DRMLicenseDomain()
      {
         super();
      }
      
      native public final function get authenticationDomain() : String;
      
      native public final function get authenticationMethod() : int;
      
      native public final function get serverUrl() : String;
      
      native public final function get name() : String;
      
      native public final function set name(param1:String) : void;
   }
}
