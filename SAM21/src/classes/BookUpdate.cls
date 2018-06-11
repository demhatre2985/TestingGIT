public class BookUpdate{

    public static void priceupdate(){
    
        List<Book__c> bk1= [Select Name,Price__c from Book__c];

        System.debug('Hello');
        
        for(Book__c bkvar : bk1)
            {
            if(bkvar.Name == 'Two States')
                {
                bkvar.Price__c=21.22;
                update bkvar;
                }
            
            }
        
    }




}