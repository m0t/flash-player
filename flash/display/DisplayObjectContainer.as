package flash.display
{
   import flash.geom.Point;
   import flash.text.TextSnapshot;
   
   [native(instance="ContainerObject",methods="auto",cls="ContainerClass",construct="abstract-restricted",gc="exact")]
   public class DisplayObjectContainer extends InteractiveObject
   {
       
      
      public function DisplayObjectContainer()
      {
         super();
      }
      
      [cppcall]
      native public function addChild(param1:DisplayObject) : DisplayObject;
      
      native public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject;
      
      native public function removeChild(param1:DisplayObject) : DisplayObject;
      
      native public function removeChildAt(param1:int) : DisplayObject;
      
      native public function getChildIndex(param1:DisplayObject) : int;
      
      native public function setChildIndex(param1:DisplayObject, param2:int) : void;
      
      native public function getChildAt(param1:int) : DisplayObject;
      
      native public function getChildByName(param1:String) : DisplayObject;
      
      native public function get numChildren() : int;
      
      native public function get textSnapshot() : TextSnapshot;
      
      native public function getObjectsUnderPoint(param1:Point) : Array;
      
      native public function areInaccessibleObjectsUnderPoint(param1:Point) : Boolean;
      
      native public function get tabChildren() : Boolean;
      
      native public function set tabChildren(param1:Boolean) : void;
      
      native public function get mouseChildren() : Boolean;
      
      native public function set mouseChildren(param1:Boolean) : void;
      
      native public function contains(param1:DisplayObject) : Boolean;
      
      native public function swapChildrenAt(param1:int, param2:int) : void;
      
      native public function swapChildren(param1:DisplayObject, param2:DisplayObject) : void;
      
      [API("674")]
      native public function removeChildren(param1:int = 0, param2:int = 2147483647) : void;
      
      [API("690")]
      native public function stopAllMovieClips() : void;
   }
}
