@isTest
public class BurtTestClass {
	static testMethod void positionTriggerTest() {
        Position__c p = new Position__c(Name='dude');
        insert p;
    }
}