public class AccountTriggerHandler {
    public static void updateAccOpportunities(List<Account> newTrigger) {
        if (newTrigger.size() > 0) {
            Set<Id> accIds = new Set<Id>();
            for (Account acct:newTrigger) {
                accIds.add(acct.Id);
            }
            
            DateTime day30=system.now()-30;
            List<Opportunity> opptyListtoUpdate = new List<Opportunity>();
            List<Opportunity> accountOppties = [SELECT Id, AccountId, StageName, CreatedDate, CloseDate from Opportunity where AccountId in :accIds];
            if (accountOppties.size() > 0) {
                for(Opportunity accntId:accountOppties) {
                    if (accntId.CreatedDate >= day30 && accntId.StageName != 'Closed Won') {
                        accntId.StageName = 'Closed Lost';
                        accntId.CloseDate = system.today();
                        opptyListtoUpdate.add(accntId);
                    }
                }
            }
            
            if (opptyListtoUpdate.size() > 0) {
                update opptyListtoUpdate;
            }
        }
    }
}