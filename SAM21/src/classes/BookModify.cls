public class BookModify{

List<Book__c> bk1 = [Select Name,Id,Price__c from Book__c where Name in ('Two States')];

}