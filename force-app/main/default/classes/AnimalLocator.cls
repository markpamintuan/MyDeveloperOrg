public class AnimalLocator {

	public static String getAnimalNameById(integer i){
		
		string nameFromId;
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + i);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);

        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
			map<String,Object> animalObj = (Map<String, Object>) results.get('animal');
            nameFromId = string.valueOf(animalObj.get('name'));
        }
        
        return nameFromId;
               		
	}

}