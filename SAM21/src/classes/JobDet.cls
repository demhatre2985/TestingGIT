public class JobDet {

    public JobDet(ApexPages.StandardController controller) {


    }

List<Job_Application__c> open_job = [select Name,Status__c,Total_Rating__c, Candidate__c from Job_Application__c where Status__c IN ('New','Hired','Schedule Interviews','Review Resume')];
List<Job_Application__c> closed_job = [select Name,Status__c,Total_Rating__c, Candidate__c from Job_Application__c where Status__c NOT IN ('New','Hired')];

public List<Job_Application__c> getopenjob(){

return open_job;
}


public List<Job_Application__c> getclosedjob(){

return closed_job;
}



}