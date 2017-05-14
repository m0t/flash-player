package flash.net
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   [native(instance="FileReferenceObject",methods="auto",cls="FileReferenceClass")]
   [Event(name="uploadCompleteData",type="flash.events.DataEvent")]
   [Event(name="httpResponseStatus",type="flash.events.HTTPStatusEvent")]
   [Event(name="httpStatus",type="flash.events.HTTPStatusEvent")]
   [Event(name="select",type="flash.events.Event")]
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="progress",type="flash.events.ProgressEvent")]
   [Event(name="open",type="flash.events.Event")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="complete",type="flash.events.Event")]
   [Event(name="cancel",type="flash.events.Event")]
   public class FileReference extends EventDispatcher
   {
      
      private static const kInvalidParamError:uint = 2004;
      
      private static const kNullPointerError:uint = 2007;
      
      private static const kInvalidCallError:uint = 2037;
      
      private static const kLocalSecurityError:uint = 2028;
       
      
      public function FileReference()
      {
         super();
      }
      
      native private static function _ensureIsRootPlayer() : void;
      
      native public function get creationDate() : Date;
      
      native public function get creator() : String;
      
      native public function get modificationDate() : Date;
      
      native public function get name() : String;
      
      native public function get size() : Number;
      
      native public function get type() : String;
      
      native public function cancel() : void;
      
      native public function download(param1:URLRequest, param2:String = null) : void;
      
      native public function upload(param1:URLRequest, param2:String = "Filedata", param3:Boolean = false) : void;
      
      [Version("10")]
      native public function get data() : ByteArray;
      
      native private function _load(param1:ByteArray) : void;
      
      native private function _save(param1:ByteArray, param2:String) : void;
      
      [Version("10")]
      public function load() : void
      {
         this._load(new ByteArray());
      }
      
      [Version("10")]
      public function save(data:*, defaultFileName:String = null) : void
      {
         var x:XML = null;
         _ensureIsRootPlayer();
         var d:ByteArray = new ByteArray();
         if(data == null)
         {
            throw new ArgumentError("data");
         }
         if(data is String)
         {
            d.writeUTFBytes(data as String);
         }
         else if(data is XML)
         {
            d.writeUTFBytes((data as XML).toXMLString());
         }
         else if(data is ByteArray)
         {
            d.writeBytes(data as ByteArray);
         }
         else
         {
            try
            {
               d.writeUTFBytes(data);
            }
            catch(e:Error)
            {
               throw new ArgumentError("data");
            }
         }
         d.position = 0;
         if(defaultFileName == null)
         {
            var defaultFileName:String = "";
         }
         this._save(d,defaultFileName);
      }
      
      native public function browse(param1:Array = null) : Boolean;
   }
}
