public class AccountTriggerHandler {
	public static void copyBillingAddress(List<Account> newTrigger) {
        if (!newTrigger.isEmpty()) {
            for (Account newValues : newTrigger) {
                // Copy Account's Billing Street to Shipping Street if Billing Street is not empty
                if (!String.isBlank(newValues.BillingStreet)) {
                    newValues.ShippingStreet = newValues.BillingStreet;
                }
                // Copy Account's Billing City to Shipping City if Billing City is not empty
                if (!String.isBlank(newValues.BillingCity)) {
                    newValues.ShippingCity = newValues.BillingCity;
                }
                //Copy Account's Billing State to Shipping State if Billing State is not empty
                if (!String.isBlank(newValues.BillingState)) {
                    newValues.ShippingState = newValues.BillingState;
                }
                //Copy Account's Billing PostalCode to Shipping PostalCode if Billing PostalCode is not empty
                if (!String.isBlank(newValues.BillingPostalCode)) {
                    newValues.ShippingPostalCode = newValues.BillingPostalCode;
                }
                //Copy Account's Billing Country to Shipping Country if Billing Country is not empty
                if (!String.isBlank(newValues.BillingCountry)) {
                    newValues.ShippingCountry = newValues.BillingCountry;
                }
            }
        }
    }
}