trigger accountTrigger on Account (before update) {
	if (Trigger.isBefore && Trigger.isUpdate) {
    	AccountTriggerHandler.updateAccountwithOpptyTotal(Trigger.new);
    }
}