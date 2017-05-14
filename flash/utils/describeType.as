package flash.utils
{
   import avmplus.FLASH10_FLAGS;
   
   public function flash.utils.describeType(value:*) : XML
   {
      var x:XML = describeType(value,FLASH10_FLAGS);
      var alias:String = getAliasName(value);
      if(alias != null)
      {
         x.@alias = alias;
      }
      return x;
   }
}
