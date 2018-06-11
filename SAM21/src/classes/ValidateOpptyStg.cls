public class ValidateOpptyStg {

    public static void OpptStage(List<Opportunity> oldval, List<Opportunity> newval, boolean isUpdate)
    {
        if(isUpdate == true)
        {
        
            for(Opportunity NewValue : newval)
            {
                for(Opportunity OldValue : oldval)
                {
                        if(OldValue.StageName == 'Qualification' && NewValue.StageName == 'Prospecting')
                    {
                      NewValue.StageName.addError('Stage reverse movement not allowed from '+OldValue.StageName+' to '+NewValue.StageName);
                    }
                }
            }
        }
    
    }

}