@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {

    @HttpGet
    global static Account getAccount() {
    	Account retAccount = new Account();
    	RestRequest request = RestContext.request;
		String accountId = request.requestURI.substring(request.requestURI.lastIndexOf('Accounts/') + 9, request.requestURI.length() - 9);
        retAccount = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id =: accountId];
        
        return retAccount;
        
    }

}