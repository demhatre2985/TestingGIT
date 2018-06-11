global class ScheduledMerge implements Schedulable {
    global void execute(SchedulableContext SC) {
    
    
    string q = 'select Id, Industry from Account LIMIT 10';
    string e = 'Account';
    string f = 'Industry';
    string v='Agriculture';
    SearchAndReplace search = new SearchAndReplace(q,e,f,v);
    
    
    Database.executeBatch(search , 5);
    
    }

}