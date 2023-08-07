public class ContactAndLeadSearch {
    
    public static list<list<SObject>> searchContactsAndLeads(String param) {
        return [FIND :param IN ALL FIELDS RETURNING Contact(FirstName, LastName),Lead(FirstName,LastName)];
    }

}