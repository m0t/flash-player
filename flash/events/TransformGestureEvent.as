package flash.events
{
   [native(instance="TransformGestureEventObject",methods="auto",cls="TransformGestureEventClass")]
   [Version("10.1")]
   public class TransformGestureEvent extends GestureEvent
   {
      
      public static const GESTURE_ZOOM:String = "gestureZoom";
      
      public static const GESTURE_PAN:String = "gesturePan";
      
      public static const GESTURE_ROTATE:String = "gestureRotate";
      
      public static const GESTURE_SWIPE:String = "gestureSwipe";
       
      
      private var m_scaleX:Number;
      
      private var m_scaleY:Number;
      
      private var m_rotation:Number;
      
      private var m_offsetX:Number;
      
      private var m_offsetY:Number;
      
      public function TransformGestureEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, phase:String = null, localX:Number = 0, localY:Number = 0, scaleX:Number = 1.0, scaleY:Number = 1.0, rotation:Number = 0, offsetX:Number = 0, offsetY:Number = 0, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false)
      {
         super(type,bubbles,cancelable,phase,localX,localY,ctrlKey,altKey,shiftKey);
         this.m_scaleX = scaleX;
         this.m_scaleY = scaleY;
         this.m_rotation = rotation;
         this.m_offsetX = offsetX;
         this.m_offsetY = offsetY;
      }
      
      override public function clone() : Event
      {
         return new TransformGestureEvent(type,bubbles,cancelable,phase,localX,localY,this.m_scaleX,this.m_scaleY,this.m_rotation,this.m_offsetX,this.m_offsetY,ctrlKey,altKey,shiftKey);
      }
      
      override public function toString() : String
      {
         return formatToString("TransformGestureEvent","type","bubbles","cancelable","phase","args","localX","localY","stageX","stageY","scaleX","scaleY","rotation","offsetX","offsetY","ctrlKey","altKey","shiftKey");
      }
      
      public function get scaleX() : Number
      {
         return this.m_scaleX;
      }
      
      public function set scaleX(value:Number) : void
      {
         this.m_scaleX = value;
      }
      
      public function get scaleY() : Number
      {
         return this.m_scaleY;
      }
      
      public function set scaleY(value:Number) : void
      {
         this.m_scaleY = value;
      }
      
      public function get rotation() : Number
      {
         return this.m_rotation;
      }
      
      public function set rotation(value:Number) : void
      {
         this.m_rotation = value;
      }
      
      public function get offsetX() : Number
      {
         return this.m_offsetX;
      }
      
      public function set offsetX(value:Number) : void
      {
         this.m_offsetX = value;
      }
      
      public function get offsetY() : Number
      {
         return this.m_offsetY;
      }
      
      public function set offsetY(value:Number) : void
      {
         this.m_offsetY = value;
      }
   }
}
