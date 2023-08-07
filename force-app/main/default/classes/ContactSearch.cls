public class ContactSearch {
    
    public static list<Contact> searchForContacts(String lastName, String mailingPostCode) {
		return [SELECT Id, Name FROM Contact WHERE LastName =: lastName AND MailingPostalCode =: mailingPostCode];
    }

}