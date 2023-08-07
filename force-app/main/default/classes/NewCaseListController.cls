public class NewCaseListController {

    public list<Case> getNewCases(){
        return [SELECT Id, CaseNumber FROM Case WHERE Status = 'New'];
    }
    
}