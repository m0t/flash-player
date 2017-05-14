package com.adobe.tvsdk.mediacore
{
   [API("712")]
   public interface DRMReturnLicenseListener extends DRMErrorListener
   {
       
      
      function onLicenseReturnComplete(param1:uint) : void;
   }
}
