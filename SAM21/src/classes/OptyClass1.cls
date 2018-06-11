public class OptyClass1{

List<Opportunity> opty_open1 = [Select Name,Amount,StageName,Type from Opportunity where StageName IN ('Prospecting','Qualification','Need Analysis')];

List<Opportunity> opty_closed1 = [Select Name,Amount,StageName,Type from Opportunity where StageName IN ('Closed Won','Closed Lost')];

public List<Opportunity> getopen_opty() {
return opty_open1;
}

public List<Opportunity> getclosed_opty() {
return opty_closed1;
}

}