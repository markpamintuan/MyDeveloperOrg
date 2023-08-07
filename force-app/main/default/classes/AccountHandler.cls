public class AccountHandler {
    //test1
    public static Account insertNewAccount(String accountName) {
        Account newAccount = new Account(Name = accountName);
        try{
        	insert newAccount;
        	return newAccount;
        } catch(exception e){
        	return null;
        }
    }

}