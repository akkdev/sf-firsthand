trigger accountTrigger on Account (before insert) {
	if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            // Copy Account's billing address to shipping address
			accountTriggerHandler.copyBillingAddress(Trigger.new);

            // Populate Rating of Account wrt. Industry Value
            accountTriggerHandler.updateRating(Trigger.new);
        } 
    }
}
