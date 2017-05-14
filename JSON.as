package
{
   use namespace AS3;
   
   [native(classgc="exact",methods="auto",cls="JSONClass",construct="none")]
   [API("674")]
   public final class JSON
   {
      
      private namespace as3ns:Namespace = AS3;
       
      
      public function JSON()
      {
         super();
      }
      
      native private static function parseCore(param1:String) : Object;
      
      native private static function stringifySpecializedToString(param1:Object, param2:Array, param3:Function, param4:String) : String;
      
      public static function parse(text:String, reviver:Function = null) : Object
      {
         if(text === null || text === undefined)
         {
            Error.throwError(SyntaxError,1132);
         }
         var unfiltered:Object = parseCore(text);
         if(reviver === null)
         {
            return unfiltered;
         }
         return new Walker(reviver).walk({"":unfiltered},"");
      }
      
      public static function stringify(value:Object, replacer:* = null, space:* = null) : String
      {
         if(!(replacer === null || replacer is Function || replacer is Array))
         {
            Error.throwError(TypeError,1131);
         }
         var isfloat:Boolean = false;
         if(!(space === null || space is String || space is Number || isfloat))
         {
            space = null;
         }
         var gap:* = "";
         if(space is String)
         {
            gap = space.length > 10?space.substring(0,10):space;
         }
         else if(space is Number || isfloat)
         {
            gap = "          ".substring(0,Math.min(10,Math.floor(space)));
         }
         if(replacer === null)
         {
            return stringifySpecializedToString(value,null,null,gap);
         }
         if(replacer is Array)
         {
            return stringifySpecializedToString(value,computePropertyList(replacer),null,gap);
         }
         return stringifySpecializedToString(value,null,replacer,gap);
      }
      
      private static function computePropertyList(r:Array) : Array
      {
         var v:* = undefined;
         var item:String = null;
         var isfloat:Boolean = false;
         var propertyList:* = [];
         var alreadyAdded:* = {};
         for(var i:uint = 0,var ilim:uint = r.length; i < ilim; i++)
         {
            if(r.hasOwnProperty(i))
            {
               v = r[i];
               item = null;
               isfloat = false;
               if(v is String)
               {
                  item = v;
               }
               else if(v is Number || isfloat)
               {
                  item = String(v);
               }
               if(item !== null && !alreadyAdded[item])
               {
                  alreadyAdded[item] = true;
                  propertyList[propertyList.length] = item;
               }
            }
         }
         return propertyList;
      }
   }
}
