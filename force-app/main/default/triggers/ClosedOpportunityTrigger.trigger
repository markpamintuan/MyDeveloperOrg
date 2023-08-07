trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

	list<Task> lstTasks = new list<Task>();
	for(Opportunity o : trigger.New){
		if(o.StageName == 'Closed Won'){
	        Task t = new Task();
	        t.Subject = 'Follow Up Test Task';
	        t.WhatId = o.Id;
	        t.ActivityDate = system.today();
	        t.Description = 'Test Description';
	        lstTasks.add(t);
		}
	}
	
	insert lstTasks;

}