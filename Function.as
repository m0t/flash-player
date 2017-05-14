package
{
   use namespace AS3;
   
   [native(instance="FunctionObject",methods="auto",cls="FunctionClass",construct="instance",gc="exact")]
   public dynamic class Function
   {
      
      public static const length:int = 1;
      
      {
         prototype.toLocaleString = prototype.toString = function():String
         {
            var f:* = this;
            return "function Function() {}";
         };
         prototype.call = function(thisArg:* = undefined, ... args):*
         {
            var f:Function = this;
            return f.apply(thisArg,args);
         };
         prototype.apply = function(thisArg:* = undefined, argArray:* = undefined):*
         {
            var f:Function = this;
            return f.apply(thisArg,argArray);
         };
         _dontEnumPrototype(prototype);
      }
      
      public function Function()
      {
         super();
      }
      
      [cppcall]
      [API("714")]
      public static function createEmptyFunction() : Function
      {
         return function():*
         {
         };
      }
      
      native public function get prototype() : *;
      
      native public function set prototype(param1:*) : *;
      
      native public function get length() : int;
      
      native AS3 function call(param1:* = undefined, ... rest) : *;
      
      native AS3 function apply(param1:* = undefined, param2:* = undefined) : *;
   }
}
