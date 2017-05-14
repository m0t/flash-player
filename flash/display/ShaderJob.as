package flash.display
{
   import flash.events.EventDispatcher;
   
   [native(instance="ShaderJobObject",methods="auto",cls="ShaderJobClass")]
   [Version("10")]
   [Event(name="complete",type="flash.events.ShaderEvent")]
   public class ShaderJob extends EventDispatcher
   {
       
      
      public function ShaderJob(shader:Shader = null, target:Object = null, width:int = 0, height:int = 0)
      {
         super();
         if(shader)
         {
            this.shader = shader;
         }
         if(target)
         {
            this.target = target;
         }
         this.width = width;
         this.height = height;
      }
      
      native public function start(param1:Boolean = false) : void;
      
      native public function cancel() : void;
      
      native public function get shader() : Shader;
      
      native public function set shader(param1:Shader) : void;
      
      native public function get target() : Object;
      
      native public function set target(param1:Object) : void;
      
      native public function get width() : int;
      
      native public function set width(param1:int) : void;
      
      native public function get height() : int;
      
      native public function set height(param1:int) : void;
      
      native public function get progress() : Number;
   }
}
