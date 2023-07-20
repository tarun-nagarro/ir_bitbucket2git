trigger dsmtUpdateEULADate on User (before update) {
    for(User u : Trigger.New){
        if(u.isActive == true && Trigger.oldmap.get(u.id).IsActive == false && u.UserType == 'Standard' && !System.isBatch() && !System.isScheduled()){
            u.EULA_Agreement_Date__c = null;
        }
    }
}