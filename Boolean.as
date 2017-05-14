package
{
   [native(instance="bool",classgc="exact",methods="auto",cls="BooleanClass",construct="override")]
   public final class Boolean
   {
      
      public static const length:int = 1;
      
      {
         prototype.toString = function():String
         {
            if(this === prototype)
            {
               return "false";
            }
            if(!(this is Boolean))
            {
               Error.throwError(TypeError,1004,"Boolean.prototype.toString");
            }
            return Boolean(this)?"true":"false";
         };
         prototype.valueOf = function():*
         {
            if(this === prototype)
            {
               return false;
            }
            if(!(this is Boolean))
            {
               Error.throwError(TypeError,1004,"Boolean.prototype.valueOf");
            }
            return this;
         };
         _dontEnumPrototype(prototype);
      }
      
      public function Boolean(value:* = undefined)
      {
         super();
      }
      
      AS3 function toString() : String
      {
         return !!this?"true":"false";
      }
      
      AS3 function valueOf() : Boolean
      {
         return this;
      }
   }
}
