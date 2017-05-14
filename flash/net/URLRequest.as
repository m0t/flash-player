package flash.net
{
   [native(instance="URLRequestObject",methods="auto",cls="URLRequestClass",gc="exact")]
   public final class URLRequest
   {
      
      private static const kInvalidParamError:uint = 2004;
       
      
      public function URLRequest(url:String = null)
      {
         super();
         if(url != null)
         {
            this.url = url;
         }
         this.requestHeaders = [];
      }
      
      native public function get url() : String;
      
      native public function set url(param1:String) : void;
      
      native public function get data() : Object;
      
      native public function set data(param1:Object) : void;
      
      native public function get method() : String;
      
      public function set method(value:String) : void
      {
         var re:RegExp = /^(\x21|[\x23-\x26]|\x2A|\x2B|\x2D|\x2E|[\x30-\x39]|[\x41-\x5A]|[\x5E-\x7A])+$/;
         if(!re.test(value))
         {
            Error.throwError(ArgumentError,kInvalidParamError);
         }
         this.setMethod(value);
      }
      
      native private function setMethod(param1:String) : void;
      
      native public function get contentType() : String;
      
      native public function set contentType(param1:String) : void;
      
      native public function get requestHeaders() : Array;
      
      public function set requestHeaders(value:Array) : void
      {
         if(value != null)
         {
            this.setRequestHeaders(value.filter(this.filterRequestHeaders));
         }
         else
         {
            this.setRequestHeaders(value);
         }
      }
      
      native private function setRequestHeaders(param1:Array) : void;
      
      private function filterRequestHeaders(item:*, index:int, array:Array) : Boolean
      {
         return true;
      }
      
      native public function get digest() : String;
      
      native public function set digest(param1:String) : void;
      
      [API("690")]
      native public function useRedirectedURL(param1:URLRequest, param2:Boolean = false, param3:* = null, param4:String = null) : void;
      
      [cppcall]
      private function shouldFilterHTTPHeader(header:String) : Boolean
      {
         return false;
      }
   }
}
