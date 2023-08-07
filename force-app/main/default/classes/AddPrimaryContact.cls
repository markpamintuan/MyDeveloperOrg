public class AddPrimaryContact implements Queueable {
	
	private Contact contObj;
	private String stateAbb;
	 
    public AddPrimaryContact(Contact con, String state) {
        contObj = con;
        stateAbb = state;
    }
    
    public void execute(QueueableContext context) {
		list<Contact> lstNewContacts = new list<Contact>();
		for(Account a : [SELECT Id FROM Account WHERE BillingState =: stateAbb LIMIT 200]){
			Contact newCon = contObj.clone(false);
			newCon.AccountId = a.Id;
			lstNewContacts.add(newCon);
		}
		
		insert lstNewContacts;
    }
        
}