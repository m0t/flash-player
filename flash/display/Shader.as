package flash.display
{
   import flash.utils.ByteArray;
   
   [native(instance="ShaderObject",methods="auto",cls="ShaderClass")]
   [Version("10")]
   public class Shader
   {
       
      
      public function Shader(code:ByteArray = null)
      {
         super();
         if(code)
         {
            this.byteCode = code;
         }
      }
      
      public function set byteCode(code:ByteArray) : void
      {
         this.data = new ShaderData(code);
      }
      
      native public function get data() : ShaderData;
      
      native public function set data(param1:ShaderData) : void;
      
      native public function get precisionHint() : String;
      
      native public function set precisionHint(param1:String) : void;
   }
}
