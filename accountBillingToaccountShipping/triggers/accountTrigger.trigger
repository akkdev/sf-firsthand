trigger accountTrigger on Account (before insert) {
	if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            /********************************************************************************************
            Write a trigger on Account , when an account insert ,
            automatically account billing address should populate into the account shipping address.
            *********************************************************************************************/
            accountTriggerHandler.copyBillingAddress(Trigger.new);
        } 
    }
}
