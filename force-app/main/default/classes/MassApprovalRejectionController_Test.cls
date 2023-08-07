@isTest
private class MassApprovalRejectionController_Test {

	@testSetup
    static void setupData(){

        list<Account> lstNewAccounts = new list<Account>();
        for(integer i = 0; i < 10; i++){
            Account acc = new Account();
            acc.Name = 'Unmanaged' + i;
            lstNewAccounts.add(acc);
        }

        insert lstNewAccounts;

    }

    static testMethod void testGetSubmittedRecords() {

        for(Account a : [SELECT Id FROM Account]){
            Approval.ProcessSubmitRequest app = new Approval.ProcessSubmitRequest();
            app.setObjectId(a.Id);
            app.setNextApproverIds(new Id[] {UserInfo.getUserId()});
            Approval.ProcessResult result = Approval.process(app);
        }

        list<MassApprovalRejectionController.SubmittedRecordsWrapper> lstWrapper = new list<MassApprovalRejectionController.SubmittedRecordsWrapper>();
        
        Test.startTest();

        lstWrapper = MassApprovalRejectionController.getSubmittedRecords();

        Test.stopTest();

        //verify that there are items to approve
        system.assertNotEquals(lstWrapper.size(),0);

    }

    static testMethod void testProcessRecords() {

        for(Account a : [SELECT Id FROM Account]){
            Approval.ProcessSubmitRequest app = new Approval.ProcessSubmitRequest();
            app.setObjectId(a.Id);
            app.setNextApproverIds(new Id[] {UserInfo.getUserId()});
            Approval.ProcessResult result = Approval.process(app);
        }

        list<String> lstProcInstItemsIDs = new list<String>();
        for(ProcessInstanceWorkitem piwi : [SELECT Id, OriginalActorId FROM ProcessInstanceWorkitem]){
            lstProcInstItemsIDs.add(piwi.Id);
        }

        String message = '';
        
        Test.startTest();
        message = MassApprovalRejectionController.processRecords(lstProcInstItemsIDs,'Approve','Test');
        Test.stopTest();

        //verify that items were processed
        system.assertEquals(message,'The selected items are Approved.');

    }    

}