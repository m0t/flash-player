package flash.display
{
   import flash.accessibility.AccessibilityProperties;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Transform;
   import flash.geom.Vector3D;
   
   [native(instance="DisplayObject",methods="auto",cls="DisplayObjectClass",construct="abstract-restricted",gc="exact")]
   [Event(name="render",type="flash.events.Event")]
   [Event(name="removedFromStage",type="flash.events.Event")]
   [Event(name="removed",type="flash.events.Event")]
   [Event(name="exitFrame",type="flash.events.Event")]
   [Event(name="frameConstructed",type="flash.events.Event")]
   [Event(name="enterFrame",type="flash.events.Event")]
   [Event(name="addedToStage",type="flash.events.Event")]
   [Event(name="added",type="flash.events.Event")]
   public class DisplayObject extends EventDispatcher implements IBitmapDrawable
   {
       
      
      public function DisplayObject()
      {
         super();
      }
      
      native public function get root() : DisplayObject;
      
      native public function get stage() : Stage;
      
      native public function get name() : String;
      
      native public function set name(param1:String) : void;
      
      native public function get parent() : DisplayObjectContainer;
      
      native public function get mask() : DisplayObject;
      
      native public function set mask(param1:DisplayObject) : void;
      
      native public function get visible() : Boolean;
      
      native public function set visible(param1:Boolean) : void;
      
      native public function get x() : Number;
      
      native public function set x(param1:Number) : void;
      
      native public function get y() : Number;
      
      native public function set y(param1:Number) : void;
      
      [Version("10")]
      native public function get z() : Number;
      
      [Version("10")]
      native public function set z(param1:Number) : void;
      
      native public function get scaleX() : Number;
      
      native public function set scaleX(param1:Number) : void;
      
      native public function get scaleY() : Number;
      
      native public function set scaleY(param1:Number) : void;
      
      [Version("10")]
      native public function get scaleZ() : Number;
      
      [Version("10")]
      native public function set scaleZ(param1:Number) : void;
      
      native public function get mouseX() : Number;
      
      native public function get mouseY() : Number;
      
      native public function get rotation() : Number;
      
      native public function set rotation(param1:Number) : void;
      
      [Version("10")]
      native public function get rotationX() : Number;
      
      [Version("10")]
      native public function set rotationX(param1:Number) : void;
      
      [Version("10")]
      native public function get rotationY() : Number;
      
      [Version("10")]
      native public function set rotationY(param1:Number) : void;
      
      [Version("10")]
      native public function get rotationZ() : Number;
      
      [Version("10")]
      native public function set rotationZ(param1:Number) : void;
      
      native public function get alpha() : Number;
      
      native public function set alpha(param1:Number) : void;
      
      native public function get width() : Number;
      
      native public function set width(param1:Number) : void;
      
      native public function get height() : Number;
      
      native public function set height(param1:Number) : void;
      
      native public function get cacheAsBitmap() : Boolean;
      
      native public function set cacheAsBitmap(param1:Boolean) : void;
      
      native public function get opaqueBackground() : Object;
      
      native public function set opaqueBackground(param1:Object) : void;
      
      native public function get scrollRect() : Rectangle;
      
      native public function set scrollRect(param1:Rectangle) : void;
      
      native public function get filters() : Array;
      
      native public function set filters(param1:Array) : void;
      
      native public function get blendMode() : String;
      
      native public function set blendMode(param1:String) : void;
      
      native public function get transform() : Transform;
      
      native public function set transform(param1:Transform) : void;
      
      native public function get scale9Grid() : Rectangle;
      
      native public function set scale9Grid(param1:Rectangle) : void;
      
      native public function globalToLocal(param1:Point) : Point;
      
      native public function localToGlobal(param1:Point) : Point;
      
      native public function getBounds(param1:DisplayObject) : Rectangle;
      
      native public function getRect(param1:DisplayObject) : Rectangle;
      
      native public function get loaderInfo() : LoaderInfo;
      
      public function hitTestObject(obj:DisplayObject) : Boolean
      {
         return this._hitTest(false,0,0,false,obj);
      }
      
      public function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean = false) : Boolean
      {
         return this._hitTest(true,x,y,shapeFlag,null);
      }
      
      native private function _hitTest(param1:Boolean, param2:Number, param3:Number, param4:Boolean, param5:DisplayObject) : Boolean;
      
      native public function get accessibilityProperties() : AccessibilityProperties;
      
      native public function set accessibilityProperties(param1:AccessibilityProperties) : void;
      
      [Version("10")]
      native public function globalToLocal3D(param1:Point) : Vector3D;
      
      [Version("10")]
      native public function local3DToGlobal(param1:Vector3D) : Point;
      
      [Version("10")]
      native public function set blendShader(param1:Shader) : void;
      
      [API("686")]
      native public function get metaData() : Object;
      
      [API("686")]
      native public function set metaData(param1:Object) : void;
   }
}
