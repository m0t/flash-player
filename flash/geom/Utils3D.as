package flash.geom
{
   [native(methods="auto",cls="Utils3DClass",construct="none")]
   [Version("10")]
   public class Utils3D
   {
       
      
      public function Utils3D()
      {
         super();
      }
      
      native public static function projectVector(param1:Matrix3D, param2:Vector3D) : Vector3D;
      
      native public static function projectVectors(param1:Matrix3D, param2:Vector.<Number>, param3:Vector.<Number>, param4:Vector.<Number>) : void;
      
      native public static function pointTowards(param1:Number, param2:Matrix3D, param3:Vector3D, param4:Vector3D = null, param5:Vector3D = null) : Matrix3D;
   }
}
