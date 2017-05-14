package flash.display
{
   import flash.events.EventDispatcher;
   
   [native(instance="MenuItemObject",methods="auto",cls="MenuItemClass",gc="exact")]
   [API("667")]
   [Event(name="preparing",type="flash.events.Event")]
   [Event(name="displaying",type="flash.events.Event")]
   [Event(name="select",type="flash.events.Event")]
   public class NativeMenuItem extends EventDispatcher
   {
       
      
      public function NativeMenuItem()
      {
         super();
      }
      
      native public function get enabled() : Boolean;
      
      native public function set enabled(param1:Boolean) : void;
   }
}
