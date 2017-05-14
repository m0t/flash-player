package flash.system
{
   import com.adobe.tvsdk.mediacore.MediaPlayer;
   import flash.display.AVLoader;
   import flash.media.AVStream;
   import flash.media.AVURLLoader;
   import flash.media.AVURLStream;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   
   [API("682")]
   [native(instance="AuthorizedFeaturesObject",methods="auto",cls="AuthorizedFeaturesClass",construct="native",gc="exact")]
   [ExcludeClass]
   public final class AuthorizedFeatures
   {
       
      
      public function AuthorizedFeatures()
      {
         super();
      }
      
      native public function createApplicationInstaller(param1:XML, param2:ByteArray) : ApplicationInstaller;
      
      native public function enableDiskCache(param1:URLStream) : Boolean;
      
      native function isFeatureEnabled(param1:String, param2:String = null) : Boolean;
      
      native function isNegativeToken() : Boolean;
      
      [API("688")]
      native public function enableHLSPlayback(param1:AVStream) : Boolean;
      
      native public function enableAVURLLoader(param1:AVURLLoader) : Boolean;
      
      native public function enableAVURLStream(param1:AVURLStream) : Boolean;
      
      native public function enableAVLoader(param1:AVLoader) : Boolean;
      
      [API("702")]
      native public function enableMediaPlayerHLSPlayback(param1:MediaPlayer) : Boolean;
   }
}
