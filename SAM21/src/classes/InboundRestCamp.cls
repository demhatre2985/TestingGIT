@RestResource(urlMapping='/Campaign/v1/*')

global with sharing class InboundRestCamp{
    @HttpGet
        global static List<Campaign> goGet(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String Campstat = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        List<Campaign> result = [Select Name,IsActive,Status,Type from Campaign where Type = :Campstat];
        
        return result;
       //return Campstat;
        
        }

}