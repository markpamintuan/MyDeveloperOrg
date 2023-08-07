public with sharing class SearchAirlineStationCX {
    
    public list<Airline_Station__c> lstAirlineStation {get; set;}
    public Airline_Station__c airlineStation {get; set;}
    public String airlineStationCode {get; set;}
    
    public SearchAirlineStationCX(ApexPages.StandardController stdController){
    	airlineStation = new Airline_Station__c();
    }
    
    public void searchFromCode(){
    	string queryString = 'SELECT Airline__c, Station__c, Airport_Runway_Closure__c, Flight_Arrival_Timings__c, Flight_Frequency__c, Time_Conversion__c FROM Airline_Station__c';
    	if(airlineStationCode.length() == 5){
    		string airline = airlineStationCode.substring(0,2);
    		string station = airlineStationCode.substring(2,5);		
    		queryString += ' WHERE Airline__c = \'' + airline + '\' AND Station__c = \'' + station + '\'';
    	} else if(airlineStationCode.length() == 2) {
    		queryString += ' WHERE Airline__c = \'' + airlineStationCode + '\''; 		
    	}

    	lstAirlineStation = database.Query(queryString);
  
    }
    
}