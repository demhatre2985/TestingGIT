global class SearchAndReplace implements Database.Batchable<sObject>{   
    
   global final String Query;   
   global final String Entity;  
   global final String Field;   
   global final String Value;   
    
   global SearchAndReplace(String q, String e, String f, String v){ 
    
      Query=q; 
      Entity=e; 
      Field=f;
      Value=v;   
   }    
    
   global Database.QueryLocator start(Database.BatchableContext BC){    
      return Database.getQueryLocator(query);   
   }    
    
   global void execute(Database.BatchableContext BC, List<sObject> batch){  
     for(sobject s : batch){    
     s.put(Field,Value);    
     }  
     update batch;  
    }   
    
   global void finish(Database.BatchableContext BC){   
   
       AsyncApexJob aaj = [Select Id, Status, NumberOfErrors, JobItemsProcessed, MethodName, TotalJobItems
       , CreatedBy.Email from AsyncApexJob where Id =:BC.getJobId()];
       
       
       Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
       String[] toAddresses = new String[] {'demhatre@gmail.com'};
       mail.setToAddresses(toAddresses);
       mail.setSubject('JOB Salesforce Update Accounts Finished ');
       
       String bodyText='Total Job Items ' + aaj.TotalJobItems + ' Number of records processed ' + aaj.JobItemsProcessed + ' with '+ aaj.NumberOfErrors + ' failures.\n';
       bodyText +='Job Id : ' + aaj.Id;
        //bodyText += 'Number of Error Messages ' + errorMessages.size() + '\n';
       // bodyText += 'Error Message' + String.join(errorMessages, '\n');
       
       mail.setPlainTextBody('JOB Salesforce Update Accounts Finished '+bodyText);
       Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        
        
   }    
}