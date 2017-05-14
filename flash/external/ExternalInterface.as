package flash.external
{
   [native(methods="auto",cls="ExternalInterfaceClass",construct="none")]
   public final class ExternalInterface
   {
      
      public static var marshallExceptions:Boolean = false;
       
      
      public function ExternalInterface()
      {
         super();
      }
      
      native public static function get available() : Boolean;
      
      public static function addCallback(functionName:String, closure:Function) : void
      {
         var hasNullCallback:Boolean = false;
         var wrapperClosure:Function = null;
         if(available)
         {
            _initJS();
            hasNullCallback = closure == null;
            wrapperClosure = function(request:String, args:Array):String
            {
               return _callIn(closure,request,args);
            };
            _addCallback(functionName,wrapperClosure,hasNullCallback);
         }
         else
         {
            Error.throwError(Error,2067);
         }
      }
      
      public static function call(functionName:String, ... arguments) : *
      {
         var s:String = null;
         var id:String = null;
         var i:uint = 0;
         var result:String = null;
         var request:String = null;
         var oldIgnoreWhitespace:Boolean = false;
         var xml:XML = null;
         if(available)
         {
            s = "";
            _initJS();
            s = s + "try { ";
            id = null;
            if(activeX)
            {
               id = objectID;
            }
            if(id)
            {
               s = s + ("document.getElementById(\"" + id + "\").SetReturnValue(");
            }
            s = s + ("__flash__toXML(" + functionName + "(");
            for(i = 0; i < arguments.length; i++)
            {
               if(i != 0)
               {
                  s = s + ",";
               }
               s = s + _toJS(arguments[i]);
            }
            s = s + ")) ";
            if(id)
            {
               s = s + ")";
            }
            s = s + "; } catch (e) { ";
            if(id)
            {
               if(marshallExceptions)
               {
                  s = s + ("document.getElementById(\"" + id + "\").SetReturnValue(\"<exception>\" + e + \"</exception>\");");
               }
               else
               {
                  s = s + ("document.getElementById(\"" + id + "\").SetReturnValue(\"<undefined/>\");");
               }
            }
            else if(marshallExceptions)
            {
               s = s + "\"<exception>\" + e + \"</exception>\";";
            }
            else
            {
               s = s + "\"<undefined/>\";";
            }
            s = s + " }";
            result = _evalJS(s);
            if(result == null)
            {
               request = "<invoke name=\"" + functionName + "\" returntype=\"xml\">" + _argumentsToXML(arguments) + "</invoke>";
               result = _callOut(request);
            }
            if(result == null)
            {
               return null;
            }
            oldIgnoreWhitespace = XML.ignoreWhitespace;
            if(Capabilities.version.split(/[\ ,]/)[1] > 9)
            {
               XML.ignoreWhitespace = false;
            }
            xml = XML(result);
            XML.ignoreWhitespace = oldIgnoreWhitespace;
            return _toAS(xml);
         }
         Error.throwError(Error,2067);
      }
      
      native private static function _initJS() : void;
      
      native private static function _getPropNames(param1:Object) : Array;
      
      native public static function get objectID() : String;
      
      native private static function get activeX() : Boolean;
      
      native private static function _addCallback(param1:String, param2:Function, param3:Boolean) : void;
      
      native private static function _evalJS(param1:String) : String;
      
      native private static function _callOut(param1:String) : String;
      
      private static function _callIn(closure:Function, request:String, args:Array) : String
      {
         var result:* = undefined;
         if(args != null)
         {
            try
            {
               result = closure.apply(null,args);
            }
            catch(e:Error)
            {
               if(marshallExceptions)
               {
                  result = e;
               }
               else
               {
                  throw e;
               }
            }
            return _toJS(result);
         }
         var oldIgnoreWhitespace:Boolean = XML.ignoreWhitespace;
         XML.ignoreWhitespace = false;
         var xml:XML = XML(request);
         XML.ignoreWhitespace = oldIgnoreWhitespace;
         try
         {
            result = closure.apply(null,_argumentsToAS(xml.arguments));
         }
         catch(e:Error)
         {
            if(marshallExceptions)
            {
               result = e;
            }
            else
            {
               throw e;
            }
         }
         return xml.@returntype == "javascript"?_toJS(result):_toXML(result);
      }
      
      private static function _arrayToXML(obj:Array) : String
      {
         var s:String = "<array>";
         for(var i:int = 0; i < obj.length; i++)
         {
            s = s + ("<property id=\"" + i + "\">" + _toXML(obj[i]) + "</property>");
         }
         return s + "</array>";
      }
      
      private static function _argumentsToXML(obj:Array) : String
      {
         var s:String = "<arguments>";
         for(var i:uint = 0; i < obj.length; i++)
         {
            s = s + _toXML(obj[i]);
         }
         return s + "</arguments>";
      }
      
      private static function _objectToXML(obj:*) : String
      {
         var prop:* = null;
         var s:String = "<object>";
         for(prop in obj)
         {
            s = s + ("<property id=\"" + prop + "\">" + _toXML(obj[prop]) + "</property>");
         }
         return s + "</object>";
      }
      
      private static function _escapeXML(s:String) : String
      {
         return s.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/'/g,"&apos;");
      }
      
      private static function _toXML(value:*) : String
      {
         var type:String = typeof value;
         if(type == "string")
         {
            return "<string>" + _escapeXML(value) + "</string>";
         }
         if(type == "undefined")
         {
            return "<undefined/>";
         }
         if(type == "number")
         {
            return "<number>" + value + "</number>";
         }
         if(value == null)
         {
            return "<null/>";
         }
         if(type == "boolean")
         {
            return Boolean(value)?"<true/>":"<false/>";
         }
         if(value.hasOwnProperty("length"))
         {
            return _arrayToXML(value);
         }
         if(value is Date)
         {
            return "<date>" + value.time + "</date>";
         }
         if(value is Error && marshallExceptions)
         {
            return "<exception>" + value + "</exception>";
         }
         if(type == "object")
         {
            return _objectToXML(value);
         }
         return "<null/>";
      }
      
      private static function _objectToAS(obj:Object) : *
      {
         var x:Object = null;
         var result:Object = {};
         for each(x in obj.property)
         {
            result[x.@id] = _toAS(x.children());
         }
         return result;
      }
      
      private static function _arrayToAS(obj:Object) : *
      {
         var x:Object = null;
         var result:Array = [];
         for each(x in obj.children())
         {
            result[x.@id] = _toAS(x.children());
         }
         return result;
      }
      
      private static function _toAS(obj:Object) : *
      {
         var type:String = obj.name();
         if(type == "number")
         {
            return Number(obj.children());
         }
         if(type == "string")
         {
            return String(obj.children());
         }
         if(type == "false")
         {
            return false;
         }
         if(type == "true")
         {
            return true;
         }
         if(type == "null")
         {
            return null;
         }
         if(type == "undefined")
         {
            return undefined;
         }
         if(type == "date")
         {
            return new Date(Number(obj.children()));
         }
         if(type == "object")
         {
            return _objectToAS(obj);
         }
         if(type == "array")
         {
            return _arrayToAS(obj);
         }
         if(type == "class")
         {
            return getDefinitionByName(String(obj.children()));
         }
         if(type == "exception" && marshallExceptions)
         {
            throw new Error(obj.children());
         }
         return undefined;
      }
      
      private static function _argumentsToAS(obj:*) : Array
      {
         var x:Object = null;
         var result:Array = [];
         for each(x in obj.children())
         {
            result.push(_toAS(x));
         }
         return result;
      }
      
      private static function _arrayToJS(value:Array) : String
      {
         var s:String = "[";
         for(var i:int = 0; i < value.length; i++)
         {
            if(i != 0)
            {
               s = s + ",";
            }
            s = s + _toJS(value[i]);
         }
         return s + "]";
      }
      
      private static function _objectToJS(value:*) : String
      {
         var names:Array = _getPropNames(value);
         var s:String = "({";
         for(var i:int = 0; i < names.length; i++)
         {
            if(i > 0)
            {
               s = s + ",";
            }
            s = s + (names[i] + ":" + _toJS(value[names[i]]));
         }
         return s + "})";
      }
      
      native private static function _quotedStringFromError(param1:Error) : String;
      
      native private static function _quotedStringFromString(param1:String) : String;
      
      private static function _toJS(value:*) : String
      {
         if(value is Error && marshallExceptions)
         {
            return "throw " + _quotedStringFromError(value);
         }
         if(typeof value == "string")
         {
            return _quotedStringFromString(value);
         }
         if(value === null)
         {
            return "null";
         }
         if(value is Date)
         {
            return "new Date (" + value.time + ")";
         }
         if(typeof value == "object")
         {
            if(value is Array)
            {
               return _arrayToJS(value);
            }
            return _objectToJS(value);
         }
         return String(value);
      }
   }
}
