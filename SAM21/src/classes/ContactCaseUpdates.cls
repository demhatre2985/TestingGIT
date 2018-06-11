public class ContactCaseUpdates{

    @InvocableMethod()
    public static void conCaseUpdate(List<Id> ID)
    {
       
      List<Case> c1 = [Select Id from Case where ContactId in :ID];
      List<Case> cadd = new List<Case>();
          for(Case ctemp : c1)
          {
          ctemp.Origin='Phone';
          cadd.add(ctemp);
          }
    update cadd;
    }

}