package flash.display
{
   [native(instance="ShaderInputObject",methods="auto",cls="ShaderInputClass")]
   [Version("10")]
   public final dynamic class ShaderInput
   {
       
      
      public function ShaderInput()
      {
         super();
      }
      
      native public function get input() : Object;
      
      native public function set input(param1:Object) : void;
      
      native public function get width() : int;
      
      native public function set width(param1:int) : void;
      
      native public function get height() : int;
      
      native public function set height(param1:int) : void;
      
      native public function get channels() : int;
      
      native public function get index() : int;
   }
}
