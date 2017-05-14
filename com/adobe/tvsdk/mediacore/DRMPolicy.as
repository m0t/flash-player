package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKDRMPolicyObject",methods="auto",cls="PSDKDRMPolicyClass")]
   [API("712")]
   public class DRMPolicy
   {
       
      
      public function DRMPolicy()
      {
         super();
      }
      
      native public final function get authenticationDomain() : String;
      
      native public final function get authenticationMethod() : int;
      
      native public final function get displayName() : String;
      
      native public final function get licenseDomain() : DRMLicenseDomain;
   }
}
