public with sharing class Test1 {

    public Id recId {get;set;}
    public String output { get; set; }
    public Schema.SObjectType objType {get;set;}
    public Account objDet {get;set;}
    public void find(){
        objType = recID.getSObjectType();
        
       //objDet = [Select ID from Account where ID = :recID ];
        
    
    }
      
}