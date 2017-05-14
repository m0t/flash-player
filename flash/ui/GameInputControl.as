package flash.ui
{
   import flash.events.EventDispatcher;
   
   [native(instance="GameInputControlObject",methods="auto",cls="GameInputControlClass",construct="native")]
   [API("688")]
   [Event(name="change",type="flash.events.Event")]
   public dynamic class GameInputControl extends EventDispatcher
   {
       
      
      public function GameInputControl()
      {
         super();
      }
      
      native public function get value() : Number;
      
      native public function get minValue() : Number;
      
      native public function get maxValue() : Number;
      
      native public function get device() : GameInputDevice;
      
      native public function get id() : String;
   }
}
