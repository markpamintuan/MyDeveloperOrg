@IsTest
private class AddPrimaryContactTest {

    static testMethod void testAddPrimaryContact(){
    	
		list<Account> lstNewAccounts = new list<Account>();
		for(integer i = 0; i < 100; i++){
			Account newAccount = new Account();
			newAccount.Name = 'New Account' + i;
			if(i < 50){
				newAccount.BillingState = 'CA';
			} else {
				newAccount.BillingState = 'NY';
			}
			lstNewAccounts.add(newAccount);
		}
		
		insert lstNewAccounts;
		
		test.startTest();
			Contact newContact = new Contact(LastName = 'Newconlastname');
			AddPrimaryContact enJob = new AddPrimaryContact(newContact, 'CA');
			ID jobID = System.enqueueJob(enJob);		
		test.stopTest();
		
		system.assertEquals([SELECT count() FROM Contact],[SELECT count() FROM Account WHERE BillingState = 'CA']);
    }      
}