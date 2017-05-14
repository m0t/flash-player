package com.adobe.tvsdk.mediacore
{
   [API("712")]
   public interface DRMAcquireLicenseListener extends DRMErrorListener
   {
       
      
      function onLicenseAcquired(param1:DRMLicense) : void;
   }
}
