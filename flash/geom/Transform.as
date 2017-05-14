package flash.geom
{
   import flash.display.DisplayObject;
   
   [native(instance="TransformObject",methods="auto",cls="TransformClass",gc="exact")]
   public class Transform
   {
       
      
      public function Transform(displayObject:DisplayObject)
      {
         super();
         this.ctor(displayObject);
      }
      
      native public function get matrix() : Matrix;
      
      native public function set matrix(param1:Matrix) : void;
      
      native public function get colorTransform() : ColorTransform;
      
      native public function set colorTransform(param1:ColorTransform) : void;
      
      native public function get concatenatedMatrix() : Matrix;
      
      native public function get concatenatedColorTransform() : ColorTransform;
      
      native public function get pixelBounds() : Rectangle;
      
      native private function ctor(param1:DisplayObject) : void;
      
      [Version("10")]
      native public function get matrix3D() : Matrix3D;
      
      [Version("10")]
      native public function set matrix3D(param1:Matrix3D) : *;
      
      [Version("10")]
      native public function getRelativeMatrix3D(param1:DisplayObject) : Matrix3D;
      
      [Version("10")]
      native public function get perspectiveProjection() : PerspectiveProjection;
      
      [Version("10")]
      native public function set perspectiveProjection(param1:PerspectiveProjection) : void;
   }
}
