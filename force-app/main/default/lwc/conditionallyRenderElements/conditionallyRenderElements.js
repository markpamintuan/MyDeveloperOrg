import { LightningElement } from 'lwc';

export default class ConditionallyRenderElements extends LightningElement {
    myValue="Salesforce Bolt";
    showMe = false;
    handleChange(event){
        this.showMe = event.target.checked;
    }    
}