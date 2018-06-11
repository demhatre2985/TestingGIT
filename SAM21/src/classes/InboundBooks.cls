@RestResource(urlMapping='/v1/Books/*')
global with sharing class InboundBooks{

    @HttpGet
    global static Book__c doGet(){
        RestRequest req = RestContext.request;
        //RestResponse res = RestContext.response;
        
        String b1 = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        Book__c result = [Select Name,Price__C from Book__C where Name = :b1];
        return result;
    }
    
    
    @HttpPost
    global static Book__c doPost(String name, Integer price){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        //BookWrapper response = new BookWrapper();
        
        Book__c bk = new Book__c();
        
        bk.Name = name;
        bk.Price__c=price;
        insert bk;
        
        return bk;
    
    }
    
    
    @HttpDelete
    global static void doDelete(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        //BookWrapper response = new BookWrapper();
        
        String b1 = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        Book__c bk = new Book__c();
        
        bk = [Select Name,Id from Book__c where Name = :b1];
        
        delete bk;
        
    
    }
    
    
    
        @HttpPatch
    global static void doPatch(String name ){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        //BookWrapper response = new BookWrapper();
        
        Book__c bk = new Book__c();
        
        bk = [Select Name,Id from Book__c where Name = :name];
        
        bk.Price__c=220; 
        
        update bk;     
    
    }
    
    
    
}