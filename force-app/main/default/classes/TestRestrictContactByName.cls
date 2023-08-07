@isTest
private class TestRestrictContactByName {

    static testmethod void testContactTrigger(){
        Contact thisContact = new Contact(LastName = 'INVALIDNAME');
        test.startTest();
            try{
               insert thisContact; 
            } catch(exception e){
                
            }
        test.stopTest();
        
    }
    
}