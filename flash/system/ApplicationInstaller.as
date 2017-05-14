package flash.system
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   [API("686")]
   [native(instance="ApplicationInstallerObject",methods="auto",cls="ApplicationInstallerClass",construct="native",gc="exact")]
   [ExcludeClass]
   public final class ApplicationInstaller extends EventDispatcher
   {
       
      
      private var _strings:XML;
      
      private var _icon:ByteArray;
      
      public function ApplicationInstaller()
      {
         super();
      }
      
      native public static function stringsDigest(param1:XML) : String;
      
      native public static function iconDigest(param1:ByteArray) : String;
      
      native public function install(param1:String = "install_with_shortcuts") : void;
      
      native public function get isInstalled() : Boolean;
   }
}
