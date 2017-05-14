package flash.display
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvents;
   import flash.system.ApplicationDomain;
   import flash.utils.ByteArray;
   
   [native(instance="LoaderInfoObject",methods="auto",cls="LoaderInfoClass",construct="native",gc="exact")]
   [Exclude(kind="method",name="dispatchEvent")]
   [Event(name="httpStatus",type="flash.events.HTTPStatusEvent")]
   [Event(name="unload",type="flash.events.Event")]
   [Event(name="progress",type="flash.events.ProgressEvent")]
   [Event(name="open",type="flash.events.Event")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="init",type="flash.events.Event")]
   [Event(name="complete",type="flash.events.Event")]
   public class LoaderInfo extends EventDispatcher
   {
       
      
      public function LoaderInfo()
      {
         super();
      }
      
      native public static function getLoaderInfoByDefinition(param1:Object) : LoaderInfo;
      
      native public function get loaderURL() : String;
      
      native public function get url() : String;
      
      native public function get isURLInaccessible() : Boolean;
      
      native public function get bytesLoaded() : uint;
      
      native public function get bytesTotal() : uint;
      
      native public function get applicationDomain() : ApplicationDomain;
      
      native public function get swfVersion() : uint;
      
      native public function get actionScriptVersion() : uint;
      
      native public function get frameRate() : Number;
      
      public function get parameters() : Object
      {
         var k:* = null;
         var args:Object = this._getArgs();
         var rtn:Object = {};
         for(k in args)
         {
            rtn[k] = args[k];
         }
         return rtn;
      }
      
      native public function get width() : int;
      
      native public function get height() : int;
      
      native public function get contentType() : String;
      
      native public function get sharedEvents() : EventDispatcher;
      
      native public function get parentSandboxBridge() : Object;
      
      native public function set parentSandboxBridge(param1:Object) : void;
      
      native public function get childSandboxBridge() : Object;
      
      native public function set childSandboxBridge(param1:Object) : void;
      
      [Inspectable(environment="none")]
      override public function dispatchEvent(event:Event) : Boolean
      {
         Error.throwError(IllegalOperationError,2118);
         return false;
      }
      
      native public function get sameDomain() : Boolean;
      
      native public function get childAllowsParent() : Boolean;
      
      native public function get parentAllowsChild() : Boolean;
      
      native public function get loader() : Loader;
      
      native public function get content() : DisplayObject;
      
      native public function get bytes() : ByteArray;
      
      native private function _getArgs() : Object;
      
      [Version("10.1")]
      public function get uncaughtErrorEvents() : UncaughtErrorEvents
      {
         var _uncaughtErrorEvents:UncaughtErrorEvents = this._getUncaughtErrorEvents();
         if(!_uncaughtErrorEvents)
         {
            _uncaughtErrorEvents = new UncaughtErrorEvents();
            this._setUncaughtErrorEvents(_uncaughtErrorEvents);
         }
         return _uncaughtErrorEvents;
      }
      
      native private function _getUncaughtErrorEvents() : UncaughtErrorEvents;
      
      native private function _setUncaughtErrorEvents(param1:UncaughtErrorEvents) : void;
   }
}
