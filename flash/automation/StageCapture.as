package flash.automation
{
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   [native(instance="StageCaptureObject",methods="auto",cls="StageCaptureClass")]
   [ExcludeClass]
   public class StageCapture extends EventDispatcher
   {
      
      public static const CURRENT:String = "current";
      
      public static const NEXT:String = "next";
      
      public static const MULTIPLE:String = "multiple";
      
      public static const RASTER:String = "raster";
      
      public static const STAGE:String = "stage";
      
      public static const SCREEN:String = "screen";
       
      
      public function StageCapture()
      {
         super();
      }
      
      native public function capture(param1:String) : void;
      
      native public function cancel() : void;
      
      native public function set fileNameBase(param1:String) : void;
      
      native public function get fileNameBase() : String;
      
      native public function set clipRect(param1:Rectangle) : void;
      
      native public function get clipRect() : Rectangle;
      
      native public function captureBitmapData() : BitmapData;
      
      native public function set captureSource(param1:String) : void;
      
      native public function get captureSource() : String;
      
      native public function set capturePTS(param1:Number) : void;
      
      native public function get capturePTS() : Number;
   }
}
