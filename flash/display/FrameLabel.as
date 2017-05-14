package flash.display
{
   import flash.events.EventDispatcher;
   
   [native(instance="FrameLabelObject",methods="auto",cls="FrameLabelClass",gc="exact")]
   [Event(name="frameLabel",type="flash.events.Event")]
   public final class FrameLabel extends EventDispatcher
   {
       
      
      public function FrameLabel(name:String, frame:int)
      {
         super();
         this.ctor(name,frame);
      }
      
      native private function ctor(param1:String, param2:int) : void;
      
      native public function get name() : String;
      
      native public function get frame() : int;
   }
}
