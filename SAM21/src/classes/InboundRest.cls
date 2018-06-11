@RestResource(urlMapping='/v1/accounts/*')
global with sharing class InboundRest  {

    @HttpGet
    global static Account doGet(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        Account result = [Select Id,Name,Phone,Website,AccountNumber from Account where AccountNumber = :accountId];
        return result;
    }
}