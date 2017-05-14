package flash.display
{
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   
   [native(instance="LoaderObject",methods="auto",cls="LoaderClass",gc="exact")]
   public class Loader extends DisplayObjectContainer
   {
       
      
      public function Loader()
      {
         super();
      }
      
      private static function cloneParams(lc:LoaderContext) : void
      {
         var k:* = null;
         var args:Object = lc.parameters;
         var rtn:Object = {};
         for(k in args)
         {
            rtn[k] = args[k];
         }
         lc.parameters = rtn;
      }
      
      public function load(request:URLRequest, context:LoaderContext = null) : void
      {
         var _context:LoaderContext = this._buildLoaderContext(context);
         var deblockingFilter:Number = 0;
         if(_context.imageDecodingPolicy == null)
         {
            throw new ArgumentError();
         }
         deblockingFilter = this._getJPEGLoaderContextdeblockingfilter(_context);
         if(_context.parameters != null)
         {
            cloneParams(_context);
         }
         this._load(request,_context.checkPolicyFile,_context.applicationDomain,_context.securityDomain,_context.requestedContentParent,_context.parameters,deblockingFilter,_context.allowCodeImport,_context.imageDecodingPolicy);
      }
      
      native private function _getJPEGLoaderContextdeblockingfilter(param1:Object) : Number;
      
      private function _buildLoaderContext(context:LoaderContext) : LoaderContext
      {
         if(context == null)
         {
            context = new LoaderContext();
         }
         if(context.applicationDomain == null)
         {
            context.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
         }
         return context;
      }
      
      public function loadBytes(bytes:ByteArray, context:LoaderContext = null) : void
      {
         var _context:LoaderContext = this._buildLoaderContext(context);
         var deblockingFilter:Number = 0;
         deblockingFilter = this._getJPEGLoaderContextdeblockingfilter(_context);
         if(_context.parameters != null)
         {
            cloneParams(_context);
         }
         this._loadBytes(bytes,_context.checkPolicyFile,_context.applicationDomain,_context.securityDomain,_context.requestedContentParent,_context.parameters,deblockingFilter,_context.allowCodeImport,_context.imageDecodingPolicy);
      }
      
      native private function _loadBytes(param1:ByteArray, param2:Boolean, param3:ApplicationDomain, param4:SecurityDomain, param5:DisplayObjectContainer, param6:Object, param7:Number, param8:Boolean, param9:String) : void;
      
      public function close() : void
      {
         this._close();
      }
      
      public function unload() : void
      {
         this._unload(false,false);
      }
      
      [Version("10")]
      public function unloadAndStop(gc:Boolean = true) : void
      {
         this._unload(true,gc);
      }
      
      native private function _unload(param1:Boolean, param2:Boolean) : void;
      
      native private function _close() : void;
      
      native public function get content() : DisplayObject;
      
      native public function get contentLoaderInfo() : LoaderInfo;
      
      [Inspectable(environment="none")]
      override public function addChild(child:DisplayObject) : DisplayObject
      {
         Error.throwError(IllegalOperationError,2069);
         return null;
      }
      
      [Inspectable(environment="none")]
      override public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         Error.throwError(IllegalOperationError,2069);
         return null;
      }
      
      [Inspectable(environment="none")]
      override public function removeChild(child:DisplayObject) : DisplayObject
      {
         Error.throwError(IllegalOperationError,2069);
         return null;
      }
      
      [Inspectable(environment="none")]
      override public function removeChildAt(index:int) : DisplayObject
      {
         Error.throwError(IllegalOperationError,2069);
         return null;
      }
      
      [Inspectable(environment="none")]
      override public function setChildIndex(child:DisplayObject, index:int) : void
      {
         Error.throwError(IllegalOperationError,2069);
      }
      
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
      
      native private function _load(param1:URLRequest, param2:Boolean, param3:ApplicationDomain, param4:SecurityDomain, param5:DisplayObjectContainer, param6:Object, param7:Number, param8:Boolean, param9:String) : void;
   }
}
