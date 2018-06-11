public with sharing class sample {
    public Id recId {get;set;}
    public String output {get;set;}
    public Schema.SObjectType objType {get;set;}
    
    public void find() {
        objType = recId.getSobjectType();
        System.debug('Object Type is ' + objType);
    }
}