package com.adobe.tvsdk.mediacore
{
   import flash.utils.ByteArray;
   
   [API("712")]
   public interface DRMAuthenticateListener extends DRMErrorListener
   {
       
      
      function onAuthenticationComplete(param1:ByteArray) : void;
   }
}
