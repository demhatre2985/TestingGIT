@RestResource(urlMapping='/v1/Supplies/*')
global with sharing class InboundSupplies{

    @HttpGet
    global static Supply__c doGet(){

          RestRequest req = RestContext.request;
        //RestResponse res = RestContext.response;
        
           String supname = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
           Supply__c result = [Select Name,Total_Cost__c,Quantity__c,Battle_Station__c from Supply__C where Name = :supname];
        return result;

    }
    
    @HttpPost
    global static void doPost(String supname,Integer quant){
    
        
         RestRequest req = RestContext.request;
        //RestResponse res = RestContext.response;
         Supply__c s = new Supply__c();
         
         s.Name = supname;
         s.Quantity__c = quant;
         s.Unit_Cost__c = 23.00;
         s.Battle_Station__c='a0E41000008sWFwEAM';
         Insert s;
         
    
    }
    
    @HttpDelete
    global static void doDelete(){
        RestRequest req = RestContext.request;
        
        String supname = req.RequestURI.substring(req.RequestURI.LastIndexOf('/')+1);
        
        Supply__c s1 = [Select Id,Name from Supply__c where Name = :supname];
        
        delete s1;
    
    }
    
}