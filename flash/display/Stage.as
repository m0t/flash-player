package flash.display
{
   import flash.accessibility.AccessibilityImplementation;
   import flash.accessibility.AccessibilityProperties;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.geom.Transform;
   import flash.media.StageVideo;
   import flash.text.TextSnapshot;
   import flash.ui.ContextMenu;
   
   [native(instance="StageObject",methods="auto",cls="StageClass",construct="native",gc="exact")]
   [Event(name="stageVideoAvailability",type="flash.events.StageVideoAvailabilityEvent")]
   [Event(name="orientationChange",type="flash.events.StageOrientationEvent")]
   [Event(name="orientationChanging",type="flash.events.StageOrientationEvent")]
   [Event(name="fullScreen",type="flash.events.FullScreenEvent")]
   [Event(name="browserZoomChange",type="flash.events.Event")]
   [Event(name="resize",type="flash.events.Event")]
   [Event(name="mouseLeave",type="flash.events.Event")]
   public class Stage extends DisplayObjectContainer
   {
      
      private static const kInvalidParamError:uint = 2004;
       
      
      public function Stage()
      {
         super();
      }
      
      [Exclude(kind="property",name="y")]
      [Exclude(kind="property",name="x")]
      [Exclude(kind="property",name="visible")]
      [Exclude(kind="property",name="transform")]
      [Exclude(kind="property",name="tabIndex")]
      [Exclude(kind="property",name="tabEnabled")]
      [Exclude(kind="property",name="scrollRect")]
      [Exclude(kind="property",name="scaleY")]
      [Exclude(kind="property",name="scaleX")]
      [Exclude(kind="property",name="scale9Grid")]
      [Exclude(kind="property",name="rotation")]
      [Exclude(kind="property",name="opaqueBackground")]
      [Exclude(kind="property",name="name")]
      [Exclude(kind="property",name="mouseEnabled")]
      [Exclude(kind="property",name="mask")]
      [Exclude(kind="property",name="loaderInfo")]
      [Exclude(kind="property",name="focusRect")]
      [Exclude(kind="property",name="filters")]
      [Exclude(kind="property",name="contextMenu")]
      [Exclude(kind="property",name="cacheAsBitmap")]
      [Exclude(kind="property",name="blendMode")]
      [Exclude(kind="property",name="alpha")]
      [Exclude(kind="property",name="accessibilityProperties")]
      [Exclude(kind="property",name="accessibilityImplementation")]
      native public function get frameRate() : Number;
      
      native public function set frameRate(param1:Number) : void;
      
      native public function invalidate() : void;
      
      native public function get scaleMode() : String;
      
      native public function set scaleMode(param1:String) : void;
      
      native public function get align() : String;
      
      native public function set align(param1:String) : void;
      
      native public function get stageWidth() : int;
      
      native public function set stageWidth(param1:int) : void;
      
      native public function get stageHeight() : int;
      
      native public function set stageHeight(param1:int) : void;
      
      native public function get showDefaultContextMenu() : Boolean;
      
      native public function set showDefaultContextMenu(param1:Boolean) : void;
      
      native public function get focus() : InteractiveObject;
      
      native public function set focus(param1:InteractiveObject) : void;
      
      [Version("10")]
      native public function get colorCorrection() : String;
      
      [Version("10")]
      native public function set colorCorrection(param1:String) : void;
      
      [Version("10")]
      native public function get colorCorrectionSupport() : String;
      
      native public function isFocusInaccessible() : Boolean;
      
      native public function get stageFocusRect() : Boolean;
      
      native public function set stageFocusRect(param1:Boolean) : void;
      
      native public function get quality() : String;
      
      native public function set quality(param1:String) : void;
      
      native public function get displayState() : String;
      
      native public function set displayState(param1:String) : void;
      
      native public function get fullScreenSourceRect() : Rectangle;
      
      native public function set fullScreenSourceRect(param1:Rectangle) : void;
      
      [API("678")]
      native public function get mouseLock() : Boolean;
      
      [API("678")]
      native public function set mouseLock(param1:Boolean) : void;
      
      [API("667")]
      native public function get stageVideos() : Vector.<StageVideo>;
      
      [API("674")]
      native public function get stage3Ds() : Vector.<Stage3D>;
      
      [API("670")]
      native public function get color() : uint;
      
      [API("670")]
      native public function set color(param1:uint) : void;
      
      native public function get fullScreenWidth() : uint;
      
      native public function get fullScreenHeight() : uint;
      
      [Version("10.0.32")]
      native public function get wmodeGPU() : Boolean;
      
      [API("670")]
      native public function get softKeyboardRect() : Rectangle;
      
      override public function set name(value:String) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set mask(value:DisplayObject) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set visible(value:Boolean) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set x(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set y(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      [Version("10")]
      override public function set z(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set scaleX(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set scaleY(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      [Version("10")]
      override public function set scaleZ(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set rotation(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      [Version("10")]
      override public function set rotationX(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      [Version("10")]
      override public function set rotationY(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      [Version("10")]
      override public function set rotationZ(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set alpha(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set cacheAsBitmap(value:Boolean) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set opaqueBackground(value:Object) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set scrollRect(value:Rectangle) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set filters(value:Array) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set blendMode(value:String) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set transform(value:Transform) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set accessibilityProperties(value:AccessibilityProperties) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set scale9Grid(value:Rectangle) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set tabEnabled(value:Boolean) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set tabIndex(value:int) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set focusRect(value:Object) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set mouseEnabled(value:Boolean) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function set accessibilityImplementation(value:AccessibilityImplementation) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function addChild(child:DisplayObject) : DisplayObject
      {
         this.requireOwnerPermissions();
         return super.addChild(child);
      }
      
      override public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         this.requireOwnerPermissions();
         return super.addChildAt(child,index);
      }
      
      override public function setChildIndex(child:DisplayObject, index:int) : void
      {
         this.requireOwnerPermissions();
         super.setChildIndex(child,index);
      }
      
      override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.requireOwnerPermissions();
         super.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      override public function dispatchEvent(event:Event) : Boolean
      {
         this.requireOwnerPermissions();
         return super.dispatchEvent(event);
      }
      
      override public function hasEventListener(type:String) : Boolean
      {
         this.requireOwnerPermissions();
         return super.hasEventListener(type);
      }
      
      override public function willTrigger(type:String) : Boolean
      {
         this.requireOwnerPermissions();
         return super.willTrigger(type);
      }
      
      override public function get width() : Number
      {
         this.requireOwnerPermissions();
         return super.width;
      }
      
      override public function set width(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function get height() : Number
      {
         this.requireOwnerPermissions();
         return super.height;
      }
      
      override public function set height(value:Number) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
      
      override public function get textSnapshot() : TextSnapshot
      {
         Error.throwError(IllegalOperationError,2071);
         return null;
      }
      
      override public function get mouseChildren() : Boolean
      {
         this.requireOwnerPermissions();
         return super.mouseChildren;
      }
      
      override public function set mouseChildren(value:Boolean) : void
      {
         this.requireOwnerPermissions();
         super.mouseChildren = value;
      }
      
      override public function get numChildren() : int
      {
         this.requireOwnerPermissions();
         return super.numChildren;
      }
      
      override public function get tabChildren() : Boolean
      {
         this.requireOwnerPermissions();
         return super.tabChildren;
      }
      
      override public function set tabChildren(value:Boolean) : void
      {
         this.requireOwnerPermissions();
         super.tabChildren = value;
      }
      
      [API("670")]
      native public function get allowsFullScreen() : Boolean;
      
      [API("680")]
      native public function get allowsFullScreenInteractive() : Boolean;
      
      native override public function removeChildAt(param1:int) : DisplayObject;
      
      native override public function swapChildrenAt(param1:int, param2:int) : void;
      
      [API("682")]
      native public function get contentsScaleFactor() : Number;
      
      [API("700")]
      native public function get browserZoomFactor() : Number;
      
      native private function requireOwnerPermissions() : void;
      
      [API("674")]
      native public function get displayContextInfo() : String;
      
      public function get constructor() : *
      {
         return null;
      }
      
      public function set constructor(c:*) : *
      {
      }
      
      override public function set contextMenu(value:ContextMenu) : void
      {
         Error.throwError(IllegalOperationError,2071);
      }
   }
}
