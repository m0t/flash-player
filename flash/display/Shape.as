package flash.display
{
   [native(instance="ShapeObject",methods="auto",cls="ShapeClass",gc="exact")]
   public class Shape extends DisplayObject
   {
       
      
      public function Shape()
      {
         super();
      }
      
      native public function get graphics() : Graphics;
   }
}
