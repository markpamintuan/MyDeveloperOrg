@IsTest
private class AccountProcessorTest {
	@IsTest
  	private static void testAccountProcessor() {
  	
	  	list<Account> lstNewAccounts = new list<Account>();
	  	for(integer i = 0; i < 3; i++){
	  		Account newAccount = new Account(Name = 'test Account' + i);
	  		lstNewAccounts.add(newAccount);
	  	}
	  	insert lstNewAccounts;
	  	
	  	list<Contact> lstNewContacts = new list<Contact>();
	  	for(integer j = 0; j < 15; j++){
	  		Contact newContact = new Contact();
	  		newContact.LastName = 'Conlastname' + j;
	  		if(j < 5){
	  			newContact.AccountId = lstNewAccounts[0].Id;
	  		} else if(j == 5 || (j > 5 && j < 10)){
	  			newContact.AccountId = lstNewAccounts[1].Id;
	  		} else {
	  			newContact.AccountId = lstNewAccounts[2].Id;
	  		}
	  		
	  		lstNewContacts.add(newContact);
	  	}
	  	
	  	insert lstNewContacts;
	  	
	  	list<Id> lstAccountIds = new list<Id>();
	  	for(Account a: lstNewAccounts){
	  		lstAccountIds.add(a.Id);
	  	}
	  	
	  	test.startTest();
			AccountProcessor.countContacts(lstAccountIds);
	    test.stopTest();  	
	    
	    for(Account a : [SELECT Number_of_Contacts__c FROM Account]){
	    	system.assertEquals(a.Number_of_Contacts__c,5);
	    }
	  }
}