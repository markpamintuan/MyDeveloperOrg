@IsTest
private class LeadProcessorTest {

    static testMethod void testLeadProcessorBatch(){

		list<Lead> lstNewLeads = new list<Lead>();
		for(integer i = 0; i < 200; i++){
			Lead l = new Lead(LastName = 'Leadlast' + i, Company = 'Salesforce', LeadSource = 'Web');
			lstNewLeads.add(l);
		}
        
        insert lstNewLeads;
        
        test.startTest();
        
            LeadProcessor batCls = new LeadProcessor();
            Database.executeBatch(batCls);
                
        test.stopTest();
        
        for(Lead ld : [SELECT LeadSource FROM Lead]){
        	system.assertEquals(ld.LeadSource,'Dreamforce');
        }

    }      
}