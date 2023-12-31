//Generated by wsdl2apex

public class amsComAuDynamoPartCpmSapCpmIXxx1 {
    public class Transactions_element {
        public amsComAuDynamoPartCpmSapCpmIXxx1.Transaction_element[] Transaction_x;
        private String[] Transaction_x_type_info = new String[]{'Transaction','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf','false','false'};
        private String[] field_order_type_info = new String[]{'Transaction_x'};
    }
    public class TransactionDetails_element {
        public DateTime TransactionDate;
        public String InitiatingTransactionID;
        public String TransactionID;
        public String Status;
        public String Comments;
        private String[] TransactionDate_type_info = new String[]{'TransactionDate','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] InitiatingTransactionID_type_info = new String[]{'InitiatingTransactionID','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] TransactionID_type_info = new String[]{'TransactionID','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] Status_type_info = new String[]{'Status','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] Comments_type_info = new String[]{'Comments','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf','false','false'};
        private String[] field_order_type_info = new String[]{'TransactionDate','InitiatingTransactionID','TransactionID','Status','Comments'};
    }
    public class MeteringRequestData {
        public amsComAuDynamoPartCpmSapCpmIXxx1.Header_element Header;
        public amsComAuDynamoPartCpmSapCpmIXxx1.Transactions_element Transactions;
        private String[] Header_type_info = new String[]{'Header','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] Transactions_type_info = new String[]{'Transactions','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf','false','false'};
        private String[] field_order_type_info = new String[]{'Header','Transactions'};
    }
    public class Transaction_element {
        public amsComAuDynamoPartCpmSapCpmIXxx1.TransactionHeader_element TransactionHeader;
        public amsComAuDynamoPartCpmSapCpmIXxx1.TransactionData_element TransactionData;
        private String[] TransactionHeader_type_info = new String[]{'TransactionHeader','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] TransactionData_type_info = new String[]{'TransactionData','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf','false','false'};
        private String[] field_order_type_info = new String[]{'TransactionHeader','TransactionData'};
    }
    public class Header_element {
        public String From_x;
        public String To;
        public DateTime MessageDate;
        public String MessageID;
        private String[] From_x_type_info = new String[]{'From','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] To_type_info = new String[]{'To','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] MessageDate_type_info = new String[]{'MessageDate','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] MessageID_type_info = new String[]{'MessageID','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf','false','false'};
        private String[] field_order_type_info = new String[]{'From_x','To','MessageDate','MessageID'};
    }
    public class TransactionData_element {
        public String JobType;
        public String AccountInBuilderName;
        public String AMPS;
        public String ChangeRequestNumber;
        public String Client;
        public String BuilderName;
        public String BuilderABN;
        public String ConnectionType;
        public String ContactFirstName;
        public String ContactLastName;
        public String ContactPhoneNumber;
        public String DP;
        public String Email;
        public String FloorNumber;
        public String FloorType;
        public String GrannyFlat;
        public String IsControlledLoadRequired;
        public String Lot;
        public String MeterInstallerEmailAddress;
        public String MeterInstallerName;
        public String MeterInstallerPhoneNumber;
        public String MeterProvider;
        public String MeterProviderServiceOrderReference;
        public String MultiOccupancyBuilding;
        public String NetworkDistributor;
        public String NMI;
        public String NMIFloorNumber;
        public String NMIFloorType;
        public String NMILot;
        public String NMIPostCode;
        public String NMIStreetName;
        public String NMIStreetNumber;
        public String NMIStreetType;
        public String NMISuburb;
        public String NMIUnit;
        public String Phase;
        public String PostCode;
        public String ReasonForSOIncompleteOrCancelled;
        public String Retailer;
        public String RetailerServiceOrderReference;
        public String Salutation;
        public String SolarPanels;
        public String Status;
        public String StreetName;
        public String StreetNumber;
        public String StreetType;
        public String Suburb;
        public String TBS;
        public String TechnicianID;
        public String Unit;
        public String CreatedBy;
        public String LastModifiedBy;
        public String Owner;
        public String RequestNumber;
        public String AdditionalComments;
        private String[] JobType_type_info = new String[]{'JobType','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] AccountInBuilderName_type_info = new String[]{'AccountInBuilderName','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] AMPS_type_info = new String[]{'AMPS','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] ChangeRequestNumber_type_info = new String[]{'ChangeRequestNumber','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Client_type_info = new String[]{'Client','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] BuilderName_type_info = new String[]{'BuilderName','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] BuilderABN_type_info = new String[]{'BuilderABN','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] ConnectionType_type_info = new String[]{'ConnectionType','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] ContactFirstName_type_info = new String[]{'ContactFirstName','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] ContactLastName_type_info = new String[]{'ContactLastName','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] ContactPhoneNumber_type_info = new String[]{'ContactPhoneNumber','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] DP_type_info = new String[]{'DP','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Email_type_info = new String[]{'Email','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] FloorNumber_type_info = new String[]{'FloorNumber','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] FloorType_type_info = new String[]{'FloorType','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] GrannyFlat_type_info = new String[]{'GrannyFlat','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] IsControlledLoadRequired_type_info = new String[]{'IsControlledLoadRequired','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] Lot_type_info = new String[]{'Lot','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] MeterInstallerEmailAddress_type_info = new String[]{'MeterInstallerEmailAddress','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] MeterInstallerName_type_info = new String[]{'MeterInstallerName','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] MeterInstallerPhoneNumber_type_info = new String[]{'MeterInstallerPhoneNumber','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] MeterProvider_type_info = new String[]{'MeterProvider','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] MeterProviderServiceOrderReference_type_info = new String[]{'MeterProviderServiceOrderReference','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] MultiOccupancyBuilding_type_info = new String[]{'MultiOccupancyBuilding','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] NetworkDistributor_type_info = new String[]{'NetworkDistributor','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] NMI_type_info = new String[]{'NMI','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMIFloorNumber_type_info = new String[]{'NMIFloorNumber','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMIFloorType_type_info = new String[]{'NMIFloorType','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMILot_type_info = new String[]{'NMILot','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMIPostCode_type_info = new String[]{'NMIPostCode','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMIStreetName_type_info = new String[]{'NMIStreetName','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMIStreetNumber_type_info = new String[]{'NMIStreetNumber','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMIStreetType_type_info = new String[]{'NMIStreetType','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMISuburb_type_info = new String[]{'NMISuburb','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] NMIUnit_type_info = new String[]{'NMIUnit','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Phase_type_info = new String[]{'Phase','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] PostCode_type_info = new String[]{'PostCode','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] ReasonForSOIncompleteOrCancelled_type_info = new String[]{'ReasonForSOIncompleteOrCancelled','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Retailer_type_info = new String[]{'Retailer','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] RetailerServiceOrderReference_type_info = new String[]{'RetailerServiceOrderReference','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Salutation_type_info = new String[]{'Salutation','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] SolarPanels_type_info = new String[]{'SolarPanels','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Status_type_info = new String[]{'Status','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] StreetName_type_info = new String[]{'StreetName','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] StreetNumber_type_info = new String[]{'StreetNumber','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] StreetType_type_info = new String[]{'StreetType','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Suburb_type_info = new String[]{'Suburb','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] TBS_type_info = new String[]{'TBS','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] TechnicianID_type_info = new String[]{'TechnicianID','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Unit_type_info = new String[]{'Unit','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] CreatedBy_type_info = new String[]{'CreatedBy','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] LastModifiedBy_type_info = new String[]{'LastModifiedBy','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] Owner_type_info = new String[]{'Owner','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] RequestNumber_type_info = new String[]{'RequestNumber','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] AdditionalComments_type_info = new String[]{'AdditionalComments','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf','false','false'};
        private String[] field_order_type_info = new String[]{'JobType','AccountInBuilderName','AMPS','ChangeRequestNumber','Client','BuilderName','BuilderABN','ConnectionType','ContactFirstName','ContactLastName','ContactPhoneNumber','DP','Email','FloorNumber','FloorType','GrannyFlat','IsControlledLoadRequired','Lot','MeterInstallerEmailAddress','MeterInstallerName','MeterInstallerPhoneNumber','MeterProvider','MeterProviderServiceOrderReference','MultiOccupancyBuilding','NetworkDistributor','NMI','NMIFloorNumber','NMIFloorType','NMILot','NMIPostCode','NMIStreetName','NMIStreetNumber','NMIStreetType','NMISuburb','NMIUnit','Phase','PostCode','ReasonForSOIncompleteOrCancelled','Retailer','RetailerServiceOrderReference','Salutation','SolarPanels','Status','StreetName','StreetNumber','StreetType','Suburb','TBS','TechnicianID','Unit','CreatedBy','LastModifiedBy','Owner','RequestNumber','AdditionalComments'};
    }
    public class TransactionHeader_element {
        public DateTime TransactionDate;
        public String TransactionID;
        public String RequestID;
        public String Action;
        private String[] TransactionDate_type_info = new String[]{'TransactionDate','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] TransactionID_type_info = new String[]{'TransactionID','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] RequestID_type_info = new String[]{'RequestID','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] Action_type_info = new String[]{'Action','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf','false','false'};
        private String[] field_order_type_info = new String[]{'TransactionDate','TransactionID','RequestID','Action'};
    }
    public class Confirmation {
        public amsComAuDynamoPartCpmSapCpmIXxx1.Header_element Header;
        public amsComAuDynamoPartCpmSapCpmIXxx1.Transactions_element Transactions;
        private String[] Header_type_info = new String[]{'Header','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'1','1','false'};
        private String[] Transactions_type_info = new String[]{'Transactions','urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf','false','false'};
        private String[] field_order_type_info = new String[]{'Header','Transactions'};
    }
    public class HTTPS_Port {
        public String endpoint_x = 'https://azmsdwi012.metering.agl.int:50101/XISOAPAdapter/MessageServlet?senderParty=&senderService=BC_SALESFORCE&receiverParty=&receiverService=&interface=SalesForceSAP&interfaceNamespace=urn%3Aams.com.au%3Adynamo%3Apart%3Acpm%3ASAP_CPM_I_XXX%3AMeteringRequestAndConf';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf', 'amsComAuDynamoPartCpmSapCpmIXxx1', 'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestStatusChangeAndConf', 'amsComAuDynamoPartCpmSapCpmIXxx2'};
        public amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation MeteringRequest(amsComAuDynamoPartCpmSapCpmIXxx1.Header_element Header,amsComAuDynamoPartCpmSapCpmIXxx1.Transactions_element Transactions) {
            amsComAuDynamoPartCpmSapCpmIXxx1.MeteringRequestData request_x = new amsComAuDynamoPartCpmSapCpmIXxx1.MeteringRequestData();
            request_x.Header = Header;
            request_x.Transactions = Transactions;
            amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation response_x;
            Map<String, amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation> response_map_x = new Map<String, amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://sap.com/xi/WebService/soap1.1',
              'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',
              'MeteringRequest',
              'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestAndConf',
              'MeteringRequestConfirmation',
              'amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation'}
            );
            response_x = response_map_x.get('response_x');
            return response_x;
        }
        public amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation MeteringRequestStatusChange(amsComAuDynamoPartCpmSapCpmIXxx2.Header_element Header,amsComAuDynamoPartCpmSapCpmIXxx2.Transactions_element Transactions) {
            amsComAuDynamoPartCpmSapCpmIXxx2.MeteringRequestStatusChangeData request_x = new amsComAuDynamoPartCpmSapCpmIXxx2.MeteringRequestStatusChangeData();
            request_x.Header = Header;
            request_x.Transactions = Transactions;
            amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation response_x;
            Map<String, amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation> response_map_x = new Map<String, amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://sap.com/xi/WebService/soap1.1',
              'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestStatusChangeAndConf',
              'MeteringRequestStatusChange',
              'urn:ams.com.au:dynamo:part:cpm:SAP_CPM_I_XXX:MeteringRequestStatusChangeAndConf',
              'MeteringRequestStatusChangeConfirmation',
              'amsComAuDynamoPartCpmSapCpmIXxx1.Confirmation'}
            );
            response_x = response_map_x.get('response_x');
            return response_x;
        }
    }
}