package
{
   use namespace AS3;
   
   final class Walker
   {
       
      
      var reviver:Function;
      
      function Walker(reviver:Function)
      {
         super();
         this.reviver = reviver;
      }
      
      function walk(param1:Object, param2:String) : *
      {
         var _loc4_:Array = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:* = undefined;
         var _loc8_:* = null;
         var _loc3_:Object = param1[param2];
         if(_loc3_ is Array)
         {
            _loc4_ = _loc3_ as Array;
            for(_loc5_ = 0,_loc6_ = _loc4_.length; _loc5_ < _loc6_; _loc5_++)
            {
               _loc7_ = this.walk(_loc4_,String(_loc5_));
               if(_loc7_ === undefined)
               {
                  delete _loc4_[_loc5_];
               }
               else
               {
                  _loc4_[_loc5_] = _loc7_;
               }
            }
         }
         else if(_loc3_ !== null && !(_loc3_ is Boolean) && !(_loc3_ is Number) && !(_loc3_ is String))
         {
            for(_loc8_ in _loc3_)
            {
               if(!_loc3_.hasOwnProperty(_loc8_))
               {
                  break;
               }
               _loc7_ = this.walk(_loc3_,_loc8_);
               if(_loc7_ === undefined)
               {
                  delete _loc3_[_loc8_];
               }
               else
               {
                  _loc3_[_loc8_] = _loc7_;
               }
            }
         }
         return this.reviver.call(param1,param2,_loc3_);
      }
   }
}
