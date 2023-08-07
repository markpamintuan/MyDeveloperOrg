@IsTest
private class DailyLeadProcessorTest {

    static testMethod void testDailyLeadProcessorTest(){
	
		list<Lead> lstNewLeads = new list<Lead>();
		for(integer i = 0; i < 200; i++){
			Lead l = new Lead(LastName = 'Leadlastname' + i, Company = 'Salesforce', LeadSource = '');
			lstNewLeads.add(l);
		}
	    
	    insert lstNewLeads;
	    
	    test.startTest();
            Date dateTomorrow = system.today().addDays(1);
            DailyLeadProcessor scheduleBatch = new DailyLeadProcessor();      
            String sched = '0 0 0 ' + string.valueOf(dateTomorrow.day()) + ' ' + string.valueOf(dateTomorrow.month()) + ' ? ' + string.valueOf(dateTomorrow.year());
            String jobId = system.schedule('Scheduled Batch Job', sched, scheduleBatch);   	    
	    test.stopTest();
	    
	    system.assertEquals(200,[SELECT count() FROM Lead WHERE LeadSource = 'Dreamforce']);    
    }      
}