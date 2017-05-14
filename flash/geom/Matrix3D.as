package flash.geom
{
   [native(instance="Matrix3DObject",methods="auto",cls="Matrix3DClass")]
   [Version("10")]
   public class Matrix3D
   {
       
      
      public function Matrix3D(v:Vector.<Number> = null)
      {
         super();
         this.ctor(v);
      }
      
      native public static function interpolate(param1:Matrix3D, param2:Matrix3D, param3:Number) : Matrix3D;
      
      native private function ctor(param1:Vector.<Number>) : void;
      
      native public function clone() : Matrix3D;
      
      native public function copyToMatrix3D(param1:Matrix3D) : void;
      
      native public function get rawData() : Vector.<Number>;
      
      native public function set rawData(param1:Vector.<Number>) : void;
      
      native public function append(param1:Matrix3D) : void;
      
      native public function prepend(param1:Matrix3D) : void;
      
      native public function invert() : Boolean;
      
      native public function identity() : void;
      
      native public function decompose(param1:String = "eulerAngles") : Vector.<Vector3D>;
      
      native public function recompose(param1:Vector.<Vector3D>, param2:String = "eulerAngles") : Boolean;
      
      native public function get position() : Vector3D;
      
      native public function set position(param1:Vector3D) : void;
      
      native public function appendTranslation(param1:Number, param2:Number, param3:Number) : void;
      
      native public function appendRotation(param1:Number, param2:Vector3D, param3:Vector3D = null) : void;
      
      native public function appendScale(param1:Number, param2:Number, param3:Number) : void;
      
      native public function prependTranslation(param1:Number, param2:Number, param3:Number) : void;
      
      native public function prependRotation(param1:Number, param2:Vector3D, param3:Vector3D = null) : void;
      
      native public function prependScale(param1:Number, param2:Number, param3:Number) : void;
      
      native public function transformVector(param1:Vector3D) : Vector3D;
      
      native public function deltaTransformVector(param1:Vector3D) : Vector3D;
      
      native public function transformVectors(param1:Vector.<Number>, param2:Vector.<Number>) : void;
      
      native public function get determinant() : Number;
      
      native public function transpose() : void;
      
      native public function pointAt(param1:Vector3D, param2:Vector3D = null, param3:Vector3D = null) : void;
      
      native public function interpolateTo(param1:Matrix3D, param2:Number) : void;
      
      [API("674")]
      native public function copyFrom(param1:Matrix3D) : void;
      
      [API("674")]
      native public function copyRawDataTo(param1:Vector.<Number>, param2:uint = 0, param3:Boolean = false) : void;
      
      [API("674")]
      native public function copyRawDataFrom(param1:Vector.<Number>, param2:uint = 0, param3:Boolean = false) : void;
      
      [API("674")]
      native public function copyRowTo(param1:uint, param2:Vector3D) : void;
      
      [API("674")]
      native public function copyColumnTo(param1:uint, param2:Vector3D) : void;
      
      [API("674")]
      native public function copyRowFrom(param1:uint, param2:Vector3D) : void;
      
      [API("674")]
      native public function copyColumnFrom(param1:uint, param2:Vector3D) : void;
   }
}
