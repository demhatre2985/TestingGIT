@RestResource(urlMapping='/showAccounts/*')

global class checkAcount{


@HttpGet
global static List<Account> getaccount()
{
    List<Account> lst;
    
    
    lst=[select name, phone from Account LIMIT 10];
    return lst;
    
      
}

}