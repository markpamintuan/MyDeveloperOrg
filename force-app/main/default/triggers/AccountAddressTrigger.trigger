trigger AccountAddressTrigger on Account (before insert, before update) {

	for(Account a : trigger.New){
		if(a.BillingPostalCode != '' && a.Match_Billing_Address__c == true){
			a.ShippingPostalCode = a.BillingPostalCode;
		}
	}

}