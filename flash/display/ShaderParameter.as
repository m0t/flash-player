package flash.display
{
   [native(instance="ShaderParameterObject",methods="auto",cls="ShaderParameterClass")]
   [Version("10")]
   public final dynamic class ShaderParameter
   {
       
      
      public function ShaderParameter()
      {
         super();
      }
      
      native public function get value() : Array;
      
      native public function set value(param1:Array) : void;
      
      native public function get type() : String;
      
      native public function get index() : int;
   }
}
