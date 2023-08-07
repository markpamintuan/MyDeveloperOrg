public class ParkLocator {

	public static list<String> country(String countryName){
		
		ParkService.ParksImplPort getParks = new ParkService.ParksImplPort();
		return getParks.byCountry(countryName);
		
	}

}