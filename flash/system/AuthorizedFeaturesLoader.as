package flash.system
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   [API("682")]
   [native(instance="AuthorizedFeaturesLoaderObject",methods="auto",cls="AuthorizedFeaturesLoaderClass",gc="exact")]
   [ExcludeClass]
   public final class AuthorizedFeaturesLoader extends EventDispatcher
   {
       
      
      public function AuthorizedFeaturesLoader()
      {
         super();
      }
      
      native public function get authorizedFeatures() : AuthorizedFeatures;
      
      native public function loadAuthorizedFeatures() : void;
      
      [API("688")]
      native public function loadAuthorizedFeaturesFromData(param1:ByteArray) : void;
      
      [API("682")]
      native function makeGlobal() : void;
   }
}
