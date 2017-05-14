package flash.xml
{
   [native(instance="XMLParserObject",methods="auto",cls="XMLParserClass")]
   final class XMLParser
   {
       
      
      function XMLParser()
      {
         super();
      }
      
      native public function startParse(param1:String, param2:Boolean) : void;
      
      native public function getNext(param1:XMLTag) : int;
   }
}
