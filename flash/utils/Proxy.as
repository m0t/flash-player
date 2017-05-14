package flash.utils
{
   [native(instance="ProxyObject",methods="auto",cls="ProxyClass",gc="exact")]
   public class Proxy
   {
       
      
      public function Proxy()
      {
         super();
      }
      
      flash_proxy function getProperty(name:*) : *
      {
         Error.throwError(IllegalOperationError,2088);
         return null;
      }
      
      flash_proxy function setProperty(name:*, value:*) : void
      {
         Error.throwError(IllegalOperationError,2089);
      }
      
      flash_proxy function callProperty(name:*, ... rest) : *
      {
         Error.throwError(IllegalOperationError,2090);
         return null;
      }
      
      flash_proxy function hasProperty(name:*) : Boolean
      {
         Error.throwError(IllegalOperationError,2091);
         return null;
      }
      
      flash_proxy function deleteProperty(name:*) : Boolean
      {
         Error.throwError(IllegalOperationError,2092);
         return null;
      }
      
      flash_proxy function getDescendants(name:*) : *
      {
         Error.throwError(IllegalOperationError,2093);
         return null;
      }
      
      flash_proxy function nextNameIndex(index:int) : int
      {
         Error.throwError(IllegalOperationError,2105);
         return null;
      }
      
      flash_proxy function nextName(index:int) : String
      {
         Error.throwError(IllegalOperationError,2106);
         return null;
      }
      
      flash_proxy function nextValue(index:int) : *
      {
         Error.throwError(IllegalOperationError,2107);
         return null;
      }
      
      native flash_proxy function isAttribute(param1:*) : Boolean;
   }
}
