//Generated by wsdl2apex

public class wwwIataOrgIata200700 {
    public class RuleIndicator_element {
        public String RuleCode;
        private String[] RuleCode_att_info = new String[]{'RuleCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class PaymentDetail_element {
        public String PaymentType;
        private String[] PaymentType_att_info = new String[]{'PaymentType'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class MarketingAirline_element {
        public String ResBookDesigCode;
        private String[] ResBookDesigCode_att_info = new String[]{'ResBookDesigCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class BookingChannel_element {
        public wwwIataOrgIata200700.CompanyNameType CompanyName;
        private String[] CompanyName_type_info = new String[]{'CompanyName','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'CompanyName'};
    }
    public class ErrorsType {
        public wwwIataOrgIata200700.ErrorType[] Error;
        private String[] Error_type_info = new String[]{'Error','http://www.iata.org/IATA/2007/00',null,'1','99','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'Error'};
    }
    public class ET_FareInfo {
        public wwwIataOrgIata200700.Waiver_element[] Waiver;
        public wwwIataOrgIata200700.RuleIndicator_element[] RuleIndicator;
        public String NetReportingCode;
        public String StatisticalCode;
        public String TourCode;
        public String CountryCodeOfIssue;
        private String[] Waiver_type_info = new String[]{'Waiver','http://www.iata.org/IATA/2007/00',null,'0','5','false'};
        private String[] RuleIndicator_type_info = new String[]{'RuleIndicator','http://www.iata.org/IATA/2007/00',null,'0','5','false'};
        private String[] NetReportingCode_att_info = new String[]{'NetReportingCode'};
        private String[] StatisticalCode_att_info = new String[]{'StatisticalCode'};
        private String[] TourCode_att_info = new String[]{'TourCode'};
        private String[] CountryCodeOfIssue_att_info = new String[]{'CountryCodeOfIssue'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'Waiver','RuleIndicator'};
    }
    public class SourceType {
        public wwwIataOrgIata200700.RequestorID_element RequestorID;
        public wwwIataOrgIata200700.Position_element Position;
        public wwwIataOrgIata200700.BookingChannel_element BookingChannel;
        public String AgentSine;
        public String PseudoCityCode;
        public String ISOCountry;
        public String ISOCurrency;
        public String AgentDutyCode;
        public String AirlineVendorID;
        public String AirportCode;
        public String FirstDepartPoint;
        public String ERSP_UserID;
        public String TerminalID;
        private String[] RequestorID_type_info = new String[]{'RequestorID','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] Position_type_info = new String[]{'Position','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] BookingChannel_type_info = new String[]{'BookingChannel','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] AgentSine_att_info = new String[]{'AgentSine'};
        private String[] PseudoCityCode_att_info = new String[]{'PseudoCityCode'};
        private String[] ISOCountry_att_info = new String[]{'ISOCountry'};
        private String[] ISOCurrency_att_info = new String[]{'ISOCurrency'};
        private String[] AgentDutyCode_att_info = new String[]{'AgentDutyCode'};
        private String[] AirlineVendorID_att_info = new String[]{'AirlineVendorID'};
        private String[] AirportCode_att_info = new String[]{'AirportCode'};
        private String[] FirstDepartPoint_att_info = new String[]{'FirstDepartPoint'};
        private String[] ERSP_UserID_att_info = new String[]{'ERSP_UserID'};
        private String[] TerminalID_att_info = new String[]{'TerminalID'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'RequestorID','Position','BookingChannel'};
    }
    public class Voucher_element {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class StateProvType {
        public String StateCode;
        private String[] StateCode_att_info = new String[]{'StateCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class TicketDesignator_element {
        public String TicketDesignatorCode;
        public String TicketDesignatorQualifier;
        private String[] TicketDesignatorCode_att_info = new String[]{'TicketDesignatorCode'};
        private String[] TicketDesignatorQualifier_att_info = new String[]{'TicketDesignatorQualifier'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class EquipmentType {
        public String AirEquipType;
        public Boolean ChangeofGauge;
        private String[] AirEquipType_att_info = new String[]{'AirEquipType'};
        private String[] ChangeofGauge_att_info = new String[]{'ChangeofGauge'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CouponSequence_element {
        public String SequenceNbr;
        public String CouponItinerarySeqNbr;
        public Boolean StopoverInd;
        public String ResBookDesigCode;
        private String[] SequenceNbr_att_info = new String[]{'SequenceNbr'};
        private String[] CouponItinerarySeqNbr_att_info = new String[]{'CouponItinerarySeqNbr'};
        private String[] StopoverInd_att_info = new String[]{'StopoverInd'};
        private String[] ResBookDesigCode_att_info = new String[]{'ResBookDesigCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class Position_element {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class Other_element {
        public String Text;
        private String[] Text_att_info = new String[]{'Text'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class PaymentAmount_element {
        public String ApprovalCode;
        private String[] ApprovalCode_att_info = new String[]{'ApprovalCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class Address_element {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class Taxes_element {
        public wwwIataOrgIata200700.Tax_element[] Tax;
        private String[] Tax_type_info = new String[]{'Tax','http://www.iata.org/IATA/2007/00',null,'0','99','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'Tax'};
    }
    public class CompanyName_element {
        public String ContactName;
        private String[] ContactName_att_info = new String[]{'ContactName'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class FeeAmount_element {
        public String Type_x;
        public String Amount;
        public String ApplicationCode;
        private String[] Type_x_att_info = new String[]{'Type'};
        private String[] Amount_att_info = new String[]{'Amount'};
        private String[] ApplicationCode_att_info = new String[]{'ApplicationCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CouponInfoType {
        public wwwIataOrgIata200700.SoldAirlineInfo_element SoldAirlineInfo;
        public String Number_x;
        public String InConnectionNbr;
        public String CouponReference;
        public String FareBasisCode;
        private String[] SoldAirlineInfo_type_info = new String[]{'SoldAirlineInfo','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] Number_x_att_info = new String[]{'Number'};
        private String[] InConnectionNbr_att_info = new String[]{'InConnectionNbr'};
        private String[] CouponReference_att_info = new String[]{'CouponReference'};
        private String[] FareBasisCode_att_info = new String[]{'FareBasisCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'SoldAirlineInfo'};
    }
    public class RequestorID_element {
        public String MessagePassword;
        private String[] MessagePassword_att_info = new String[]{'MessagePassword'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class BankAcctType {
        public String BankAcctName;
        public String BankID;
        public String AcctType;
        public String BankAcctNumber;
        public Boolean ChecksAcceptedInd;
        private String[] BankAcctName_type_info = new String[]{'BankAcctName','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] BankID_att_info = new String[]{'BankID'};
        private String[] AcctType_att_info = new String[]{'AcctType'};
        private String[] BankAcctNumber_att_info = new String[]{'BankAcctNumber'};
        private String[] ChecksAcceptedInd_att_info = new String[]{'ChecksAcceptedInd'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'BankAcctName'};
    }
    public class CarrierFee_element {
        public wwwIataOrgIata200700.FeeAmount_element[] FeeAmount;
        public String Type_x;
        public String FareClassCode;
        public String ReportingCode;
        private String[] FeeAmount_type_info = new String[]{'FeeAmount','http://www.iata.org/IATA/2007/00',null,'1','9','false'};
        private String[] Type_x_att_info = new String[]{'Type'};
        private String[] FareClassCode_att_info = new String[]{'FareClassCode'};
        private String[] ReportingCode_att_info = new String[]{'ReportingCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'FeeAmount'};
    }
    public class Tax_element {
        public String ApplicationCode;
        private String[] ApplicationCode_att_info = new String[]{'ApplicationCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class TotalConstructionAmount_element {
        public String Purpose;
        private String[] Purpose_att_info = new String[]{'Purpose'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class DepartureAirport_element {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CustomerFileRef_element {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class FlightSegmentType_IATA {
        public wwwIataOrgIata200700.MarketingAirline_element MarketingAirline;
        public String FlightNumber;
        public String TourOperatorFlightID;
        public String OperationalSuffix;
        private String[] MarketingAirline_type_info = new String[]{'MarketingAirline','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] FlightNumber_att_info = new String[]{'FlightNumber'};
        private String[] TourOperatorFlightID_att_info = new String[]{'TourOperatorFlightID'};
        private String[] OperationalSuffix_att_info = new String[]{'OperationalSuffix'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'MarketingAirline'};
    }
    public class LoyaltyRedemption_element {
        public Integer RedemptionQuantity;
        private String[] RedemptionQuantity_att_info = new String[]{'RedemptionQuantity'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CarrierFeeInfoType {
        public wwwIataOrgIata200700.PaymentDetail_element PaymentDetail;
        public wwwIataOrgIata200700.CarrierFee_element[] CarrierFee;
        public wwwIataOrgIata200700.Taxes_element Taxes;
        private String[] PaymentDetail_type_info = new String[]{'PaymentDetail','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] CarrierFee_type_info = new String[]{'CarrierFee','http://www.iata.org/IATA/2007/00',null,'0','9','false'};
        private String[] Taxes_type_info = new String[]{'Taxes','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'PaymentDetail','CarrierFee','Taxes'};
    }
    public class OperatingAirline_element {
        public String OperationalSuffix;
        private String[] OperationalSuffix_att_info = new String[]{'OperationalSuffix'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class PaymentCardType_IATA {
        public String CardHolderName;
        public wwwIataOrgIata200700.CardIssuerName_element CardIssuerName;
        public wwwIataOrgIata200700.Address_element Address;
        public wwwIataOrgIata200700.CustomerFileRef_element CustomerFileRef;
        public String CardType;
        public String CardCode;
        public String CardNumber;
        public String SeriesCode;
        public String MaskedCardNumber;
        public String CardHolderRPH;
        public String AddressValidation;
        public String ApprovalCode;
        public String CorporateContractCode;
        public String Text;
        public String ExtendedPaymentCode;
        public String ApprovalType;
        private String[] CardHolderName_type_info = new String[]{'CardHolderName','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] CardIssuerName_type_info = new String[]{'CardIssuerName','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] Address_type_info = new String[]{'Address','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] CustomerFileRef_type_info = new String[]{'CustomerFileRef','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] CardType_att_info = new String[]{'CardType'};
        private String[] CardCode_att_info = new String[]{'CardCode'};
        private String[] CardNumber_att_info = new String[]{'CardNumber'};
        private String[] SeriesCode_att_info = new String[]{'SeriesCode'};
        private String[] MaskedCardNumber_att_info = new String[]{'MaskedCardNumber'};
        private String[] CardHolderRPH_att_info = new String[]{'CardHolderRPH'};
        private String[] AddressValidation_att_info = new String[]{'AddressValidation'};
        private String[] ApprovalCode_att_info = new String[]{'ApprovalCode'};
        private String[] CorporateContractCode_att_info = new String[]{'CorporateContractCode'};
        private String[] Text_att_info = new String[]{'Text'};
        private String[] ExtendedPaymentCode_att_info = new String[]{'ExtendedPaymentCode'};
        private String[] ApprovalType_att_info = new String[]{'ApprovalType'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'CardHolderName','CardIssuerName','Address','CustomerFileRef'};
    }
    public class MiscChargeOrder_element {
        public String TicketNumber;
        private String[] TicketNumber_att_info = new String[]{'TicketNumber'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class PaymentFormType_IATA {
        public wwwIataOrgIata200700.PaymentCardType_IATA PaymentCard;
        public wwwIataOrgIata200700.BankAcctType BankAcct;
        public wwwIataOrgIata200700.DirectBillType DirectBill;
        public wwwIataOrgIata200700.Voucher_element Voucher;
        public wwwIataOrgIata200700.LoyaltyRedemption_element LoyaltyRedemption;
        public wwwIataOrgIata200700.MiscChargeOrder_element MiscChargeOrder;
        public wwwIataOrgIata200700.Cash_element Cash;
        public wwwIataOrgIata200700.Other_element Other;
        public String CostCenterID;
        public String RPH;
        public String PaymentTransactionTypeCode;
        private String[] PaymentCard_type_info = new String[]{'PaymentCard','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] BankAcct_type_info = new String[]{'BankAcct','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] DirectBill_type_info = new String[]{'DirectBill','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] Voucher_type_info = new String[]{'Voucher','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] LoyaltyRedemption_type_info = new String[]{'LoyaltyRedemption','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] MiscChargeOrder_type_info = new String[]{'MiscChargeOrder','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] Cash_type_info = new String[]{'Cash','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] Other_type_info = new String[]{'Other','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] CostCenterID_att_info = new String[]{'CostCenterID'};
        private String[] RPH_att_info = new String[]{'RPH'};
        private String[] PaymentTransactionTypeCode_att_info = new String[]{'PaymentTransactionTypeCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'PaymentCard','BankAcct','DirectBill','Voucher','LoyaltyRedemption','MiscChargeOrder','Cash','Other'};
    }
    public class DirectBillType {
        public wwwIataOrgIata200700.CompanyName_element CompanyName;
        public wwwIataOrgIata200700.AddressInfoType Address;
        public String DirectBill_ID;
        private String[] CompanyName_type_info = new String[]{'CompanyName','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] Address_type_info = new String[]{'Address','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] DirectBill_ID_att_info = new String[]{'DirectBill_ID'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'CompanyName','Address'};
    }
    public class ArrivalAirport_element {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class PaymentDetailType_IATA {
        public wwwIataOrgIata200700.PaymentAmount_element PaymentAmount;
        private String[] PaymentAmount_type_info = new String[]{'PaymentAmount','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'PaymentAmount'};
    }
    public class ErrorType {
        public String Type_x;
        public String NodeList;
        private String[] Type_x_att_info = new String[]{'Type'};
        private String[] NodeList_att_info = new String[]{'NodeList'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CompanyNameType {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class FareComponentDetail_element {
        public wwwIataOrgIata200700.CouponSequence_element[] CouponSequence;
        public wwwIataOrgIata200700.ConstructionPrinciple_element[] ConstructionPrinciple;
        public wwwIataOrgIata200700.BaseAmount_element[] BaseAmount;
        public wwwIataOrgIata200700.TicketDesignator_element[] TicketDesignator;
        public String Number_x;
        public String TariffNumber;
        public String RuleNumber;
        public String WaiverCode;
        public String PassengerTypeCode;
        public String RuleCode;
        public String FareBasisCode;
        public String AgreementCode;
        private String[] CouponSequence_type_info = new String[]{'CouponSequence','http://www.iata.org/IATA/2007/00',null,'1','99','false'};
        private String[] ConstructionPrinciple_type_info = new String[]{'ConstructionPrinciple','http://www.iata.org/IATA/2007/00',null,'0','99','false'};
        private String[] BaseAmount_type_info = new String[]{'BaseAmount','http://www.iata.org/IATA/2007/00',null,'1','3','false'};
        private String[] TicketDesignator_type_info = new String[]{'TicketDesignator','http://www.iata.org/IATA/2007/00',null,'0','9','false'};
        private String[] Number_x_att_info = new String[]{'Number'};
        private String[] TariffNumber_att_info = new String[]{'TariffNumber'};
        private String[] RuleNumber_att_info = new String[]{'RuleNumber'};
        private String[] WaiverCode_att_info = new String[]{'WaiverCode'};
        private String[] PassengerTypeCode_att_info = new String[]{'PassengerTypeCode'};
        private String[] RuleCode_att_info = new String[]{'RuleCode'};
        private String[] FareBasisCode_att_info = new String[]{'FareBasisCode'};
        private String[] AgreementCode_att_info = new String[]{'AgreementCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'CouponSequence','ConstructionPrinciple','BaseAmount','TicketDesignator'};
    }
    public class CardIssuerName_element {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class SoldAirlineInfo_element {
        public String Status;
        public Boolean StopoverInd;
        public String DepartureTerminal;
        public String ArrivalTerminal;
        public String SeatNumber;
        private String[] Status_att_info = new String[]{'Status'};
        private String[] StopoverInd_att_info = new String[]{'StopoverInd'};
        private String[] DepartureTerminal_att_info = new String[]{'DepartureTerminal'};
        private String[] ArrivalTerminal_att_info = new String[]{'ArrivalTerminal'};
        private String[] SeatNumber_att_info = new String[]{'SeatNumber'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class ConstructionPrinciple_element {
        public String Code;
        public String Amount;
        public String Percent;
        private String[] Code_att_info = new String[]{'Code'};
        private String[] Amount_att_info = new String[]{'Amount'};
        private String[] Percent_att_info = new String[]{'Percent'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class BaseAmount_element {
        public String Purpose;
        private String[] Purpose_att_info = new String[]{'Purpose'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class PersonNameType {
        public String[] NamePrefix;
        public String[] GivenName;
        public String[] MiddleName;
        public String SurnamePrefix;
        public String Surname;
        public String[] NameSuffix;
        public String[] NameTitle;
        public String NameType;
        private String[] NamePrefix_type_info = new String[]{'NamePrefix','http://www.iata.org/IATA/2007/00',null,'0','3','false'};
        private String[] GivenName_type_info = new String[]{'GivenName','http://www.iata.org/IATA/2007/00',null,'0','5','false'};
        private String[] MiddleName_type_info = new String[]{'MiddleName','http://www.iata.org/IATA/2007/00',null,'0','3','false'};
        private String[] SurnamePrefix_type_info = new String[]{'SurnamePrefix','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] Surname_type_info = new String[]{'Surname','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] NameSuffix_type_info = new String[]{'NameSuffix','http://www.iata.org/IATA/2007/00',null,'0','3','false'};
        private String[] NameTitle_type_info = new String[]{'NameTitle','http://www.iata.org/IATA/2007/00',null,'0','5','false'};
        private String[] NameType_att_info = new String[]{'NameType'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'NamePrefix','GivenName','MiddleName','SurnamePrefix','Surname','NameSuffix','NameTitle'};
    }
    public class FareTransactionType {
        public wwwIataOrgIata200700.Fare_element[] Fare;
        public String ReissueSeqNbr;
        public String ConversionRate;
        private String[] Fare_type_info = new String[]{'Fare','http://www.iata.org/IATA/2007/00',null,'1','2','false'};
        private String[] ReissueSeqNbr_att_info = new String[]{'ReissueSeqNbr'};
        private String[] ConversionRate_att_info = new String[]{'ConversionRate'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'Fare'};
    }
    public class FlightSegmentBaseType_IATA {
        public wwwIataOrgIata200700.DepartureAirport_element DepartureAirport;
        public wwwIataOrgIata200700.ArrivalAirport_element ArrivalAirport;
        public wwwIataOrgIata200700.OperatingAirline_element OperatingAirline;
        public wwwIataOrgIata200700.EquipmentType[] Equipment;
        public DateTime DepartureDateTime;
        public DateTime ArrivalDateTime;
        public Integer StopQuantity;
        public String RPH;
        public String InfoSource;
        private String[] DepartureAirport_type_info = new String[]{'DepartureAirport','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] ArrivalAirport_type_info = new String[]{'ArrivalAirport','http://www.iata.org/IATA/2007/00',null,'1','1','false'};
        private String[] OperatingAirline_type_info = new String[]{'OperatingAirline','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] Equipment_type_info = new String[]{'Equipment','http://www.iata.org/IATA/2007/00',null,'0','2','false'};
        private String[] DepartureDateTime_att_info = new String[]{'DepartureDateTime'};
        private String[] ArrivalDateTime_att_info = new String[]{'ArrivalDateTime'};
        private String[] StopQuantity_att_info = new String[]{'StopQuantity'};
        private String[] RPH_att_info = new String[]{'RPH'};
        private String[] InfoSource_att_info = new String[]{'InfoSource'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'DepartureAirport','ArrivalAirport','OperatingAirline','Equipment'};
    }
    public class OperatingAirlineType_IATA {
        public String FlightNumber;
        public String ResBookDesigCode;
        private String[] FlightNumber_att_info = new String[]{'FlightNumber'};
        private String[] ResBookDesigCode_att_info = new String[]{'ResBookDesigCode'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class WarningType {
        public String Type_x;
        private String[] Type_x_att_info = new String[]{'Type'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class FareComponentType {
        public wwwIataOrgIata200700.PriceableUnit_element[] PriceableUnit;
        public wwwIataOrgIata200700.TotalConstructionAmount_element[] TotalConstructionAmount;
        public String PriceQuoteDate;
        public String AccountCode;
        public String PricingDesignator;
        public Decimal ExchangeRate;
        private String[] PriceableUnit_type_info = new String[]{'PriceableUnit','http://www.iata.org/IATA/2007/00',null,'1','99','false'};
        private String[] TotalConstructionAmount_type_info = new String[]{'TotalConstructionAmount','http://www.iata.org/IATA/2007/00',null,'1','3','false'};
        private String[] PriceQuoteDate_att_info = new String[]{'PriceQuoteDate'};
        private String[] AccountCode_att_info = new String[]{'AccountCode'};
        private String[] PricingDesignator_att_info = new String[]{'PricingDesignator'};
        private String[] ExchangeRate_att_info = new String[]{'ExchangeRate'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'PriceableUnit','TotalConstructionAmount'};
    }
    public class Fare_element {
        public String Type_x;
        private String[] Type_x_att_info = new String[]{'Type'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class POS_Type {
        public wwwIataOrgIata200700.SourceType[] Source;
        private String[] Source_type_info = new String[]{'Source','http://www.iata.org/IATA/2007/00',null,'1','5','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'Source'};
    }
    public class SuccessType {
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class PriceableUnit_element {
        public wwwIataOrgIata200700.FareComponentDetail_element[] FareComponentDetail;
        public String Number_x;
        private String[] FareComponentDetail_type_info = new String[]{'FareComponentDetail','http://www.iata.org/IATA/2007/00',null,'1','99','false'};
        private String[] Number_x_att_info = new String[]{'Number'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'FareComponentDetail'};
    }
    public class CountryNameType {
        public String Code;
        private String[] Code_att_info = new String[]{'Code'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class AddressInfoType {
        public String UseType;
        public String RPH;
        private String[] UseType_att_info = new String[]{'UseType'};
        private String[] RPH_att_info = new String[]{'RPH'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class Waiver_element {
        public String Code;
        public String Type_x;
        private String[] Code_att_info = new String[]{'Code'};
        private String[] Type_x_att_info = new String[]{'Type'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class Cash_element {
        public Boolean CashIndicator;
        private String[] CashIndicator_att_info = new String[]{'CashIndicator'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class WarningsType {
        public wwwIataOrgIata200700.WarningType[] Warning;
        private String[] Warning_type_info = new String[]{'Warning','http://www.iata.org/IATA/2007/00',null,'1','99','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'Warning'};
    }
    public class StreetNmbr_element {
        public String StreetNmbrSuffix;
        public String StreetDirection;
        public String RuralRouteNmbr;
        private String[] StreetNmbrSuffix_att_info = new String[]{'StreetNmbrSuffix'};
        private String[] StreetDirection_att_info = new String[]{'StreetDirection'};
        private String[] RuralRouteNmbr_att_info = new String[]{'RuralRouteNmbr'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class AddressType {
        public wwwIataOrgIata200700.StreetNmbr_element StreetNmbr;
        public String BldgRoom;
        public String[] AddressLine;
        public String CityName;
        public String PostalCode;
        public String County;
        public wwwIataOrgIata200700.StateProvType StateProv;
        public wwwIataOrgIata200700.CountryNameType CountryName;
        public String Type_x;
        private String[] StreetNmbr_type_info = new String[]{'StreetNmbr','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] BldgRoom_type_info = new String[]{'BldgRoom','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] AddressLine_type_info = new String[]{'AddressLine','http://www.iata.org/IATA/2007/00',null,'0','5','false'};
        private String[] CityName_type_info = new String[]{'CityName','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] PostalCode_type_info = new String[]{'PostalCode','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] County_type_info = new String[]{'County','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] StateProv_type_info = new String[]{'StateProv','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] CountryName_type_info = new String[]{'CountryName','http://www.iata.org/IATA/2007/00',null,'0','1','false'};
        private String[] Type_x_att_info = new String[]{'Type'};
        private String[] apex_schema_type_info = new String[]{'http://www.iata.org/IATA/2007/00','true','false'};
        private String[] field_order_type_info = new String[]{'StreetNmbr','BldgRoom','AddressLine','CityName','PostalCode','County','StateProv','CountryName'};
    }
}