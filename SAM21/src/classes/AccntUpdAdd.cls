public class AccntUpdAdd{

    public static void accntaddr(List<Account> newaccount)
        {
            for(Account a : newaccount)
                {
                if(a.Match_Billing_Address__c == true)
                
                    {
                    a.Description='Trigger used';
                    
                    update a;
                    }
               
                }
        
        }

}