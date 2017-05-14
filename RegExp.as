package
{
   use namespace AS3;
   
   [native(instance="RegExpObject",methods="auto",cls="RegExpClass",construct="override",gc="exact")]
   public dynamic class RegExp
   {
      
      public static const length:int = 1;
      
      {
         prototype.toString = function():String
         {
            var r:RegExp = this;
            var out:String = "/" + r.source + "/";
            if(r.global)
            {
               out = out + "g";
            }
            if(r.ignoreCase)
            {
               out = out + "i";
            }
            if(r.multiline)
            {
               out = out + "m";
            }
            if(r.dotall)
            {
               out = out + "s";
            }
            if(r.extended)
            {
               out = out + "x";
            }
            return out;
         };
         prototype.exec = function(s:* = ""):*
         {
            var r:RegExp = this;
            return r.exec(String(s));
         };
         prototype.test = function(s:* = ""):Boolean
         {
            var r:RegExp = this;
            return r.test(String(s));
         };
         _dontEnumPrototype(prototype);
      }
      
      public function RegExp(pattern:* = undefined, options:* = undefined)
      {
         super();
      }
      
      native public function get source() : String;
      
      native public function get global() : Boolean;
      
      native public function get ignoreCase() : Boolean;
      
      native public function get multiline() : Boolean;
      
      native public function get lastIndex() : int;
      
      native public function set lastIndex(param1:int) : *;
      
      native public function get dotall() : Boolean;
      
      native public function get extended() : Boolean;
      
      native AS3 function exec(param1:String = "") : *;
      
      AS3 function test(s:String = "") : Boolean
      {
         return this.exec(s) != null;
      }
   }
}
