global class DailyLeadProcessor implements Schedulable {
    
   global void execute(SchedulableContext sc) {
		
		list<Lead> lstLeads = new list<Lead>();
		for(Lead l : [SELECT LeadSource FROM Lead WHERE LeadSource = '' LIMIT 200]){
			l.LeadSource = 'Dreamforce';
			lstLeads.add(l);
		}
		
		update lstLeads;
   }
      
}