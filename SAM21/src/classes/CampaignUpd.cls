public Class CampaignUpd {

    public static void camprelupdate()
    {
        List<Campaign> camp = [Select Id,Name from Campaign where name = 'Master*'];
            for(Campaign camprec : camp)
            {
                
                System.debug('Campaign captured'+camprec.Name);
                camprec.status='Aborted';
                update camprec;
            
            }
                    
        
    }
    

}