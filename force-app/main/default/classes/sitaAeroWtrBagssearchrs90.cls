//Generated by wsdl2apex

public class sitaAeroWtrBagssearchrs90 {
    public class WTR_BagsSearchRS_element {
        public wwwIataOrgIata200700.SuccessType Success;
        public wwwIataOrgIata200700.WarningsType Warnings;
        public sitaAeroWtrBagssearchrs90.BagRecords_element BagRecords;
        public wwwIataOrgIata200700.ErrorsType Errors;
        private String[] Success_type_info = new String[]{'Success','http://sita.aero/WTR_BagsSearchRS/9/0',null,'1','1','false'};
        private String[] Warnings_type_info = new String[]{'Warnings','http://sita.aero/WTR_BagsSearchRS/9/0',null,'0','1','false'};
        private String[] BagRecords_type_info = new String[]{'BagRecords','http://sita.aero/WTR_BagsSearchRS/9/0',null,'0','1','false'};
        private String[] Errors_type_info = new String[]{'Errors','http://sita.aero/WTR_BagsSearchRS/9/0',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://sita.aero/WTR_BagsSearchRS/9/0','true','false'};
        private String[] field_order_type_info = new String[]{'Success','Warnings','BagRecords','Errors'};
    }
    public class BagRecords_element {
        public sitaAeroWtrCommon90.BagRecordSummaryType[] BagRecord;
        private String[] BagRecord_type_info = new String[]{'BagRecord','http://sita.aero/WTR_BagsSearchRS/9/0',null,'1','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://sita.aero/WTR_BagsSearchRS/9/0','true','false'};
        private String[] field_order_type_info = new String[]{'BagRecord'};
    }
}