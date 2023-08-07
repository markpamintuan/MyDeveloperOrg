/**
* @author: Mark Anthony Pamintuan
* @date: 1 Jun 2022
* @description: Controller for MassApprovalRejectionComponent
* @history:                
*/
public class MassApprovalRejectionController {

    //Method to fetch all the records which are submitted for approval
    @AuraEnabled
    public static List<SubmittedRecordsWrapper> getSubmittedRecords(){
        List<SubmittedRecordsWrapper> lstSubmissionWrapper = new List<SubmittedRecordsWrapper>();
        set<Id> relatedIDs = new set<Id>();
        map<String,String> mapAdditionalField = new map<String,String>();
		map<String,set<String>> objIdMap = new map<String,set<String>>();
		map<String,String> objectFieldMap = new map<String,String>();
		map<String,list<String>> mapObjField = new map<String,list<String>>();

        map<String,map<String,String>> objFieldDetailMap = new map<String,map<String,String>>();
		
		for(Object_Field_Mapping__mdt objField : [SELECT MasterLabel, Object__c, Fields__c FROM Object_Field_Mapping__mdt]){
			objectFieldMap.put(objField.Object__c, objField.Fields__c);
			mapObjField.put(objField.Object__c, objField.Fields__c.split(','));
		}

        for(String obj : objectFieldMap.keySet()){
            Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
            Schema.SObjectType leadSchema = schemaMap.get(obj);
            Map<String, Schema.SObjectField> fieldMap = leadSchema.getDescribe().fields.getMap();

            objFieldDetailMap.put(obj, new map<String,String>());

            for (String fieldName: fieldMap.keySet()) {
                objFieldDetailMap.get(obj).put(fieldName,fieldMap.get(fieldName).getDescribe().getLabel());
            }

            
        }
        system.debug('^^^^^^^^^^' + objFieldDetailMap);
        list<ProcessInstance> lstPI = [SELECT Id,
                                            TargetObjectId,
                                            TargetObject.Name,
                                            CreatedDate,
                                            (SELECT ID FROM WorkItems WHERE OriginalActorId = : UserInfo.getUserId()),
                                            (SELECT OriginalActor.Name, Comments FROM Steps WHERE StepStatus = 'Started')
                                        FROM ProcessInstance];

        for(ProcessInstance ps : lstPI){
            if(!ps.WorkItems.isEmpty()){
				objIdMap.put(getObjectName(ps.TargetObjectId, false),new set<String>());
            }
        }

        for(ProcessInstance procIns : lstPI){
            if(!procIns.WorkItems.isEmpty()){
				if(objIdMap.containsKey(getObjectName(procIns.TargetObjectId,false))){
					objIdMap.get(getObjectName(procIns.TargetObjectId,false)).add(string.valueOf(procIns.TargetObjectId));
				}
            }
        }

		for(String obj : objIdMap.keySet()){
            set<String> listIDs = objIdMap.get(obj);
            map<String,String> apiLabelMap = objFieldDetailMap.get(obj);
			if(objectFieldMap.containsKey(obj)){
				String selectedFields = objectFieldMap.get(obj);
				for(Sobject sObj : database.Query('SELECT Id, ' + selectedFields + ' FROM ' + obj + ' WHERE Id IN : listIDs')){
                    String fieldValue = '';
					if(mapObjField.containsKey(obj)){						
						for(String fieldName : mapObjField.get(obj)){
                            if(fieldName.contains('.')){
                                //custom lookup
                                if(fieldName.substringBefore('.').contains('__r')){
                                    if(sObj.get(fieldName.substringBefore('.').replace('__r','__c')) != null){
                                        fieldValue += apiLabelMap.get(fieldName.substringBefore('.').replace('__r','__c').toLowerCase()) + ': ' + sObj.getSObject(fieldName.substringBefore('.')).get(fieldName.substringAfter('.')) + ',\n';
                                    }
                                } else {
                                    //standard lookup
                                    if(sObj.get(fieldName.substringBefore('.') + 'Id') != null){
                                        String standardLookupField = fieldName.substringBefore('.') + 'Id';
                                        fieldValue += apiLabelMap.get(standardLookupField.toLowerCase()) + ': ' + sObj.getSObject(fieldName.substringBefore('.')).get(fieldName.substringAfter('.')) + ',\n';
                                    }                                    
                                }
                            } else {
                                
                                system.debug('%%%%%%%%%%%%%' + apiLabelMap);
                                fieldValue += apiLabelMap.get(fieldName.toLowerCase()) + ': ' + sObj.get(fieldName) + ',\n';
                            }	
						}	
					}
					mapAdditionalField.put(string.valueOf(sObj.get('Id')), fieldValue.substring(0,fieldValue.length() - 2));
                    
				}
			}
		}

        for(ProcessInstance ps : lstPI){
            if(!ps.WorkItems.isEmpty()){
                SubmittedRecordsWrapper objSubmittedRecordsWrapper = new SubmittedRecordsWrapper();
                objSubmittedRecordsWrapper.workItemId = ps.WorkItems[0].Id;
                objSubmittedRecordsWrapper.recordId = ps.TargetObjectId;
                objSubmittedRecordsWrapper.recordName = ps.TargetObject.Name;
                objSubmittedRecordsWrapper.relatedTo = getObjectName(ps.TargetObjectId, true);//get the object name using the record id
                objSubmittedRecordsWrapper.submittedDate = Date.newInstance(ps.CreatedDate.year(),ps.CreatedDate.month(),ps.CreatedDate.day());
                objSubmittedRecordsWrapper.comments = ps.steps[0].Comments;
                if(mapAdditionalField.containsKey(ps.TargetObjectId)){
                    objSubmittedRecordsWrapper.addedInfo = mapAdditionalField.get(ps.TargetObjectId);
                }
                if(!ps.steps.isEmpty()){
                    objSubmittedRecordsWrapper.submittedBy = ps.steps[0].OriginalActor.Name;
                	lstSubmissionWrapper.add(objSubmittedRecordsWrapper);
                }
            }
        }
        return lstSubmissionWrapper;
    }
    
