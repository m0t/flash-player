package flash.desktop
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   [native(instance="ClipboardObject",methods="auto",cls="ClipboardClass",construct="check")]
   [Version("air1")]
   [Version("10")]
   public class Clipboard
   {
      
      private static const LIFETIME_ERROR:String = "Attempt to access a dead clipboard";
      
      private static const READ_ACCESS_ERROR:String = "Reading from clipboard not permitted in this context";
      
      private static const WRITE_ACCESS_ERROR:String = "Writing to clipboard not permitted in this context";
      
      private static var _fromFlash:Dictionary;
      
      private static var _toFlash:Dictionary;
      
      private static var _wasFormatMapInitialized:Boolean = false;
       
      
      public function Clipboard()
      {
         super();
         initFormatMap();
      }
      
      native public static function get generalClipboard() : Clipboard;
      
      private static function isSystemFormat(format:String) : Boolean
      {
         return Clipboard.FLASH_PREFIX == format.substr(0,Clipboard.FLASH_PREFIX.length) || Clipboard.AIR_PREFIX == format.substr(0,Clipboard.AIR_PREFIX.length);
      }
      
      private static function initFormatMap() : void
      {
         if(!_wasFormatMapInitialized)
         {
            _fromFlash = new Dictionary();
            _toFlash = new Dictionary();
            addFormatMapping(Clipboard.TEXT_FORMAT,function(clipboard:Clipboard, text:String):void
            {
               clipboard.putString(text);
            },function(clipboard:Clipboard):String
            {
               return clipboard.getString();
            });
            addFormatMapping(Clipboard.HTML_FORMAT,function(clipboard:Clipboard, html:String):void
            {
               clipboard.putHTML(html);
            },function(clipboard:Clipboard):String
            {
               return clipboard.getHTML();
            });
            addFormatMapping(Clipboard.RICH_TEXT_FORMAT,function(clipboard:Clipboard, rtf:ByteArray):void
            {
               clipboard.putRTF(rtf);
            },function(clipboard:Clipboard):ByteArray
            {
               return clipboard.getRTF();
            });
            _wasFormatMapInitialized = true;
         }
      }
      
      private static function addFormatMapping(flashFormat:String, exportFromFlash:Function, importToFlash:Function) : *
      {
         _fromFlash[flashFormat] = exportFromFlash;
         _toFlash[flashFormat] = importToFlash;
      }
      
      native public function get formats() : Array;
      
      native public function clear() : void;
      
      native public function clearData(param1:String) : void;
      
      [cppcall]
      public function setData(format:String, data:Object, serializable:Boolean = true) : Boolean
      {
         var fmtIsNull:Boolean = format == null;
         if(fmtIsNull || data == null)
         {
            if(this.swfVersion >= 10)
            {
               Error.throwError(TypeError,2007,!!fmtIsNull?"format":"data");
            }
            else if(fmtIsNull)
            {
               return false;
            }
         }
         if(format == Clipboard.URL_FORMAT || format == Clipboard.FILE_LIST_FORMAT || format == Clipboard.BITMAP_FORMAT || format == Clipboard.FILE_PROMISE_LIST_FORMAT)
         {
            return false;
         }
         this.checkAccess(false,true);
         return this.convertFlashFormat(format,data,serializable);
      }
      
      public function setDataHandler(format:String, handler:Function, serializable:Boolean = true) : Boolean
      {
         var toNative:* = undefined;
         if(this.swfVersion >= 10)
         {
            if(format == null)
            {
               Error.throwError(TypeError,2007,"format");
            }
            if(handler == null)
            {
               Error.throwError(TypeError,2007,"handler");
            }
         }
         if(format == Clipboard.URL_FORMAT || format == Clipboard.FILE_LIST_FORMAT || format == Clipboard.BITMAP_FORMAT || format == Clipboard.FILE_PROMISE_LIST_FORMAT)
         {
            return false;
         }
         this.checkAccess(false,true);
         var fullHandler:Function = function():void
         {
            var result:Object = handler() as Object;
            setHandlerStoringData(true);
            setData(format,result,serializable);
            setHandlerStoringData(false);
         };
         if(isSystemFormat(format))
         {
            toNative = _fromFlash[format];
            if(!toNative)
            {
               return false;
            }
            this.nativeSetHandler(format,fullHandler);
         }
         else
         {
            this.nativeSetHandler(Clipboard.REFERENCE_PREFIX + format,fullHandler);
            if(serializable)
            {
               this.nativeSetHandler(Clipboard.SERIALIZATION_PREFIX + format,fullHandler);
            }
         }
         return true;
      }
      
      public function getData(param1:String, param2:String = "originalPreferred") : Object
      {
         var _loc3_:Object = null;
         this.checkAccess(true,false);
         _loc3_ = this.convertNativeFormat(param1);
         if(_loc3_)
         {
            return _loc3_;
         }
         switch(param2)
         {
            case Clipboard.ORIGINAL_PREFERRED:
               _loc3_ = this.getOriginal(param1);
               if(_loc3_ == undefined)
               {
                  _loc3_ = this.getClone(param1);
               }
               return _loc3_;
            case Clipboard.ORIGINAL_ONLY:
               return this.getOriginal(param1);
            case Clipboard.CLONE_PREFERRED:
               _loc3_ = this.getClone(param1);
               if(_loc3_ == undefined)
               {
                  _loc3_ = this.getOriginal(param1);
               }
               return _loc3_;
            case Clipboard.CLONE_ONLY:
               return this.getClone(param1);
            default:
               throw new Error("Illegal value for transferMode: " + param2);
         }
      }
      
      public function hasFormat(format:String) : Boolean
      {
         this.checkAccess(false,false);
         return this.formats.indexOf(format) != -1;
      }
      
      private function getOriginal(format:String) : Object
      {
         return this.convertNativeFormat(Clipboard.REFERENCE_PREFIX + format);
      }
      
      private function getClone(format:String) : Object
      {
         return this.convertNativeFormat(Clipboard.SERIALIZATION_PREFIX + format);
      }
      
      native private function get alive() : Boolean;
      
      native private function get canReadContents() : Boolean;
      
      native private function get canWriteContents() : Boolean;
      
      private function checkAccess(requestRead:Boolean, requestWrite:Boolean) : void
      {
         if(!this.alive)
         {
            throw new IllegalOperationError(LIFETIME_ERROR);
         }
         if(requestRead && !this.canReadContents)
         {
            throw new SecurityError(READ_ACCESS_ERROR);
         }
         if(requestWrite && !this.canWriteContents)
         {
            throw new SecurityError(WRITE_ACCESS_ERROR);
         }
      }
      
      native private function nativeSetHandler(param1:String, param2:Function) : void;
      
      native private function getObjectReference(param1:String) : Object;
      
      native private function putObjectReference(param1:String, param2:Object) : void;
      
      private function getDeserialization(format:String) : Object
      {
         var bytes:ByteArray = this.getByteArray(format);
         if(!bytes)
         {
            return null;
         }
         return bytes.readObject();
      }
      
      private function putSerialization(format:String, data:Object) : void
      {
         var bytes:ByteArray = new ByteArray();
         bytes.writeObject(data);
         this.putByteArray(format,bytes);
      }
      
      native private function getString() : String;
      
      native private function putString(param1:String) : void;
      
      native private function getHTML() : String;
      
      native private function putHTML(param1:String) : void;
      
      native private function getRTF() : ByteArray;
      
      native private function putRTF(param1:ByteArray) : void;
      
      native private function getByteArray(param1:String) : ByteArray;
      
      native private function putByteArray(param1:String, param2:ByteArray) : void;
      
      private function convertNativeFormat(format:String) : Object
      {
         var toFlash:Function = _toFlash[format];
         if(toFlash)
         {
            return toFlash(this);
         }
         var isReference:Boolean = Clipboard.REFERENCE_PREFIX == format.substr(0,Clipboard.REFERENCE_PREFIX.length);
         var isSerialization:Boolean = Clipboard.SERIALIZATION_PREFIX == format.substr(0,Clipboard.SERIALIZATION_PREFIX.length);
         if(isReference)
         {
            return this.getObjectReference(format);
         }
         if(isSerialization)
         {
            return this.getDeserialization(format);
         }
         return undefined;
      }
      
      private function convertFlashFormat(flashFormat:String, data:Object, serializable:Boolean) : Boolean
      {
         var toNative:* = undefined;
         if(isSystemFormat(flashFormat))
         {
            toNative = _fromFlash[flashFormat];
            if(toNative)
            {
               toNative(this,data);
               return true;
            }
            return false;
         }
         this.putObjectReference(Clipboard.REFERENCE_PREFIX + flashFormat,data);
         if(serializable)
         {
            this.putSerialization(Clipboard.SERIALIZATION_PREFIX + flashFormat,data);
         }
         return true;
      }
      
      native private function get swfVersion() : int;
      
      native private function setHandlerStoringData(param1:Boolean) : void;
   }
}
