package flash.display
{
   import flash.media.SoundTransform;
   
   [native(instance="SimpleButtonObject",methods="auto",cls="SimpleButtonClass",gc="exact")]
   public class SimpleButton extends InteractiveObject
   {
       
      
      public function SimpleButton(upState:DisplayObject = null, overState:DisplayObject = null, downState:DisplayObject = null, hitTestState:DisplayObject = null)
      {
         super();
         if(upState)
         {
            this.upState = upState;
         }
         if(overState)
         {
            this.overState = overState;
         }
         if(downState)
         {
            this.downState = downState;
         }
         if(hitTestState)
         {
            this.hitTestState = hitTestState;
         }
         this._updateButton();
      }
      
      native private function _updateButton() : void;
      
      native public function get useHandCursor() : Boolean;
      
      native public function set useHandCursor(param1:Boolean) : void;
      
      native public function get enabled() : Boolean;
      
      native public function set enabled(param1:Boolean) : void;
      
      native public function get trackAsMenu() : Boolean;
      
      native public function set trackAsMenu(param1:Boolean) : void;
      
      native public function get upState() : DisplayObject;
      
      native public function set upState(param1:DisplayObject) : void;
      
      native public function get overState() : DisplayObject;
      
      native public function set overState(param1:DisplayObject) : void;
      
      native public function get downState() : DisplayObject;
      
      native public function set downState(param1:DisplayObject) : void;
      
      native public function get hitTestState() : DisplayObject;
      
      native public function set hitTestState(param1:DisplayObject) : void;
      
      native public function get soundTransform() : SoundTransform;
      
      native public function set soundTransform(param1:SoundTransform) : void;
   }
}
