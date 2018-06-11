public class UpdPos
{
    public static void UpdatePostn(List<Position__c> oldval, List<Position__c> newval)
        {

         for(Position__c pold : oldval)
             {
                   for(Position__c pnew : newval)
                     {
                         if(pold.Functional_Area__c == 'Finance' && pnew.Functional_Area__c == 'Miscellaneous')
                             {
                                  pnew.Functional_Area__c.addError('Functional area cannot be changed from '+pold.Functional_Area__c+' to '+pnew.Functional_Area__c);                           
                             }
                     }
             }        
        }
        

}