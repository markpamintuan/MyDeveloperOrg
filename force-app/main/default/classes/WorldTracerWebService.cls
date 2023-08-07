public class WorldTracerWebService {

    public static void performBagSearch(String airlineCode, String sType, String webServiceName){

		List<StaticResource> resourceList = [SELECT Id, Body FROM StaticResource WHERE Name = 'wtr_cert'];
    	
    	WTR_WebService_Settings__mdt webServiceSetting = [SELECT Endpoint__c, Certificate__c, Cert_Password__c FROM WTR_WebService_Settings__mdt WHERE MasterLabel =: webServiceName];

        list<wwwIataOrgIata200700.SourceType> lstSourceType = new list<wwwIataOrgIata200700.SourceType>();        
        wwwIataOrgIata200700.SourceType sourceType = new wwwIataOrgIata200700.SourceType();
        sourceType.AirlineVendorID = airlineCode;
        lstSourceType.add(sourceType);
        
        wwwIataOrgIata200700.POS_Type pos = new wwwIataOrgIata200700.POS_Type();
        pos.Source = lstSourceType;
        
        String bagType = 'DELAYED';
        String searchType = sType;       
        
        sitaAeroWtrCommon90.StationAirlineType stationAirlineType = new sitaAeroWtrCommon90.StationAirlineType();
        stationAirlineType.StationCode = 'AAA';
        stationAirlineType.AirlineCode = airlineCode;

		sitaAeroHal.Config_element config = new sitaAeroHal.Config_element();
		config.host = 'WTR';
		config.applicationId = 'DNATA BAG SEARCH';
        config.apiKey = EncodingUtil.base64Encode(resourceList[0].Body);
		
        sitaAeroHal.HalPort request = new sitaAeroHal.HalPort();
        request.endpoint_x = webServiceSetting.Endpoint__c;
        request.gheader = config;
        //request.clientCertName_x = '';
        request.clientCert_x = EncodingUtil.base64Encode(resourceList[0].Body);
        request.clientCertPasswd_x = webServiceSetting.Cert_Password__c;
        request.timeout_x = 120000;
		system.debug(request);
        system.debug(request.WTR_BagsSearchRQ(pos, bagType, searchType, stationAirlineType, '', null, null, null, null, null, '', '', '', null, null, null, '', '', '', '', null));
        sitaAeroWtrBagssearchrs90.WTR_BagsSearchRS_element response = request.WTR_BagsSearchRQ(pos, bagType, searchType, stationAirlineType, '', null, null, null, null, null, '', '', '', null, null, null, '', '', '', '', null);
        //system.debug(response);
        
        
    }

    public static void createMHBCases(sitaAeroWtrBagssearchrs90.WTR_BagsSearchRS_element response){
    	system.debug('@!@!response.Success: ' + response.Success);
    
        for(sitaAeroWtrCommon90.BagRecordSummaryType bag : response.BagRecords.BagRecord){
            Case mhbCase = new Case();
            mhbCase.RecordtypeId = Schema.SObjectType.Case.getRecordTypeInfosByName().get('MHB Baggage Services').getRecordTypeId();
            mhbCase.Reference_ID__c = bag.RecordIdentifier.RecordReference.StationCode + bag.RecordIdentifier.RecordReference.AirlineCode + bag.RecordIdentifier.RecordReference.ReferenceNumber + '(m'+system.today().Year()+')';
            if(bag.Status == 'Active'){
            	mhbCase.Status = 'Open';
            } else if(bag.Status == 'Suspended'){
            	mhbCase.Status = 'Suspended';
            } else if(bag.Status == 'Closed'){
            	mhbCase.Status = 'Closed';
            }
            mhbCase.Station__c = bag.RecordIdentifier.RecordReference.AirlineCode;
            mhbCase.Airline__c = bag.RecordIdentifier.RecordReference.StationCode;             
        }   
    
    }   

}