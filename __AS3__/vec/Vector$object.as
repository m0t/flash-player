package __AS3__.vec
{
   use namespace AS3;
   
   [native(instance="ObjectVectorObject",methods="auto",cls="ObjectVectorClass",construct="override",gc="exact")]
   final dynamic class Vector$object
   {
      
      {
         prototype.push = function(... args):*
         {
            castToThisType(this);
            var v:Vector$object = this;
            if(v.fixed)
            {
               Error.throwError(RangeError,1126);
            }
            var n:uint = v.length;
            var i:uint = 0;
            var argc:uint = args.length;
            while(i < argc)
            {
               v[n] = args[i];
               i++;
               n++;
            }
            v.length = n;
            return n;
         };
         prototype.toString = function():*
         {
            return castToThisType(this).toString();
         };
         prototype.toLocaleString = function():*
         {
            return castToThisType(this).toLocaleString();
         };
         prototype.join = function(separator:* = undefined):*
         {
            return castToThisType(this).join(separator == undefined?",":String(separator));
         };
         prototype.concat = function(... items):*
         {
            return castToThisType(this)._concat(items);
         };
         prototype.every = function(checker:*, thisObj:* = undefined):Boolean
         {
            return _every(castToThisType(this),checker,thisObj is Object?thisObj:null);
         };
         prototype.filter = function(checker:*, thisObj:* = undefined):*
         {
            return castToThisType(this)._filter(checker,thisObj is Object?thisObj:null);
         };
         prototype.forEach = function(eacher:*, thisObj:* = undefined):*
         {
            _forEach(castToThisType(this),eacher,thisObj is Object?thisObj:null);
         };
         prototype.indexOf = function(value:*, from:* = undefined):*
         {
            return castToThisType(this).indexOf(value,Number(from));
         };
         prototype.lastIndexOf = function(value:*, from:* = undefined):*
         {
            return castToThisType(this).lastIndexOf(value,from == undefined?Number(Infinity):Number(Number(from)));
         };
         prototype.map = function(mapper:*, thisObj:* = undefined):*
         {
            return castToThisType(this)._map(mapper,thisObj is Object?thisObj:null);
         };
         prototype.pop = function():*
         {
            return castToThisType(this).pop();
         };
         prototype.reverse = function():*
         {
            return castToThisType(this).reverse();
         };
         prototype.shift = function():*
         {
            return castToThisType(this).shift();
         };
         prototype.slice = function(start:* = undefined, end:* = undefined):*
         {
            return castToThisType(this)._slice(start == undefined?Number(0):Number(Number(start)),end == undefined?Number(2147483647):Number(Number(end)));
         };
         prototype.some = function(checker:*, thisObj:* = undefined):Boolean
         {
            return _some(castToThisType(this),checker,thisObj is Object?thisObj:null);
         };
         prototype.sort = function(comparefn:*):*
         {
            var a:Array = [comparefn];
            return _sort(castToThisType(this),a);
         };
         prototype.splice = function(start:*, deleteCount:*, ... items):*
         {
            return castToThisType(this)._splice(Number(start),Number(deleteCount),items);
         };
         prototype.unshift = function(... items):*
         {
            return castToThisType(this).unshift.apply(this,items);
         };
         _dontEnumPrototype(prototype);
      }
      
      function Vector$object(length:uint = 0, fixed:Boolean = false)
      {
         super();
      }
      
      private static function castToThisType(item:*) : Vector$object
      {
         return item;
      }
      
      native private static function _every(param1:*, param2:Function, param3:*) : Boolean;
      
      native private static function _forEach(param1:*, param2:Function, param3:*) : void;
      
      native private static function _some(param1:*, param2:Function, param3:*) : Boolean;
      
      native private static function _sort(param1:*, param2:Array) : *;
      
      native private function newThisType() : Vector$object;
      
      native public function get length() : uint;
      
      native public function set length(param1:uint) : *;
      
      native public function set fixed(param1:Boolean) : *;
      
      native public function get fixed() : Boolean;
      
      AS3 function toString() : String
      {
         return this.join();
      }
      
      AS3 function toLocaleString() : String
      {
         var x:* = undefined;
         var limit:uint = this.length;
         var separator:String = ",";
         var s:String = "";
         var i:uint = 0;
         if(limit > 0)
         {
            while(true)
            {
               x = this[i];
               if(x !== undefined && x !== null)
               {
                  s = s + x.toLocaleString();
               }
               if(++i == limit)
               {
                  break;
               }
               s = s + separator;
            }
         }
         return s;
      }
      
      AS3 function join(separator:String = ",") : String
      {
         var y:uint = 0;
         var limit:uint = this.length;
         var s:String = "";
         var i:int = 0;
         if(limit > 0)
         {
            while(true)
            {
               y = i;
               s = s + this[y];
               y = ++i;
               if(y == limit)
               {
                  break;
               }
               s = s + separator;
            }
         }
         return s;
      }
      
      private function _concat(items:Array) : *
      {
         var item:* = undefined;
         var insertPoint:uint = 0;
         var v:* = this.newThisType();
         v._spliceHelper(0,this.length,0,this,0);
         var bug504525:Boolean = bugzilla(504525);
         for(var j:uint = 0,var limit:* = items.length; j < limit; j++)
         {
            item = castToThisType(items[j]);
            insertPoint = !!bug504525?uint(v.length):uint(this.length);
            v._spliceHelper(insertPoint,item.length,0,item,0);
         }
         return v;
      }
      
      AS3 function every(checker:Function, thisObj:Object = null) : Boolean
      {
         return _every(this,checker,thisObj is Object?thisObj:null);
      }
      
      AS3 function forEach(eacher:Function, thisObj:Object = null) : void
      {
         _forEach(this,eacher,thisObj is Object?thisObj:null);
      }
      
      AS3 function map(mapper:Function, thisObj:Object = null) : *
      {
         var result:* = this._map(mapper,thisObj is Object?thisObj:null);
         return !!bugzilla(574600)?result:undefined;
      }
      
      native AS3 function push(... rest) : uint;
      
      native private function _reverse() : void;
      
      AS3 function some(checker:*, thisObj:Object = null) : Boolean
      {
         return _some(this,checker,thisObj is Object?thisObj:null);
      }
      
      private function _slice(start:Number = 0, end:Number = 2147483647) : *
      {
         var first:uint = this.clamp(start,this.length);
         var limit:uint = this.clamp(end,this.length);
         if(limit < first)
         {
            limit = first;
         }
         var result:* = this.newThisType();
         result._spliceHelper(0,limit - first,0,this,first);
         return result;
      }
      
      private function _splice(start:*, deleteCount:*, items:Array) : *
      {
         var first:uint = this.clamp(start,this.length);
         var delcnt:uint = this.clamp(deleteCount,this.length - first);
         var result:* = this.newThisType();
         result._spliceHelper(0,delcnt,0,this,first);
         this._spliceHelper(first,items.length,delcnt,items,0);
         return result;
      }
      
      native private function _spliceHelper(param1:uint, param2:uint, param3:uint, param4:Object, param5:uint) : void;
      
      native AS3 function unshift(... rest) : uint;
      
      native private function _filter(param1:Function, param2:*) : *;
      
      native private function _map(param1:Function, param2:*) : *;
      
      private function clamp(val:Number, len:uint) : uint
      {
         var result:uint = 0;
         if(val < 0)
         {
            if(val + len < 0)
            {
               result = 0;
            }
            else
            {
               result = uint(val + len);
            }
         }
         else if(val > len)
         {
            result = len;
         }
         else if(val != val)
         {
            result = 0;
         }
         else
         {
            result = uint(val);
         }
         return result;
      }
      
      AS3 function concat(... items) : Vector$object
      {
         return this._concat(items);
      }
      
      AS3 function filter(checker:Function, thisObj:Object = null) : Vector$object
      {
         return this._filter(checker,thisObj);
      }
      
      native AS3 function pop() : *;
      
      AS3 function reverse() : Vector$object
      {
         this._reverse();
         return this;
      }
      
      native AS3 function shift() : *;
      
      AS3 function slice(start:Number = 0, end:Number = 2147483647) : Vector$object
      {
         return this._slice(start,end);
      }
      
      AS3 function sort(comparefn:*) : Vector$object
      {
         var a:Array = [comparefn];
         _sort(this,a);
         return this;
      }
      
      AS3 function splice(start:Number, deleteCount:Number, ... items) : Vector$object
      {
         return this._splice(start,deleteCount,items);
      }
      
      [API("708")]
      native AS3 function insertAt(param1:int, param2:Object) : void;
      
      [API("708")]
      native AS3 function removeAt(param1:int) : Object;
      
      AS3 function indexOf(value:Object, from:Number = 0) : Number
      {
         var start:uint = this.clamp(from,this.length);
         for(var i:uint = start,var limit:uint = this.length; i < limit; i++)
         {
            if(this[i] === value)
            {
               return i;
            }
         }
         return -1;
      }
      
      AS3 function lastIndexOf(value:Object, from:Number = 2147483647) : Number
      {
         var start:uint = this.clamp(from,this.length);
         if(start == this.length)
         {
            start--;
         }
         for(var i:int = start; i >= 0; i--)
         {
            if(this[i] === value)
            {
               return i;
            }
         }
         return -1;
      }
   }
}
