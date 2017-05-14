package
{
   use namespace AS3;
   
   [native(instance="Namespace",classgc="exact",methods="auto",cls="NamespaceClass",construct="override")]
   public final class Namespace
   {
      
      public static const length = 2;
      
      {
         prototype.valueOf = function():String
         {
            if(this === prototype)
            {
               return "";
            }
            var n:Namespace = this;
            return n.uri;
         };
         prototype.toString = function():String
         {
            if(this === prototype)
            {
               return "";
            }
            var n:Namespace = this;
            return n.toString();
         };
         _dontEnumPrototype(prototype);
      }
      
      public function Namespace(prefix:* = undefined, uri:* = undefined)
      {
         super();
      }
      
      native public function get prefix() : *;
      
      native public function get uri() : String;
      
      AS3 function valueOf() : String
      {
         return this.uri;
      }
      
      AS3 function toString() : String
      {
         return this.uri;
      }
   }
}
