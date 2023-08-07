@isTest
private class TestVerifyDate {

    static testmethod void testVerifyDate1(){
    	VerifyDate.CheckDates(system.today(),system.today() + 1);
    }

    static testmethod void testVerifyDate2(){
    	VerifyDate.CheckDates(system.today(),system.today() - 1);
    }

}