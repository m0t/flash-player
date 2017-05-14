package adobe.utils
{
   import flash.events.EventDispatcher;
   
   [native(instance="ProductManagerObject",methods="auto",cls="ProductManagerClass")]
   [ExcludeClass]
   [Event(name="error",type="flash.events.ErrorEvent")]
   [Event(name="verifyError",type="flash.events.IOErrorEvent")]
   [Event(name="diskError",type="flash.events.IOErrorEvent")]
   [Event(name="networkError",type="flash.events.IOErrorEvent")]
   [Event(name="complete",type="flash.events.Event")]
   [Event(name="cancel",type="flash.events.Event")]
   public final class ProductManager extends EventDispatcher
   {
       
      
      public function ProductManager(name:String = null, shared:Boolean = false)
      {
         super();
         this.ctor(name,shared);
      }
      
      [API("692")]
      native public static function get isAllowed() : Boolean;
      
      native private function ctor(param1:String, param2:Boolean) : void;
      
      native public function get running() : Boolean;
      
      native public function get installed() : Boolean;
      
      native public function launch(param1:String = null) : Boolean;
      
      native public function get installedVersion() : String;
      
      public function download(caption:String = null, fileName:String = null, pathElements:Array = null) : Boolean
      {
         var ln:uint = 0;
         var i:uint = 0;
         var fileWithPath:String = null;
         if(fileName != null)
         {
            fileWithPath = new String();
            if(pathElements != null)
            {
               ln = pathElements.length;
               for(i = 0; i < ln; i++)
               {
                  fileWithPath = fileWithPath + (this.validate(pathElements[i]) + "/");
               }
            }
            fileWithPath = fileWithPath + this.validate(fileName);
         }
         return this.doDownload(caption,fileWithPath);
      }
      
      native private function doDownload(param1:String, param2:String) : Boolean;
      
      private function validate(str:String) : String
      {
         var legal:String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-_";
         var ln:uint = str.length;
         for(var i:uint = 0; i < ln; i++)
         {
            if(legal.indexOf(str.charAt(i)) == -1)
            {
               throw new ArgumentError();
            }
         }
         return str;
      }
      
      native public function doSelfUpgrade(param1:String) : Boolean;
   }
}
