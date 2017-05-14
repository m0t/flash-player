package flash.automation
{
   [ExcludeClass]
   [native(methods="auto",cls="ConfigurationClass",construct="none")]
   public class Configuration
   {
       
      
      public function Configuration()
      {
         super();
      }
      
      native public static function get testAutomationConfiguration() : String;
      
      native public static function set deviceConfiguration(param1:String) : void;
      
      native public static function get deviceConfiguration() : String;
   }
}
