public class ContactAndLeadSearch{

    public static List<List<sObject>> searchContactsAndLeads(String fname)
        {
        
          List<List<sObject>> searchList = [FIND :fname IN NAME FIELDS RETURNING Lead(Name),Contact(FirstName,LastName)];
          
          return searchList;
        
        }

}