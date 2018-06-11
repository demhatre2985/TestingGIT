public class FunArea {

public static void funarea(List<Position__c> newval)
    {
        for(Position__c ps : newval)
            {
                if(ps.Functional_Area__c == 'Finance')
                    {
                     //ps.Functional_Area__c.addError('Finance is invalid FA');
                    ps.Max_Pay__c=2000;
                    //ps.Location__c='San Francisco, CA';
                    }
                
                 if(ps.Functional_Area__c == 'Human Resources')
                    {
                     ps.Functional_Area__c.addError('HR is invalid FA');
                   // ps.Max_Pay__c=2000;
                    //ps.Location__c='San Francisco, CA';
                    }
            }
    }

}