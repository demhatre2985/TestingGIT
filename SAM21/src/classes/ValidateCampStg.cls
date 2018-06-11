public class ValidateCampStg {

    public static void CampStage(List<Campaign> oldval, List<Campaign> newval, boolean isUpdate)
    {
        if(isUpdate == true)
        {
        
            for(Campaign NewValue : newval)
            {
                for(Campaign OldValue : oldval)
                {
                        if(OldValue.Status == 'Aborted' && NewValue.Status == 'Completed')
                    {
                      NewValue.Status.addError('Statusreverse movement not allowed from '+OldValue.Status +' to '+NewValue.Status);
                    }
                }
            }
        }
    
    }

}