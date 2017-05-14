package flash.net
{
   import flash.events.EventDispatcher;
   
   [native(instance="FileReferenceListObject",methods="auto",cls="FileReferenceListClass")]
   [Event(name="select",type="flash.events.Event")]
   [Event(name="cancel",type="flash.events.Event")]
   public class FileReferenceList extends EventDispatcher
   {
       
      
      public function FileReferenceList()
      {
         super();
      }
      
      native public function get fileList() : Array;
      
      native public function browse(param1:Array = null) : Boolean;
   }
}
