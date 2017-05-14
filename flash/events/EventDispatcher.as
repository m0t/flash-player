package flash.events
{
   [native(instance="EventDispatcherObject",methods="auto",cls="EventDispatcherClass",gc="exact")]
   [Event(name="deactivate",type="flash.events.Event")]
   [Event(name="activate",type="flash.events.Event")]
   public class EventDispatcher implements IEventDispatcher
   {
       
      
      public function EventDispatcher(target:IEventDispatcher = null)
      {
         super();
         this.ctor(target);
      }
      
      private static function trimHeaderValue(headerValue:String) : String
      {
         var currChar:String = null;
         var indexOfFirstValueChar:uint = 0;
         var headerValueLen:uint = headerValue.length;
         var done:Boolean = false;
         while(indexOfFirstValueChar < headerValueLen && !done)
         {
            currChar = headerValue.charAt(indexOfFirstValueChar);
            done = currChar != " " && currChar != "\t";
            if(!done)
            {
               indexOfFirstValueChar++;
            }
         }
         var indexOfLastValueChar:uint = headerValueLen;
         done = false;
         while(indexOfLastValueChar > indexOfFirstValueChar && !done)
         {
            currChar = headerValue.charAt(indexOfLastValueChar - 1);
            done = currChar != " " && currChar != "\t";
            if(!done)
            {
               indexOfLastValueChar--;
            }
         }
         return headerValue.substring(indexOfFirstValueChar,indexOfLastValueChar);
      }
      
      native private function ctor(param1:IEventDispatcher) : void;
      
      public function toString() : String
      {
         return Object.prototype.toString.call(this);
      }
      
      native public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void;
      
      native public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void;
      
      [cppcall]
      public function dispatchEvent(event:Event) : Boolean
      {
         if(event.target)
         {
            return this.dispatchEventFunction(event.clone());
         }
         return this.dispatchEventFunction(event);
      }
      
      native public function hasEventListener(param1:String) : Boolean;
      
      native public function willTrigger(param1:String) : Boolean;
      
      native private function dispatchEventFunction(param1:Event) : Boolean;
      
      [cppcall]
      private function dispatchHttpStatusEvent(status:uint, redirected:Boolean, responseLocation:String, headers:String) : void
      {
         var httpStatusEvent:HTTPStatusEvent = null;
         httpStatusEvent = new HTTPStatusEvent(HTTPStatusEvent.HTTP_RESPONSE_STATUS,false,false,status,redirected);
         httpStatusEvent.responseURL = responseLocation;
         var headerArray:Array = headers.split("\r\n");
         try
         {
            var parseResponseHeader:* = function(item:*, index:int, array:Array):void
            {
               var name:* = undefined;
               var value:* = undefined;
               var colonIdx:* = item.indexOf(":",0);
               if(colonIdx != -1)
               {
                  name = item.slice(0,colonIdx);
                  value = trimHeaderValue(item.slice(colonIdx + 1));
                  httpStatusEvent.responseHeaders.push(new URLRequestHeader(name,value));
               }
            };
            headerArray.forEach(parseResponseHeader);
            this.dispatchEvent(httpStatusEvent);
         }
         catch(error:*)
         {
         }
      }
   }
}
