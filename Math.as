package
{
   [native(instance="double",classgc="exact",methods="auto",cls="MathClass",construct="override")]
   public final class Math
   {
      
      public static const E:Number = 2.71828182845905;
      
      public static const LN10:Number = 2.30258509299405;
      
      public static const LN2:Number = 0.693147180559945;
      
      public static const LOG10E:Number = 0.434294481903252;
      
      public static const LOG2E:Number = 1.44269504088896;
      
      public static const PI:Number = 3.14159265358979;
      
      public static const SQRT1_2:Number = 0.707106781186548;
      
      public static const SQRT2:Number = 1.4142135623731;
      
      private static const NegInfinity:Number = -1 / 0;
       
      
      public function Math()
      {
         super();
      }
      
      native private static function _min(param1:Number, param2:Number) : Number;
      
      native private static function _max(param1:Number, param2:Number) : Number;
      
      native public static function abs(param1:Number) : Number;
      
      native public static function acos(param1:Number) : Number;
      
      native public static function asin(param1:Number) : Number;
      
      native public static function atan(param1:Number) : Number;
      
      native public static function ceil(param1:Number) : Number;
      
      native public static function cos(param1:Number) : Number;
      
      native public static function exp(param1:Number) : Number;
      
      native public static function floor(param1:Number) : Number;
      
      native public static function log(param1:Number) : Number;
      
      native public static function round(param1:Number) : Number;
      
      native public static function sin(param1:Number) : Number;
      
      native public static function sqrt(param1:Number) : Number;
      
      native public static function tan(param1:Number) : Number;
      
      native public static function atan2(param1:Number, param2:Number) : Number;
      
      native public static function pow(param1:Number, param2:Number) : Number;
      
      native public static function max(param1:Number = -Infinity, param2:Number = -Infinity, ... rest) : Number;
      
      native public static function min(param1:Number = Infinity, param2:Number = Infinity, ... rest) : Number;
      
      native public static function random() : Number;
   }
}
