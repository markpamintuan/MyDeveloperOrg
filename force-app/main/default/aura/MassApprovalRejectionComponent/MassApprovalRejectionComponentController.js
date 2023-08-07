({
    //Method call on load of Lightning Component
    doInit : function(component,event,helper){
        helper.doInitHelper(component,event,helper);
    },
    
    //Method to handle sorting of records
    handleSortingOfRows : function(component,event,helper){

        helper.handleSortingOfRows(component,event,helper);

    },
    
    //Method to enable or disable Approve and Reject button
    handleRowSelection : function(component,event,helper){
        helper.handleRowSelection(component,event,helper);
    },
    
    //Method to Approve the selected records
    handleApproveAction : function(component,event,helper){
        helper.processSelectedRecords(component,event,helper,'Approve');
    },
    
    //Method to Reject the selected records
    handleRejectAction : function(component,event,helper){
        helper.processSelectedRecords(component,event,helper,'Reject');
    },

    showApproveModal: function(component, event, helper) {
        component.set('v.isShowModal', true);
        component.set('v.isApprove', true);
        component.set('v.isReject', false);
        component.set('v.actionType', 'Approve');
    },

    showRejectModal: function(component, event, helper) {
        component.set('v.isShowModal', true);
        component.set('v.isApprove', false);
        component.set('v.isReject', true);
        component.set('v.actionType', 'Reject');
    },

    hideModal: function(component, event, helper) {
        component.set("v.isShowModal", false);
        component.set('v.approversComment', '');
    },     
    
    renderPage: function(component, event, helper) {
        helper.renderPage(component);
    }

})