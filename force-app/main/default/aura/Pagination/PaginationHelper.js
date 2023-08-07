({
	startProcessing: function(component) {
		component.set('v.isShowSpinner',true);
	},
    
	stopProcessing: function(component) {
        setTimeout(function(){
            component.set('v.isShowSpinner',false);
        }, 400);
		
	}
})