package flash.display
{
   import flash.utils.ByteArray;
   
   [native(instance="AVM1MovieObject",methods="auto",cls="AVM1MovieClass",construct="native")]
   public class AVM1Movie extends DisplayObject
   {
       
      
      private var callbackTable:Object;
      
      public function AVM1Movie()
      {
         this.callbackTable = {};
         super();
         this._setCallAS3(this._callAS3);
      }
      
      [Inspectable(environment="none")]
      public function call(functionName:String, ... arguments) : *
      {
         if(!this._interopAvailable)
         {
            Error.throwError(IllegalOperationError,2014);
         }
         var b:ByteArray = new ByteArray();
         b.objectEncoding = ObjectEncoding.AMF0;
         b.writeObject(arguments);
         this._callAS2(functionName,b);
         return Boolean(b.length)?b.readObject():null;
      }
      
      native private function get _interopAvailable() : Boolean;
      
      native private function _callAS2(param1:String, param2:ByteArray) : void;
      
      native private function _setCallAS3(param1:Function) : void;
      
      private function _callAS3(functionName:String, data:ByteArray) : void
      {
         var handler:Function = this.callbackTable[functionName];
         if(handler == null)
         {
            Error.throwError(Error,2133,functionName);
         }
         var decodedArguments:Array = data.readObject();
         var result:* = handler.apply(null,decodedArguments);
         data.position = 0;
         data.length = 0;
         data.writeObject(result);
      }
      
      [Inspectable(environment="none")]
      public function addCallback(functionName:String, closure:Function) : void
      {
         if(!this._interopAvailable)
         {
            Error.throwError(IllegalOperationError,2014);
         }
         this.callbackTable[functionName] = closure;
      }
   }
}
