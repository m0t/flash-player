package flash.printing
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   [native(instance="PrintJobObject",methods="auto",cls="PrintJobClass",construct="check")]
   public class PrintJob extends EventDispatcher
   {
      
      private static const kGetPaperHeight:uint = 1;
      
      private static const kGetPaperWidth:uint = 3;
      
      private static const kGetPageHeight:uint = 5;
      
      private static const kGetPageWidth:uint = 7;
      
      private static const kGetOrientation:uint = 9;
      
      private static const kStart:uint = 100;
      
      private static const kAddPage:uint = 101;
      
      private static const kSend:uint = 102;
       
      
      public function PrintJob()
      {
         super();
      }
      
      [Version("10.1")]
      public static function get isSupported() : Boolean
      {
         return _checkSupported();
      }
      
      native private static function _checkSupported() : Boolean;
      
      public function get paperHeight() : int
      {
         return this.invoke(kGetPaperHeight);
      }
      
      public function get paperWidth() : int
      {
         return this.invoke(kGetPaperWidth);
      }
      
      public function get pageHeight() : int
      {
         return this.invoke(kGetPageHeight);
      }
      
      public function get pageWidth() : int
      {
         return this.invoke(kGetPageWidth);
      }
      
      public function get orientation() : String
      {
         return this.invoke(kGetOrientation);
      }
      
      public function start() : Boolean
      {
         return this.invoke(kStart) == true;
      }
      
      native private function invoke(param1:uint, ... rest) : *;
      
      native private function _invoke(param1:*, ... rest) : *;
      
      public function send() : void
      {
         this.invoke(kSend);
      }
      
      private function toClassicRectangle(printArea:Rectangle) : *
      {
         if(printArea != null)
         {
            return {
               "xMin":printArea.left,
               "yMin":printArea.top,
               "xMax":printArea.right,
               "yMax":printArea.bottom
            };
         }
         return null;
      }
      
      public function addPage(sprite:Sprite, printArea:Rectangle = null, options:PrintJobOptions = null, frameNum:int = 0) : void
      {
         var optionsConverted:Object = null;
         if(options != null)
         {
            optionsConverted = {"printAsBitmap":options.printAsBitmap};
         }
         if(this._invoke(kAddPage,sprite,this.toClassicRectangle(printArea),optionsConverted,frameNum > 0?frameNum:-1) == false)
         {
            Error.throwError(Error,2057);
         }
      }
   }
}
