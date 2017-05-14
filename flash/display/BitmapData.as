package flash.display
{
   import flash.filters.BitmapFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   
   [native(instance="BitmapDataObject",methods="auto",cls="BitmapDataClass",gc="exact")]
   public class BitmapData implements IBitmapDrawable
   {
       
      
      public function BitmapData(width:int, height:int, transparent:Boolean = true, fillColor:uint = 4.294967295E9)
      {
         super();
         this.ctor(width,height,transparent,fillColor);
      }
      
      native private function ctor(param1:int, param2:int, param3:Boolean, param4:uint) : void;
      
      native public function clone() : BitmapData;
      
      native public function get width() : int;
      
      native public function get height() : int;
      
      native public function get transparent() : Boolean;
      
      public function get rect() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      native public function getPixel(param1:int, param2:int) : uint;
      
      native public function getPixel32(param1:int, param2:int) : uint;
      
      native public function setPixel(param1:int, param2:int, param3:uint) : void;
      
      native public function setPixel32(param1:int, param2:int, param3:uint) : void;
      
      native public function applyFilter(param1:BitmapData, param2:Rectangle, param3:Point, param4:BitmapFilter) : void;
      
      native public function colorTransform(param1:Rectangle, param2:ColorTransform) : void;
      
      native public function compare(param1:BitmapData) : Object;
      
      native public function copyChannel(param1:BitmapData, param2:Rectangle, param3:Point, param4:uint, param5:uint) : void;
      
      native public function copyPixels(param1:BitmapData, param2:Rectangle, param3:Point, param4:BitmapData = null, param5:Point = null, param6:Boolean = false) : void;
      
      native public function dispose() : void;
      
      native public function draw(param1:IBitmapDrawable, param2:Matrix = null, param3:ColorTransform = null, param4:String = null, param5:Rectangle = null, param6:Boolean = false) : void;
      
      [API("680")]
      native public function drawWithQuality(param1:IBitmapDrawable, param2:Matrix = null, param3:ColorTransform = null, param4:String = null, param5:Rectangle = null, param6:Boolean = false, param7:String = null) : void;
      
      native public function fillRect(param1:Rectangle, param2:uint) : void;
      
      native public function floodFill(param1:int, param2:int, param3:uint) : void;
      
      native public function generateFilterRect(param1:Rectangle, param2:BitmapFilter) : Rectangle;
      
      native public function getColorBoundsRect(param1:uint, param2:uint, param3:Boolean = true) : Rectangle;
      
      native public function getPixels(param1:Rectangle) : ByteArray;
      
      [API("682")]
      native public function copyPixelsToByteArray(param1:Rectangle, param2:ByteArray) : void;
      
      [Version("10")]
      native public function getVector(param1:Rectangle) : Vector.<uint>;
      
      native public function hitTest(param1:Point, param2:uint, param3:Object, param4:Point = null, param5:uint = 1) : Boolean;
      
      native public function merge(param1:BitmapData, param2:Rectangle, param3:Point, param4:uint, param5:uint, param6:uint, param7:uint) : void;
      
      native public function noise(param1:int, param2:uint = 0, param3:uint = 255, param4:uint = 7, param5:Boolean = false) : void;
      
      native public function paletteMap(param1:BitmapData, param2:Rectangle, param3:Point, param4:Array = null, param5:Array = null, param6:Array = null, param7:Array = null) : void;
      
      native public function perlinNoise(param1:Number, param2:Number, param3:uint, param4:int, param5:Boolean, param6:Boolean, param7:uint = 7, param8:Boolean = false, param9:Array = null) : void;
      
      native public function pixelDissolve(param1:BitmapData, param2:Rectangle, param3:Point, param4:int = 0, param5:int = 0, param6:uint = 0) : int;
      
      native public function scroll(param1:int, param2:int) : void;
      
      native public function setPixels(param1:Rectangle, param2:ByteArray) : void;
      
      [Version("10")]
      native public function setVector(param1:Rectangle, param2:Vector.<uint>) : void;
      
      native public function threshold(param1:BitmapData, param2:Rectangle, param3:Point, param4:String, param5:uint, param6:uint = 0, param7:uint = 4.294967295E9, param8:Boolean = false) : uint;
      
      native public function lock() : void;
      
      native public function unlock(param1:Rectangle = null) : void;
      
      [Version("10")]
      native public function histogram(param1:Rectangle = null) : Vector.<Vector.<Number>>;
      
      [API("680")]
      native public function encode(param1:Rectangle, param2:Object, param3:ByteArray = null) : ByteArray;
   }
}
