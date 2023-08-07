global class LeadProcessor implements Database.Batchable<sObject>{
    
    //Start
    global Database.QueryLocator start(Database.BatchableContext BC){
        string queryString = 'SELECT LeadSource FROM Lead';
        return Database.getQueryLocator(queryString);
    }

    //Execute
    global void execute(Database.BatchableContext BC, List<sObject> scope){ 
        list<Lead> lstLeads = (list<Lead>)scope;
        
        for(Lead l : lstLeads){
        	l.LeadSource = 'Dreamforce';
        }
        update lstLeads;
    }

    global void finish(Database.BatchableContext BC){
        
    }
}