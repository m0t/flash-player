package flash.events
{
   [native(instance="PressAndTapGestureEventObject",methods="auto",cls="PressAndTapGestureEventClass")]
   [API("667")]
   public class PressAndTapGestureEvent extends GestureEvent
   {
      
      public static const GESTURE_PRESS_AND_TAP:String = "gesturePressAndTap";
       
      
      public function PressAndTapGestureEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, phase:String = null, localX:Number = 0, localY:Number = 0, tapLocalX:Number = 0, tapLocalY:Number = 0, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false)
      {
         super(type,bubbles,cancelable,phase,localX,localY,ctrlKey,altKey,shiftKey);
         this.tapLocalX = tapLocalX;
         this.tapLocalY = tapLocalY;
      }
      
      override public function clone() : Event
      {
         return new PressAndTapGestureEvent(type,bubbles,cancelable,phase,localX,localY,this.tapLocalX,this.tapLocalY,ctrlKey,altKey,shiftKey);
      }
      
      override public function toString() : String
      {
         return formatToString("PressAndTapGestureEvent","type","bubbles","cancelable","phase","args","localX","localY","tapLocalX","tapLocalY","ctrlKey","altKey","shiftKey");
      }
      
      native public function get tapLocalX() : Number;
      
      native public function set tapLocalX(param1:Number) : void;
      
      native public function get tapLocalY() : Number;
      
      native public function set tapLocalY(param1:Number) : void;
      
      public function get tapStageX() : Number
      {
         if(isNaN(this.tapLocalX) || isNaN(this.tapLocalY))
         {
            return Number.NaN;
         }
         return this.getTapStageX();
      }
      
      public function get tapStageY() : Number
      {
         if(isNaN(this.tapLocalX) || isNaN(this.tapLocalY))
         {
            return Number.NaN;
         }
         return this.getTapStageY();
      }
      
      native private function getTapStageX() : Number;
      
      native private function getTapStageY() : Number;
   }
}
