package flash.geom
{
   [native(instance="PerspectiveProjectionObject",methods="auto",cls="PerspectiveProjectionClass")]
   [Version("10")]
   public class PerspectiveProjection
   {
       
      
      public function PerspectiveProjection()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native public function get fieldOfView() : Number;
      
      native public function set fieldOfView(param1:Number) : void;
      
      native public function get projectionCenter() : Point;
      
      native public function set projectionCenter(param1:Point) : *;
      
      native public function get focalLength() : Number;
      
      native public function set focalLength(param1:Number) : void;
      
      native public function toMatrix3D() : Matrix3D;
   }
}
