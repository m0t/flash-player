package flash.net
{
   public final class URLRequestHeader
   {
       
      
      public var name:String;
      
      public var value:String;
      
      public function URLRequestHeader(name:String = "", value:String = "")
      {
         super();
         this.name = name;
         this.value = value;
      }
   }
}
