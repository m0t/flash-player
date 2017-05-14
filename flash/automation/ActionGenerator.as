package flash.automation
{
   [native(instance="ActionGeneratorObject",methods="auto",cls="ActionGeneratorClass")]
   [ExcludeClass]
   public class ActionGenerator
   {
       
      
      public function ActionGenerator()
      {
         super();
      }
      
      native public function generateActions(param1:Array) : void;
      
      public function generateAction(action:AutomationAction) : void
      {
         var singleAction:Array = new Array(action);
         this.generateActions(singleAction);
      }
   }
}
