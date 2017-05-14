package flash.geom
{
   [native(instance="Vector3DObject",methods="auto",cls="Vector3DClass")]
   [Version("10")]
   public class Vector3D
   {
      
      public static const X_AXIS:Vector3D = new Vector3D(1,0,0);
      
      public static const Y_AXIS:Vector3D = new Vector3D(0,1,0);
      
      public static const Z_AXIS:Vector3D = new Vector3D(0,0,1);
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public var w:Number;
      
      public function Vector3D(x:Number = 0.0, y:Number = 0.0, z:Number = 0.0, w:Number = 0.0)
      {
         super();
         this.x = x;
         this.y = y;
         this.z = z;
         this.w = w;
      }
      
      public static function angleBetween(a:Vector3D, b:Vector3D) : Number
      {
         var dot:Number = a.x * b.x + a.y * b.y + a.z * b.z;
         var al:Number = a.length;
         var bl:Number = b.length;
         dot = dot / (al * bl);
         if(watson(3109405))
         {
            if(dot < -1)
            {
               dot = -1;
            }
            if(dot > 1)
            {
               dot = 1;
            }
         }
         return Math.acos(dot);
      }
      
      public static function distance(pt1:Vector3D, pt2:Vector3D) : Number
      {
         return pt1.subtract(pt2).length;
      }
      
      public function clone() : Vector3D
      {
         return new Vector3D(this.x,this.y,this.z,this.w);
      }
      
      public function dotProduct(a:Vector3D) : Number
      {
         return this.x * a.x + this.y * a.y + this.z * a.z;
      }
      
      public function crossProduct(a:Vector3D) : Vector3D
      {
         return new Vector3D(this.y * a.z - this.z * a.y,this.z * a.x - this.x * a.z,this.x * a.y - this.y * a.x,1);
      }
      
      public function get length() : Number
      {
         var r:Number = this.x * this.x + this.y * this.y + this.z * this.z;
         if(r <= 0)
         {
            return 0;
         }
         return Math.sqrt(r);
      }
      
      public function get lengthSquared() : Number
      {
         return this.x * this.x + this.y * this.y + this.z * this.z;
      }
      
      public function normalize() : Number
      {
         var len:Number = this.length;
         var lenInv:Number = len != 0?Number(1 / len):Number(0);
         this.x = this.x * lenInv;
         this.y = this.y * lenInv;
         this.z = this.z * lenInv;
         return len;
      }
      
      public function scaleBy(s:Number) : void
      {
         this.x = this.x * s;
         this.y = this.y * s;
         this.z = this.z * s;
      }
      
      public function incrementBy(a:Vector3D) : void
      {
         this.x = this.x + a.x;
         this.y = this.y + a.y;
         this.z = this.z + a.z;
      }
      
      public function decrementBy(a:Vector3D) : void
      {
         this.x = this.x - a.x;
         this.y = this.y - a.y;
         this.z = this.z - a.z;
      }
      
      public function add(a:Vector3D) : Vector3D
      {
         return new Vector3D(this.x + a.x,this.y + a.y,this.z + a.z);
      }
      
      public function subtract(a:Vector3D) : Vector3D
      {
         return new Vector3D(this.x - a.x,this.y - a.y,this.z - a.z);
      }
      
      public function negate() : void
      {
         this.x = -this.x;
         this.y = -this.y;
         this.z = -this.z;
      }
      
      public function equals(toCompare:Vector3D, allFour:Boolean = false) : Boolean
      {
         return this.x == toCompare.x && this.y == toCompare.y && this.z == toCompare.z && (!!allFour?Boolean(this.w == toCompare.w):Boolean(true));
      }
      
      public function nearEquals(toCompare:Vector3D, tolerance:Number, allFour:Boolean = false) : Boolean
      {
         var diff:Number = this.x - toCompare.x;
         diff = diff < 0?Number(0 - diff):Number(diff);
         var goodEnough:Boolean = diff < tolerance;
         if(goodEnough)
         {
            diff = this.y - toCompare.y;
            diff = diff < 0?Number(0 - diff):Number(diff);
            goodEnough = diff < tolerance;
            if(goodEnough)
            {
               diff = this.z - toCompare.z;
               diff = diff < 0?Number(0 - diff):Number(diff);
               goodEnough = diff < tolerance;
               if(goodEnough && allFour)
               {
                  diff = this.w = toCompare.w;
                  diff = diff < 0?Number(0 - diff):Number(diff);
                  goodEnough = diff < tolerance;
               }
            }
         }
         return goodEnough;
      }
      
      public function project() : void
      {
         var tRecip:Number = 1 / this.w;
         this.x = this.x * tRecip;
         this.y = this.y * tRecip;
         this.z = this.z * tRecip;
      }
      
      public function toString() : String
      {
         var s:String = "Vector3D(" + this.x + ", " + this.y + ", " + this.z;
         s = s + ")";
         return s;
      }
      
      [API("674")]
      public function copyFrom(sourceVector3D:Vector3D) : void
      {
         this.x = sourceVector3D.x;
         this.y = sourceVector3D.y;
         this.z = sourceVector3D.z;
      }
      
      [API("674")]
      public function setTo(xa:Number, ya:Number, za:Number) : void
      {
         this.x = xa;
         this.y = ya;
         this.z = za;
      }
   }
}
