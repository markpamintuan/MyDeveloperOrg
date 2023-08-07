trigger CaseTrigger on Case (before insert) {

    for(Case c : trigger.New){
        c.AccountId = '0017F00000bV30h';
    }

}