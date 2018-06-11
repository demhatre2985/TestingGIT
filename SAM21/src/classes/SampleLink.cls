public with sharing class SampleLink {

    public SampleLink(ApexPages.StandardController controller) {
        
    }
    public static pagereference sLink(){

        pagereference pb = new pagereference('https://devendrabatch-dev-ed--c.na35.visual.force.com/apex/TestPage2');
        return pb;
    }
}