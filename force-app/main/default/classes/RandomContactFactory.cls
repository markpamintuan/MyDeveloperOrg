public class RandomContactFactory {

    public static list<Contact> generateRandomContacts(integer contactCount, string strLastName){
        list<Contact> lstContacts = new list<Contact>();
        for(integer i = 0; i < contactCount; i++){
            Contact thisContact = new Contact(LastName = strLastName, FirstName = 'Test ' + i);
            lstContacts.add(thisContact);
        }
        return lstContacts;
    }
}