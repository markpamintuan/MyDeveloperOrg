public class UploadFileController {

    public String fileName {get; set;}
    public Blob fileBody {get; set;}
    public String fileContentType {get; set;}
    
    public Attachment attachment {
        get {
            if (attachment == null){
                attachment = new Attachment();
            }    
            return attachment;
        }
        
        set;   
    }

    public boolean displayPopup {get; set;}     
    
    public void closePopup() {
        system.debug('%!%!%!%!%!%!' + EncodingUtil.Base64Encode(fileBody));
        system.debug('%!%!%!%!%!%!' + fileName);
        system.debug('%!%!%!%!%!%!' + fileContentType);
        displayPopup = false;
           
    }     
    public void showPopup() {        
        displayPopup = true;    
    }  

}