public class dmlOperationTest
{
	public static void method()
    {
        Lead ldVar = new Lead();
        //ldVar = [Select id, name from lead];
        
       // list<Lead> ld = new List<Lead>();

      	List<Lead> ld = new List<Lead>([Select  id, Firstname, Company from lead]);
        for(Lead lvar: ld)
        {
            System.debug('Details......'+lvar);
        }
        
    }

      public static void insertMethod()
      {
          List<Opportunity> opp = new List<Opportunity>([Select id, name , closedate, stageName from Opportunity]);
          //System.debug('Opp---------'+opp);
          
          List<Opportunity> oppUpdate = new List<Opportunity>();
          
          for(Opportunity Oppor: Opp)
          {
              if(Oppor.Name == 'edrd')
              {
                  Oppor.stageName='Closed Won';
                  oppUpdate.add(Oppor);
                  
              }
           update	oppUpdate;
          }
      }
    
}