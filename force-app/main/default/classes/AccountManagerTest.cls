@IsTest
private class AccountManagerTest {
    @isTest static void testGetAccount() {
        Id recordId = createTestRecord();
        system.debug('@!@!@!@!@!@recordID: ' + recordId);
        Contact relContact = new Contact(LastName = 'Test Last Name Con', AccountId = recordId);
        insert relContact;
        system.debug('@!@!@!@!@!@contact: ' + relContact);
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri = 'https://yourInstance.salesforce.com/services/apexrest/Accounts/' + recordId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Test Account record', thisAccount.Name);
    }
      
    // Helper method
    static Id createTestRecord() {
        // Create test record
        Account testAccount = new Account(Name ='Test Account record');
        insert testAccount;
        return testAccount.Id;
    }          
}