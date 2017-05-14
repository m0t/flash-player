package avmplus
{
   use namespace AS3;
   
   public function describeType(value:*, flags:uint) : XML
   {
      var e:XML = null;
      var o:Object = describeTypeJSON(value,flags);
      var x:XML = typeXml.copy();
      x.@name = o.name;
      if(o.traits.bases.length)
      {
         x.@base = o.traits.bases[0];
      }
      x.@isDynamic = o.isDynamic;
      x.@isFinal = o.isFinal;
      x.@isStatic = o.isStatic;
      describeTraits(x,o.traits);
      var oi:Object = describeTypeJSON(value,flags | USE_ITRAITS);
      if(oi !== null)
      {
         e = factoryXml.copy();
         e.@type = oi.name;
         describeTraits(e,oi.traits);
         x.appendChild(e);
      }
      return x;
   }
}
