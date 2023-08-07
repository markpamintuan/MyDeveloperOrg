({
    //Method call on load of Lightning Component
    doInitHelper : function(component,event){
        //Initialize the columns for data table
        component.set('v.columns',[
            {
                label : 'Name',
                fieldName : 'recordId',
                type : 'url',
                typeAttributes : {label:{fieldName:'recordName'},target:'_blank', tooltip: { fieldName: 'recordName' }}
            },
            {
                label : 'Related To',
                fieldName : 'relatedTo',
                type : 'text',
                sortable : true
            },
            {
                label : 'Submitted By',
                fieldName : 'submittedBy',
                type : 'text',
                sortable : true
            },
            {
                label : 'Submitted Date',
                fieldName : 'submittedDate',
                type : 'date',
                typeAttributes : {year:"2-digit",month:"short",day:"2-digit"},
                sortable : true
            },
            {
                label : 'Comments',
                fieldName : 'comments',
                type : 'text',
                sortable : true
            },
            {
                label : 'Additional Information',
                fieldName : 'addedInfo',
                type : 'button',
                typeAttributes: {
                    label: { fieldName: 'addedInfo' },
                    title: { fieldName: 'addedInfo' },
                    variant: 'base',
                    class: 'text-button'
                },
                sortable : true
            }
        ]);
        this.getData(component,event);
    },
    
    //Method to fetch data
    getData : function(component,event){
        this.startProcessing(component);
        var toastRef = $A.get('e.force:showToast');
        var action = component.get('c.getSubmittedRecords');
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == 'SUCCESS'){
                var records = response.getReturnValue();
                records.forEach(function(record){
                   record.recordId = '/'+record.recordId;
                });
                this.stopProcessing(component);
                if(records.length == 0){
                    component.set('v.withItemsSubmitted',false);
                    /*
                    toastRef.setParams({
                        'type' : 'error',
                        'title' : 'Error',
                        'message' : 'No records found for approve/reject',
                        'mode' : 'sticky'
                    });
					toastRef.fire();
                    */
                }
                component.set('v.data',records);
                component.set("v.maxPage", Math.floor((records.length+9)/10));
                this.renderPage(component);                
            }
        });
        $A.enqueueAction(action);
    },
    
    //Method to handle sorting of records
    handleSortingOfRows : function(component,event,helper){ 
        this.startProcessing(component);               
        //Set field name and direction of sorting
        var sortedBy = event.getParam('fieldName');
        var sortedDirection = event.getParam('sortDirection');
        component.set('v.sortedBy',sortedBy);
        component.set('v.sortedDirection',sortedDirection);
        this.sortRecords(component,event,helper,sortedBy,sortedDirection); 
    },
    
    //Method to handle sorting of records
    sortRecords : function(component,event,helper,sortedBy,sortedDirection){ 
         
        var records = component.get('v.currentList');
        var direction = sortedDirection == 'asc' ? 1 : -1;
        var fieldValue = function(record){ return record[sortedBy]; }//returns the field value(field used for sorting) for each record
        records.sort(function(record1,record2){
            var fieldValue1 = fieldValue(record1);
            var fieldValue2 = fieldValue(record2);
            return direction * (fieldValue1 > fieldValue2) - (fieldValue2 > fieldValue1);//For asc,return value of -1 sorts the record,1 or 0 keeps the order intact.
        });
        component.set('v.currentList',records);

        this.stopProcessing(component);

    },
    
    //Method to enable or disable Approve and Reject button
    handleRowSelection : function(component,event,helper){
        //To enable or disable Approve, Reject button based on row selection
        var rowsSelected = event.getParam('selectedRows');
        if(rowsSelected.length > 0){
            component.find('approvalButtonId').set('v.disabled',false);
            component.find('rejectButtonId').set('v.disabled',false);
        }
        else{
            component.find('approvalButtonId').set('v.disabled',true);
            component.find('rejectButtonId').set('v.disabled',true);
        }
    },
    
    //Method to Approve or Reject the selected records
    processSelectedRecords : function(component,event,helper,processType){
        //To approve, reject selected records based on 'processType' variable
        
        var addedComments = component.get('v.approversComment');

        component.find('approvalButtonId').set('v.disabled',true);
        component.find('rejectButtonId').set('v.disabled',true);
        var selectedRows = component.find('approvalRecordsTableId').get('v.selectedRows');
        var action = component.get('c.processRecords');//Calling server side method with selected records
        action.setParams({
            lstWorkItemIds : selectedRows,
            processType : processType,
            approverComment : addedComments
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            var toastRef = $A.get('e.force:showToast');
            if(state == 'SUCCESS'){
                var message = response.getReturnValue();
                if(message.includes('Approved') || message.includes('Rejected')){
                    toastRef.setParams({
                        'type' : 'success',
                        'title' : 'Success',
                        'message' : message,
                        'mode' : 'dismissible'
                    });
                }
                else{
                   toastRef.setParams({
                        'type' : 'error',
                        'title' : 'Error',
                        'message' : message,
                        'mode' : 'sticky'
                    });
                }
                toastRef.fire();
                $A.get('e.force:refreshView').fire();
            }
        });
        $A.enqueueAction(action);
    },
    
	renderPage: function(component) {
        
		var records = component.get('v.data'),
            pageNumber = component.get('v.pageNumber'),
            pageRecords = records.slice((pageNumber-1)*10, pageNumber*10);
        component.set("v.currentList", pageRecords);
	},
    
	startProcessing: function(component) {
		component.set('v.isProcessing',true);
	},
    
	stopProcessing: function(component) {
        setTimeout(function(){
            component.set('v.isProcessing',false);
        }, 400);
		
	}
    
})