    public static String getObjectName(String recordId, boolean isGetLabel){
        //To get the label of the object name using Schema methods
        String keyPrefix = recordId.subString(0,3);
        String objectName = '';
		Id recId = recordId;              
		Schema.sObjectType objApiName = recId.getSObjectType();        
        Map<String,Schema.SObjectType> sobjectTypeMap = Schema.getGlobalDescribe();
        for(String obj : sobjectTypeMap.keySet()){
            Schema.DescribeSObjectResult sobjectResult = sobjectTypeMap.get(obj).getDescribe();
            if(isGetLabel){
                if(sobjectResult.getName() == string.valueOf(objApiName)){
                    objectName = sobjectResult.getLabel();
                    break;
                }                
            } else {
                if(sobjectResult.getName() == string.valueOf(objApiName)){
                    objectName = sobjectResult.getName();
                    break;
                }                 
            }

        }
        return objectName;
    }
    
    //Method to Approve or Reject the selected records
    @AuraEnabled
    public static String processRecords(List<String> lstWorkItemIds,String processType, String approverComment){

        String message = '';
        Integer recordsProcessed = 0;
        String comments = approverComment;
        String approverAction = processType == 'Approve' ? 'Approved' : 'Rejected';
        List<Approval.ProcessWorkitemRequest> lstWorkItemRequest = new List<Approval.ProcessWorkitemRequest>();//ProcessWorkitemRequest class has methods to programmatically process submitted records
        for(String workItemId : lstWorkItemIds){
            Approval.ProcessWorkitemRequest objWorkItemRequest = new Approval.ProcessWorkitemRequest();
            objWorkItemRequest.setComments(comments);
            objWorkItemRequest.setAction(processType);//approve or reject
            objWorkItemRequest.setWorkitemId(workItemId);
            lstWorkItemRequest.add(objWorkItemRequest);
        }
        Approval.ProcessResult[] lstProcessResult = Approval.process(lstWorkItemRequest,FALSE);//process method is used for approving/rejecting records depending on setAction attribute
        for(Approval.ProcessResult processResult : lstProcessResult){
            if(processResult.isSuccess()){
                recordsProcessed++;
            }
            else{
                for(Database.Error error : processResult.getErrors()){
                    message += error.getMessage();
                }
            }
        }
        if(recordsProcessed == lstWorkItemIds.size()){
            message = 'The selected items are ' + approverAction + '.';
        }
        return message;

    }
    
    //Wrapper class to store the column values of data table
    public class SubmittedRecordsWrapper{
        @AuraEnabled public Id workItemId;
    	@AuraEnabled public String recordId;
        @AuraEnabled public String relatedTo;
        @AuraEnabled public String recordName;
        @AuraEnabled public String submittedBy;
        @AuraEnabled public Date submittedDate;
        @AuraEnabled public String comments;
        @AuraEnabled public String addedInfo;
    }

}