package
{
   use namespace AS3;
   
   [native(instance="String",classgc="exact",methods="auto",cls="StringClass",construct="override")]
   public final class String
   {
      
      public static const length:int = 1;
      
      {
         String.fromCharCode = function(... charcodes):*
         {
            var argc:uint = charcodes.length;
            if(argc == 1)
            {
               return fromCharCode(charcodes[0]);
            }
            var s:String = "";
            var i:uint = 0;
            while(i < argc)
            {
               s = s + fromCharCode(charcodes[i]);
               i++;
            }
            return s;
         };
         prototype.indexOf = function(s:String = "undefined", i:Number = 0):int
         {
            return String(this).indexOf(s,i);
         };
         prototype.lastIndexOf = function(s:String = "undefined", i:Number = 2147483647):int
         {
            return String(this).lastIndexOf(s,i);
         };
         prototype.charAt = function(i:Number = 0):String
         {
            return String(this).charAt(i);
         };
         prototype.charCodeAt = function(i:Number = 0):Number
         {
            return String(this).charCodeAt(i);
         };
         prototype.concat = function(... args):String
         {
            var s:String = String(this);
            for(var i:uint = 0,var n:uint = args.length; i < n; i++)
            {
               s = s + String(args[i]);
            }
            return s;
         };
         prototype.localeCompare = function(other:* = undefined):int
         {
            return String(this).localeCompare(other);
         };
         prototype.match = function(p:* = undefined):Array
         {
            return _match(String(this),p);
         };
         prototype.replace = function(p:* = undefined, repl:* = undefined):String
         {
            return _replace(String(this),p,repl);
         };
         prototype.search = function(p:* = undefined):int
         {
            return _search(String(this),p);
         };
         prototype.slice = function(start:Number = 0, end:Number = 2147483647):String
         {
            return String(this).slice(start,end);
         };
         prototype.split = function(delim:* = undefined, limit:* = 4.294967295E9):Array
         {
            if(limit == undefined)
            {
               limit = 4294967295;
            }
            return _split(String(this),delim,limit);
         };
         prototype.substring = function(start:Number = 0, end:Number = 2147483647):String
         {
            return String(this).substring(start,end);
         };
         prototype.substr = function(start:Number = 0, len:Number = 2147483647):String
         {
            return String(this).substr(start,len);
         };
         prototype.toLowerCase = prototype.toLocaleLowerCase = function():String
         {
            return String(this).toLowerCase();
         };
         prototype.toUpperCase = prototype.toLocaleUpperCase = function():String
         {
            return String(this).toUpperCase();
         };
         prototype.toString = function():String
         {
            if(this === prototype)
            {
               return "";
            }
            if(!(this is String))
            {
               Error.throwError(TypeError,1004,"String.prototype.toString");
            }
            return this;
         };
         prototype.valueOf = function():*
         {
            if(this === prototype)
            {
               return "";
            }
            if(!(this is String))
            {
               Error.throwError(TypeError,1004,"String.prototype.valueOf");
            }
            return this;
         };
         _dontEnumPrototype(prototype);
      }
      
      public function String(value:* = "")
      {
         super();
      }
      
      native AS3 static function fromCharCode(... rest) : String;
      
      native private static function _match(param1:String, param2:*) : Array;
      
      native private static function _replace(param1:String, param2:*, param3:*) : String;
      
      native private static function _search(param1:String, param2:*) : int;
      
      native private static function _split(param1:String, param2:*, param3:uint) : Array;
      
      native public function get length() : int;
      
      native private function _indexOf(param1:String, param2:int = 0) : int;
      
      native AS3 function indexOf(param1:String = "undefined", param2:Number = 0) : int;
      
      native private function _lastIndexOf(param1:String, param2:int = 2147483647) : int;
      
      native AS3 function lastIndexOf(param1:String = "undefined", param2:Number = 2147483647) : int;
      
      native AS3 function charAt(param1:Number = 0) : String;
      
      native AS3 function charCodeAt(param1:Number = 0) : Number;
      
      AS3 function concat(... args) : String
      {
         var s:String = this;
         for(var i:uint = 0,var n:uint = args.length; i < n; i++)
         {
            s = s + String(args[i]);
         }
         return s;
      }
      
      native AS3 function localeCompare(param1:* = undefined) : int;
      
      AS3 function match(p:* = undefined) : Array
      {
         return _match(this,p);
      }
      
      AS3 function replace(p:* = undefined, repl:* = undefined) : String
      {
         return _replace(this,p,repl);
      }
      
      AS3 function search(p:* = undefined) : int
      {
         return _search(this,p);
      }
      
      native private function _slice(param1:int = 0, param2:int = 2147483647) : String;
      
      native AS3 function slice(param1:Number = 0, param2:Number = 2147483647) : String;
      
      AS3 function split(delim:* = undefined, limit:* = 4.294967295E9) : Array
      {
         if(limit == undefined)
         {
            limit = 4294967295;
         }
         return _split(this,delim,limit);
      }
      
      native private function _substring(param1:int = 0, param2:int = 2147483647) : String;
      
      native AS3 function substring(param1:Number = 0, param2:Number = 2147483647) : String;
      
      native private function _substr(param1:int = 0, param2:int = 2147483647) : String;
      
      native AS3 function substr(param1:Number = 0, param2:Number = 2147483647) : String;
      
      native AS3 function toLowerCase() : String;
      
      AS3 function toLocaleLowerCase() : String
      {
         return this.toLowerCase();
      }
      
      native AS3 function toUpperCase() : String;
      
      AS3 function toLocaleUpperCase() : String
      {
         return this.toUpperCase();
      }
      
      AS3 function toString() : String
      {
         return this;
      }
      
      AS3 function valueOf() : String
      {
         return this;
      }
   }
}
