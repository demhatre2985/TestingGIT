public class AccountHandler{

    public static Account insertNewAccount(String acctname)
    {
      Account acct =new Account();
        
          if(acctname == NULL)
          {
              try{
                  acct.Name=acctname;
                  
                }
            catch (Exception e) {
              System.debug('Null value not accepted');
             return null;
                        }
            }
          else
          {
              try{
          		acct.Name=acctname;
          		System.Debug('inserted Account Name '+ acct.Name);
          		insert acct;
              }catch(DMLException e){
                  
                  System.debug('Error on insert'+e.getMessage());
              }
                  
          }
              return acct; 
    }

}