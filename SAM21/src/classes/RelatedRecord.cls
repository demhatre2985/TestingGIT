public class RelatedRecord{

    public static void changeAccount()
    {
    
        Contact queriedContact = [SELECT Account.Name from Contact where FirstName = 'Devendra' AND LastName='Mhatre' LIMIT 1];
    	queriedContact.Phone = '(415)000-1213';
    	queriedContact.Account.Industry = 'Chemicals';
    	update queriedContact;
    	update queriedContact.Account; 
    
    
        
    }
     


}