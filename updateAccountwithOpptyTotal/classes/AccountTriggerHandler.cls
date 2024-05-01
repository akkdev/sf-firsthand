public class AccountTriggerHandler {
    public static void updateAccountwithOpptyTotal(List<Account> newTrigger) {
        if (newTrigger.size() > 0) {
            Set<Id> accIds = new Set<Id>();
            for (Account acct:newTrigger) {
                accIds.add(acct.Id);
            }
            
            Map<Id, double> accOpptyAmount = new Map<Id, double>();
            List<AggregateResult> opptySum = [select AccountId, sum(Amount)TotalAmount from opportunity where AccountId in :accIds group by AccountId];
            if (opptySum.size() > 0) {
                for (AggregateResult opptyRec:opptySum) {
                    Id accountId = (Id)opptyRec.get('AccountId');
                    double opptyRecsSum = (double)opptyRec.get('TotalAmount');
                    accOpptyAmount.put(accountId, opptyRecsSum);
                }
            }
            
            for (Account acctNew:newTrigger) {
                if(accOpptyAmount.containskey(acctNew.Id)){
					acctNew.Total_Opportunity_Amount__c=accOpptyAmount.get(acctNew.Id);
				}
            }
        }
    }
}