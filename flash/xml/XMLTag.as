package flash.xml
{
   [native(instance="XMLTagObject",methods="auto",cls="XMLTagClass")]
   final class XMLTag
   {
       
      
      function XMLTag()
      {
         super();
      }
      
      native public function get type() : uint;
      
      native public function set type(param1:uint) : void;
      
      native public function get empty() : Boolean;
      
      native public function set empty(param1:Boolean) : void;
      
      native public function get value() : String;
      
      native public function set value(param1:String) : void;
      
      native public function get attrs() : Object;
      
      native public function set attrs(param1:Object) : void;
   }
}
