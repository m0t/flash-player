package flash.net
{
   [native(instance="FileFilterObject",methods="auto",cls="FileFilterClass")]
   public final class FileFilter
   {
       
      
      public function FileFilter(description:String, extension:String, macType:String = null)
      {
         super();
         this.description = description;
         this.extension = extension;
         this.macType = macType;
      }
      
      native public function get description() : String;
      
      native public function set description(param1:String) : void;
      
      native public function get extension() : String;
      
      native public function set extension(param1:String) : void;
      
      native public function get macType() : String;
      
      native public function set macType(param1:String) : void;
   }
}
