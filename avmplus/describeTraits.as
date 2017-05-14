package avmplus
{
   use namespace AS3;
   
   function describeTraits(param1:XML, param2:Object) : void
   {
      var _loc4_:* = undefined;
      var _loc5_:String = null;
      var _loc6_:XML = null;
      var _loc7_:String = null;
      var _loc8_:Object = null;
      var _loc9_:Object = null;
      var _loc10_:Object = null;
      var _loc3_:XMLList = param1.*;
      for each(_loc4_ in param2.bases)
      {
         _loc5_ = _loc4_;
         _loc6_ = extendsXml.copy();
         _loc6_.@type = _loc5_;
         _loc3_[_loc3_.length()] = _loc6_;
      }
      for each(_loc4_ in param2.interfaces)
      {
         _loc7_ = _loc4_;
         _loc6_ = implementsXml.copy();
         _loc6_.@type = _loc7_;
         _loc3_[_loc3_.length()] = _loc6_;
      }
      if(param2.constructor !== null)
      {
         _loc6_ = constructorXml.copy();
         describeParams(_loc6_,param2.constructor);
         _loc3_[_loc3_.length()] = _loc6_;
      }
      for each(_loc4_ in param2.variables)
      {
         _loc8_ = _loc4_;
         _loc6_ = _loc8_.access == "readonly"?constantXml.copy():variableXml.copy();
         _loc6_.@name = _loc8_.name;
         _loc6_.@type = _loc8_.type;
         finish(_loc6_,_loc8_);
         _loc3_[_loc3_.length()] = _loc6_;
      }
      for each(_loc4_ in param2.accessors)
      {
         _loc9_ = _loc4_;
         _loc6_ = accessorXml.copy();
         _loc6_.@name = _loc9_.name;
         _loc6_.@access = _loc9_.access;
         _loc6_.@type = _loc9_.type;
         _loc6_.@declaredBy = _loc9_.declaredBy;
         finish(_loc6_,_loc9_);
         _loc3_[_loc3_.length()] = _loc6_;
      }
      for each(_loc4_ in param2.methods)
      {
         _loc10_ = _loc4_;
         _loc6_ = methodXml.copy();
         _loc6_.@name = _loc10_.name;
         _loc6_.@declaredBy = _loc10_.declaredBy;
         _loc6_.@returnType = _loc10_.returnType;
         describeParams(_loc6_,_loc10_.parameters);
         finish(_loc6_,_loc10_);
         _loc3_[_loc3_.length()] = _loc6_;
      }
      describeMetadata(param1,param2.metadata);
   }
}
