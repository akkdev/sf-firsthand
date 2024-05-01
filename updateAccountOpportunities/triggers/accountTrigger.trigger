trigger accountTrigger on Account (after update) {
	if (Trigger.isAfter && Trigger.isUpdate) {
    	AccountTriggerHandler.updateAccOpportunities(Trigger.new);
    }
}