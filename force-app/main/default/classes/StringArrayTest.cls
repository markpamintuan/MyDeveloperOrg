public class StringArrayTest {
    
    public static list<String> generateStringArray(integer listSize) {
        list<String> lstStr = new list<String>();
        
        for(integer i = 0; i < listSize; i++){
        	String str = 'Test ' + i;
        	lstStr.add(str);
        }
        
        return lstStr;
    }

}