({
    firstPage: function(component, event, helper) {
        helper.startProcessing(component);
        component.set("v.currentPageNumber", 1);
        helper.stopProcessing(component);
    },
    prevPage: function(component, event, helper) {
        helper.startProcessing(component);
        component.set("v.currentPageNumber", Math.max(component.get("v.currentPageNumber")-1, 1));
        helper.stopProcessing(component);
    },
    nextPage: function(component, event, helper) {
        helper.startProcessing(component);
        component.set("v.currentPageNumber", Math.min(component.get("v.currentPageNumber")+1, component.get("v.maxPageNumber")));
        helper.stopProcessing(component);
    },
    lastPage: function(component, event, helper) {
        helper.startProcessing(component);
        component.set("v.currentPageNumber", component.get("v.maxPageNumber"));
        helper.stopProcessing(component);
    }
})