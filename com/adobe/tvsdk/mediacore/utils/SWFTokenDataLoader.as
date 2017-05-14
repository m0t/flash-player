package com.adobe.tvsdk.mediacore.utils
{
   import flash.display.Loader;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   [API("712")]
   public class SWFTokenDataLoader extends TokenDataLoader
   {
       
      
      private var _loader:Loader;
      
      private var _movieUrl:String;
      
      public function SWFTokenDataLoader(movieUrl:String)
      {
         super();
         this._movieUrl = movieUrl;
      }
      
      override protected function prepareLoad() : void
      {
         this._loader = new Loader();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this._loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this._loader.contentLoaderInfo.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.onError);
      }
      
      override protected function beginLoad(request:URLRequest) : void
      {
         var loaderContext:LoaderContext = null;
         try
         {
            loaderContext = new LoaderContext(false,ApplicationDomain.currentDomain,null);
            this._loader.load(request,loaderContext);
         }
         catch(error:Error)
         {
            handleError(error);
         }
      }
      
      override protected function cancelLoad() : void
      {
         if(this._loader != null)
         {
            this._loader.unload();
         }
         this.endLoad();
      }
      
      private function endLoad() : void
      {
         if(this._loader != null)
         {
            this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this._loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this._loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.onError);
            this._loader.unload();
            this._loader = null;
         }
      }
      
      private function onComplete(event:Event) : void
      {
         var tokenLoader:Object = null;
         var url:String = null;
         var domain:String = null;
         var slugs:uint = 0;
         var delimiterPos:int = 0;
         var i:uint = 0;
         var error:Error = null;
         var byteArray:ByteArray = null;
         var loader:Loader = event.currentTarget.loader as Loader;
         var TokenLoaderClass:Class = loader.contentLoaderInfo.applicationDomain.getDefinition("AuthorizedTokensLoader") as Class;
         if(TokenLoaderClass == null)
         {
            error = new Error("AuthorizedTokensLoader class could not be found.");
         }
         else
         {
            tokenLoader = new TokenLoaderClass();
            byteArray = tokenLoader.FetchToken(SecurityDomain.currentDomain.domainID);
            if(byteArray == null || byteArray.length == 0)
            {
               url = this._movieUrl != null?this._movieUrl:Security.pageDomain;
               domain = this.cleanURL(url);
               slugs = domain.split(".").length;
               for(i = 1; i < slugs; )
               {
                  if(i > 1)
                  {
                     delimiterPos = domain.indexOf(".");
                     domain = domain.slice(delimiterPos + 1,domain.length);
                  }
                  if(tokenLoader.hasOwnProperty("FetchWildCardToken"))
                  {
                     byteArray = tokenLoader.FetchWildCardToken(domain);
                     if(byteArray != null)
                     {
                        break;
                     }
                     i++;
                     continue;
                  }
                  error = new Error("Wildcard domain authorization is not supported with this token.");
                  handleError(error);
                  return;
               }
            }
            if(byteArray == null || byteArray.length == 0)
            {
               error = new Error("The token data for the current security domain was not found.");
            }
         }
         this.endLoad();
         if(error != null)
         {
            handleError(error);
         }
         else
         {
            handleComplete(byteArray);
         }
      }
      
      private function cleanURL(param1:String) : String
      {
         if(param1.indexOf("file://") >= 0)
         {
            return "localhost";
         }
         var _loc2_:int = param1.indexOf("//") + 2;
         param1 = param1.substring(_loc2_);
         var _loc3_:int = param1.indexOf("/");
         if(_loc3_ > 0)
         {
            return param1.substring(0,_loc3_);
         }
         return param1;
      }
      
      private function onError(event:ErrorEvent) : void
      {
         this.endLoad();
         handleError(new Error(event.text,event.errorID));
      }
   }
}
