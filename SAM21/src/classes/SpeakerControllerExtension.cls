public with sharing class SpeakerControllerExtension {

    public SpeakerControllerExtension(ApexPages.StandardController controller) {
   
    }

    public static void increment(){
       
       System.debug(Speaker__c.Last_Name__c);
    }
}