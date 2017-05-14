package flash.net
{
   import flash.events.EventDispatcher;
   
   [native(instance="NetConnectionObject",methods="auto",cls="NetConnectionClass")]
   [Event(name="netStatus",type="flash.events.NetStatusEvent")]
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="asyncError",type="flash.events.AsyncErrorEvent")]
   public class NetConnection extends EventDispatcher
   {
      
      private static const kConnect:uint = 0;
      
      private static const kClose:uint = 1;
      
      private static const kCall:uint = 2;
      
      private static const kAddHeader:uint = 3;
      
      private static const kGetConnectedProxyType:uint = 4;
      
      private static const kGetUsingTLS:uint = 5;
      
      private static const kGetProtocol:uint = 6;
      
      private static const kGetNearID:uint = 7;
      
      private static const kGetFarID:uint = 8;
      
      private static const kGetNearNonce:uint = 9;
      
      private static const kGetFarNonce:uint = 10;
       
      
      public function NetConnection()
      {
         super();
      }
      
      native public static function get defaultObjectEncoding() : uint;
      
      native public static function set defaultObjectEncoding(param1:uint) : void;
      
      native public function get connected() : Boolean;
      
      native public function get uri() : String;
      
      public function close() : void
      {
         this.invoke(kClose);
      }
      
      [Inspectable(environment="none")]
      public function addHeader(operation:String, mustUnderstand:Boolean = false, param:Object = null) : void
      {
         var args:Array = new Array(operation,mustUnderstand,param);
         this.invokeWithArgsArray(kAddHeader,args);
      }
      
      public function call(command:String, responder:Responder, ... arguments) : void
      {
         arguments.unshift(command,responder);
         this.invokeWithArgsArray(kCall,arguments);
      }
      
      native public function connect(param1:String, ... rest) : void;
      
      native public function get client() : Object;
      
      native public function set client(param1:Object) : void;
      
      native public function get objectEncoding() : uint;
      
      native public function set objectEncoding(param1:uint) : void;
      
      native public function get proxyType() : String;
      
      native public function set proxyType(param1:String) : void;
      
      native public function get connectedProxyType() : String;
      
      native public function get usingTLS() : Boolean;
      
      [Version("10")]
      native public function get protocol() : String;
      
      [Version("10")]
      native public function get maxPeerConnections() : uint;
      
      [Version("10")]
      native public function set maxPeerConnections(param1:uint) : void;
      
      [Version("10")]
      native public function get nearID() : String;
      
      [Version("10")]
      native public function get farID() : String;
      
      [Version("10")]
      native public function get nearNonce() : String;
      
      [Version("10")]
      native public function get farNonce() : String;
      
      [Version("10")]
      native public function get unconnectedPeerStreams() : Array;
      
      native private function invoke(param1:uint, ... rest) : *;
      
      native private function invokeWithArgsArray(param1:uint, param2:Array) : *;
   }
}
