public class AccountUpd{

    @InvocableMethod
        public static void updaccount(List<Account> accnt)
            {
               for(Account a : accnt)
               
                  {
                  
                  a.Active__c='Yes';
                  upsert a;
                  }
                
            }

}