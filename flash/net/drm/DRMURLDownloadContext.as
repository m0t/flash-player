package flash.net.drm
{
   import flash.events.DRMLicenseRequestEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   [native(instance="DRMURLDownloadContextObject",methods="auto",cls="DRMURLDownloadContextClass",construct="native")]
   class DRMURLDownloadContext extends EventDispatcher
   {
       
      
      private var httpStatus:uint;
      
      private var urlLoader:URLLoader;
      
      private var networkTimeOutTimer:Timer;
      
      private var isDownloading:Boolean;
      
      function DRMURLDownloadContext()
      {
         super();
         this.httpStatus = 0;
         this.isDownloading = false;
      }
      
      [cppcall]
      [API("714")]
      public function httpPostAndReceiveASync(url:String, headerName:String, headerValue:String, data:ByteArray, serverType:uint) : void
      {
         var event:DRMLicenseRequestEvent = null;
         var rhArray:Array = null;
         if(serverType == 0)
         {
            event = new DRMLicenseRequestEvent(DRMLicenseRequestEvent.LICENSE_REQUEST);
            event.serverURL = url;
            DRMManager.getDRMManager().dispatchEvent(event);
            url = event.serverURL;
         }
         var urlRequest:URLRequest = new URLRequest(url);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.data = data;
         if(headerName != null && headerValue != null)
         {
            rhArray = new Array(new URLRequestHeader(headerName,headerValue));
            urlRequest.requestHeaders = rhArray;
         }
         this.doURLDownload(urlRequest);
      }
      
      [cppcall]
      [API("714")]
      public function httpGetASync(url:String) : void
      {
         var urlRequest:URLRequest = new URLRequest(url);
         this.doURLDownload(urlRequest);
      }
      
      private function doURLDownload(urlRequest:URLRequest) : void
      {
         this.urlLoader = new URLLoader();
         this.urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
         this.urlLoader.addEventListener(Event.COMPLETE,this.onAsyncDownloadComplete);
         this.urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onAsyncIOError);
         this.urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onAsyncSecurityError);
         this.urlLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHTTPStatus);
         this.urlLoader.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
         this.urlLoader.load(urlRequest);
         this.networkTimeOutTimer = new Timer(DRMManager.networkIdleTimeout);
         this.networkTimeOutTimer.addEventListener(TimerEvent.TIMER,this.onTimer);
         this.networkTimeOutTimer.start();
         this.isDownloading = true;
      }
      
      private function onTimer(ev:TimerEvent) : *
      {
         if(this.isDownloading)
         {
            this.iOnTimeoutError(0);
         }
         this.cleanUp();
      }
      
      private function onProgress(event:ProgressEvent) : void
      {
         this.networkTimeOutTimer.reset();
         this.networkTimeOutTimer.start();
      }
      
      private function onAsyncDownloadComplete(event:Event) : void
      {
         var results:ByteArray = this.urlLoader.data as ByteArray;
         this.iOnDownloadComplete(results);
         this.cleanUp();
      }
      
      private function onAsyncIOError(event:Event) : void
      {
         var ioErrorEvent:IOErrorEvent = event as IOErrorEvent;
         this.iOnIOError(this.httpStatus,ioErrorEvent.text);
         this.cleanUp();
      }
      
      private function onAsyncSecurityError(event:Event) : void
      {
         var secErrorEvent:SecurityErrorEvent = event as SecurityErrorEvent;
         this.iOnSecurityError(secErrorEvent.text);
         this.cleanUp();
      }
      
      private function onHTTPStatus(event:Event) : void
      {
         var httpStatusEvent:HTTPStatusEvent = event as HTTPStatusEvent;
         this.httpStatus = httpStatusEvent.status;
      }
      
      private function cleanUp() : void
      {
         if(this.urlLoader)
         {
            this.urlLoader.removeEventListener(Event.COMPLETE,this.onAsyncDownloadComplete);
            this.urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onAsyncIOError);
            this.urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onAsyncSecurityError);
            this.urlLoader.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHTTPStatus);
         }
         if(this.networkTimeOutTimer)
         {
            this.networkTimeOutTimer.stop();
         }
         this.isDownloading = false;
      }
      
      native private function iOnDownloadComplete(param1:ByteArray) : void;
      
      native private function iOnTimeoutError(param1:uint) : void;
      
      native private function iOnIOError(param1:uint, param2:String) : void;
      
      native private function iOnSecurityError(param1:String) : void;
   }
}
