package
{
   use namespace AS3;
   
   [native(instance="QNameObject",methods="auto",cls="QNameClass",construct="override",gc="exact")]
   public final class QName
   {
      
      public static const length = 2;
      
      {
         prototype.toString = function():String
         {
            if(this === prototype)
            {
               return "";
            }
            if(!(this is QName))
            {
               Error.throwError(TypeError,1004,"QName.prototype.toString");
            }
            var q:QName = this;
            return q.toString();
         };
         _dontEnumPrototype(prototype);
      }
      
      public function QName(namespace:* = undefined, name:* = undefined)
      {
         super();
      }
      
      native public function get localName() : String;
      
      native public function get uri() : *;
      
      AS3 function valueOf() : QName
      {
         return this;
      }
      
      AS3 function toString() : String
      {
         if(this.uri === "")
         {
            return this.localName;
         }
         if(this.uri === null)
         {
            return "*::" + this.localName;
         }
         var cc:uint = this.uri.charCodeAt(this.uri.length - 1);
         var base_uri:String = this.uri;
         if(cc >= 57344 && cc <= 63743)
         {
            base_uri = this.uri.substr(0,this.uri.length - 1);
         }
         if(base_uri === "")
         {
            return this.localName;
         }
         return base_uri + "::" + this.localName;
      }
   }
}
