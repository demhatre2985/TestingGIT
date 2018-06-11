public with sharing class GoogleLink {

    public GoogleLink(ApexPages.StandardController controller) {

    }
    public pagereference GotoGoogle()
    {
    pagereference ob = new pagereference('https://www.google.com/');
    return ob;
    }        
}