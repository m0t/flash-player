package flash.system
{
   [native(methods="auto",cls="SecurityClass",construct="none",gc="exact")]
   public final class Security
   {
      
      public static const REMOTE:String = "remote";
      
      public static const LOCAL_WITH_FILE:String = "localWithFile";
      
      public static const LOCAL_WITH_NETWORK:String = "localWithNetwork";
      
      public static const LOCAL_TRUSTED:String = "localTrusted";
      
      [API("661")]
      public static const APPLICATION:String = "application";
       
      
      public function Security()
      {
         super();
      }
      
      native public static function allowDomain(... rest) : void;
      
      native public static function allowInsecureDomain(... rest) : void;
      
      native public static function loadPolicyFile(param1:String) : void;
      
      native public static function get exactSettings() : Boolean;
      
      native public static function set exactSettings(param1:Boolean) : void;
      
      [Inspectable(environment="none")]
      native public static function get disableAVM1Loading() : Boolean;
      
      native public static function set disableAVM1Loading(param1:Boolean) : void;
      
      native static function duplicateSandboxBridgeInputArguments(param1:Object, param2:Array) : Array;
      
      native static function duplicateSandboxBridgeOutputArgument(param1:Object, param2:*) : *;
      
      [cppcall]
      private static function createSandboxBridgeProxyFunction(targetFunc:Object, targetObj:Object, srcToplevel:Object, destToplevel:Object) : Object
      {
         return function(... rawArgs):*
         {
            var args:* = duplicateSandboxBridgeInputArguments(srcToplevel,rawArgs);
            var res:* = targetFunc.apply(targetObj,args);
            return duplicateSandboxBridgeOutputArgument(destToplevel,res);
         };
      }
      
      native public static function showSettings(param1:String = "default") : void;
      
      native public static function get sandboxType() : String;
      
      [API("672")]
      native public static function get pageDomain() : String;
   }
}
