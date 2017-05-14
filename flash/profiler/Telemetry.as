package flash.profiler
{
   [native(instance="TelemetryObject",methods="auto",cls="TelemetryClass",gc="exact")]
   [API("678")]
   public final class Telemetry
   {
       
      
      public function Telemetry()
      {
         super();
      }
      
      native public static function get spanMarker() : Number;
      
      native public static function get connected() : Boolean;
      
      native public static function sendMetric(param1:String, param2:*) : void;
      
      native public static function sendSpanMetric(param1:String, param2:Number, param3:* = null) : void;
      
      native public static function registerCommandHandler(param1:String, param2:Function) : Boolean;
      
      native public static function unregisterCommandHandler(param1:String) : Boolean;
   }
}
