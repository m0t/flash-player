package flash.display
{
   import flash.events.EventDispatcher;
   
   [native(instance="MenuObject",methods="auto",cls="MenuClass",construct="check",gc="exact")]
   [API("667")]
   [Event(name="preparing",type="flash.events.Event")]
   [Event(name="displaying",type="flash.events.Event")]
   [Event(name="select",type="flash.events.Event")]
   public class NativeMenu extends EventDispatcher
   {
       
      
      public function NativeMenu()
      {
         super();
      }
   }
}
