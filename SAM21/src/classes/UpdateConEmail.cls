public class UpdateConEmail{
    @InvocableMethod
    public static void updContact(List<ID> Ids)
        {
         

           List<Contact> contactList = [Select Id,Name,Email from Contact where AccountId in : Ids];
           
               for(Contact c : contactList)
               {
                   c.Email  ='demhatre2@gmail.com';
                   upsert c;
               }
           
        List<Case> caseList = [Select Id,CaseNumber,Priority from Case where AccountId in : Ids];
              for(Case cs : caseList)
               {
                   cs.Priority ='High';
                   upsert cs;
               }
        }

}