public without sharing class GSACaseTriggerHandler {

    public static boolean preventRecursion = false;
    public static void mainEntry(List<GSA_Cases__c> newList, List<GSA_Cases__c> oldList, Map<Id, GSA_Cases__c> newMap,
                                Map<Id, GSA_Cases__c> oldMap, Boolean isInsert, Boolean isUpdate, Boolean isDelete, Boolean isUndelete,
                                 Boolean isBefore, Boolean isAfter) {
                                     if (preventRecursion) {return;}
                                     
                                     if (isBefore && isAfter) {
                                         //GSACasesHelperClass.setRealTime(newList);
                                     }
                                     
                                     else if (isBefore && isUpdate) {
                                         GSACasesHelperClass.setRealTime(newList);
                                     }
                                     
                                     else if (isBefore && isInsert) {
                                         GSACasesHelperClass.setRealTime(newList);
                                     }
                                 }
    
}