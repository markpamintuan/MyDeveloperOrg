public class AccountProcessor {

    @future
    public static void countContacts(list<Id> accountIds) {
		list<Account> lstAccounts = [SELECT Id, Number_of_Contacts__c , (SELECT Id FROM Contacts) FROM Account WHERE Id IN: accountIds];
		for(Account a : lstAccounts){
			a.Number_of_Contacts__c = a.Contacts.size();
		}
		
		update lstAccounts;
		
    }

}