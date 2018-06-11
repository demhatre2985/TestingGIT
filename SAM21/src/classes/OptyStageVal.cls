public class OptyStageVal {

    public static void PrimStage(List<Opportunity> s)
    {
        for(Opportunity opty : s)
            {
            if(opty.StageName == 'Qualification')
                    {
                    opty.addError('Qualification stage not allowed for new record');
                    }    
               
            }
    }
}