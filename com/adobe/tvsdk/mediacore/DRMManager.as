package com.adobe.tvsdk.mediacore
{
   import flash.utils.ByteArray;
   
   [native(instance="PSDKDRMManagerObject",methods="auto",cls="PSDKDRMManagerClass",construct="native")]
   [API("712")]
   public class DRMManager extends PSDKEventTargetInterface
   {
       
      
      public function DRMManager()
      {
         super();
      }
      
      public function addEventListener(t:int, l:Function) : Object
      {
         return eventDispatcher.addEventListener(t,l);
      }
      
      public function removeEventListener(t:int, l:Function) : void
      {
         eventDispatcher.removeEventListener(t,l);
      }
      
      public function dispatchEvent(e:PSDKEvent) : void
      {
         eventDispatcher.dispatchEvent(e);
      }
      
      native public final function acquireLicense(param1:DRMMetadata, param2:int, param3:DRMAcquireLicenseListener) : void;
      
      native public final function acquirePreviewLicense(param1:DRMMetadata, param2:DRMAcquireLicenseListener) : void;
      
      native public final function authenticate(param1:DRMMetadata, param2:String, param3:String, param4:String, param5:String, param6:DRMAuthenticateListener) : void;
      
      native public final function createMetadataFromBytes(param1:ByteArray, param2:DRMErrorListener) : DRMMetadata;
      
      native public final function initialize(param1:DRMOperationCompleteListener) : void;
      
      native public final function joinLicenseDomain(param1:DRMLicenseDomain, param2:Boolean, param3:DRMOperationCompleteListener) : void;
      
      native public final function leaveLicenseDomain(param1:DRMLicenseDomain, param2:DRMOperationCompleteListener) : void;
      
      native public final function resetDRM(param1:DRMOperationCompleteListener) : void;
      
      native public final function returnLicense(param1:String, param2:String, param3:String, param4:Boolean, param5:DRMReturnLicenseListener) : void;
      
      native public final function setAuthenticationToken(param1:DRMMetadata, param2:String, param3:ByteArray, param4:DRMOperationCompleteListener) : void;
      
      native public final function storeLicenseBytes(param1:ByteArray, param2:DRMOperationCompleteListener) : void;
      
      native public final function get maxOperationTime() : int;
      
      native public final function set maxOperationTime(param1:int) : void;
   }
}
