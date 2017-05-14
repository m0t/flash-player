package com.adobe.tvsdk.mediacore.system
{
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   
   [native(instance="PSDKNetworkConfigurationObject",methods="auto",cls="PSDKNetworkConfigurationClass")]
   [API("712")]
   public class NetworkConfiguration
   {
       
      
      public function NetworkConfiguration()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native public final function addCustomHeader(param1:String, param2:Vector.<String>) : void;
      
      native public final function get forceNativeNetworking() : Boolean;
      
      native public final function set forceNativeNetworking(param1:Boolean) : void;
      
      native public final function get useRedirectedUrl() : Boolean;
      
      native public final function set useRedirectedUrl(param1:Boolean) : void;
      
      native public final function get cookieHeaders() : Metadata;
      
      native public final function set cookieHeaders(param1:Metadata) : void;
      
      native public final function get readSetCookieHeader() : Boolean;
      
      native public final function set readSetCookieHeader(param1:Boolean) : void;
      
      native public final function get masterUpdateInterval() : int;
      
      native public final function set masterUpdateInterval(param1:int) : void;
      
      native public final function get useCookieHeaderForAllRequests() : Boolean;
      
      native public final function set useCookieHeaderForAllRequests(param1:Boolean) : void;
      
      native public final function get readLimit() : int;
      
      native public final function set readLimit(param1:int) : void;
      
      native public final function get numFragmentsToTryBeforeError() : int;
      
      native public final function set numFragmentsToTryBeforeError(param1:int) : void;
   }
}
