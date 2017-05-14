package flash.display
{
   import flash.display3D.Context3D;
   import flash.events.EventDispatcher;
   
   [native(instance="Stage3DObject",methods="auto",cls="Stage3DClass",construct="native")]
   [API("674")]
   [Event(name="error",type="flash.events.ErrorEvent")]
   [Event(name="context3DCreate",type="flash.events.Event")]
   public class Stage3D extends EventDispatcher
   {
       
      
      public function Stage3D()
      {
         super();
      }
      
      native public function get context3D() : Context3D;
      
      native public function requestContext3D(param1:String = "auto", param2:String = "baseline") : void;
      
      [API("692")]
      native public function requestContext3DMatchingProfiles(param1:Vector.<String>) : void;
      
      native public function get x() : Number;
      
      native public function set x(param1:Number) : void;
      
      native public function get y() : Number;
      
      native public function set y(param1:Number) : void;
      
      native public function get visible() : Boolean;
      
      native public function set visible(param1:Boolean) : void;
   }
}
