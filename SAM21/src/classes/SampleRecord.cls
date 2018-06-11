public class SampleRecord {

  public static void method()
    {
    	System.debug('Testing GIT');
        //Account Acc= new Account();
        //ldVar = [Select id, name from lead];
        
       // list<Lead> ld = new List<Lead>();

        List<Account> Acc = new List<Account>([Select  id, Name,Phone from Account where Name='Edge Communications']);
        for(Account avar : Acc)
        {
            System.debug('Details......'+avar.Phone);
        }

    }
}